package edu.osu.cse5234.business;


import java.util.Date;

import javax.annotation.Resource;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.jms.ConnectionFactory;
import javax.jms.JMSConnectionFactory;
import javax.jms.JMSContext;
import javax.jms.Queue;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.xml.ws.WebServiceRef;

import com.chase.payment.CreditCardPayment;
import com.chase.payment.PaymentProcessorService;

import edu.osu.cse5234.business.view.InventoryService;
import edu.osu.cse5234.business.view.LineItem;
import edu.osu.cse5234.business.view.Order;
import edu.osu.cse5234.util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@LocalBean
@Resource(name="jms/emailQCF", lookup="jms/emailQCF", type=ConnectionFactory.class)
public class OrderProcessingServiceBean {
	
	@Inject
	@JMSConnectionFactory("java:comp/env/jms/emailQCF")
	private JMSContext jmsContext;
	
	@Resource(lookup="jms/emailQ")
	private Queue queue;
	
	private void notifyUser(String customerEmail) {
		String message = customerEmail + ":" + "Your order was sucessfully submitted." + new Date();
		
		System.out.println("Sending message: " + message);
		jmsContext.createProducer().send(queue, message);
		System.out.println("Message Sent!");
	}
	
	@WebServiceRef(wsdlLocation = "http://localhost:9080/ChaseBankApplication/PaymentProcessorService?wsdl")
	private PaymentProcessorService service;
	
	private static final String ALPHANUM = "abcdefghijklmnopqrstuvwxyz0123456789";

    /**
     * Default constructor. 
     */
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext private EntityManager entityManager;
    
    public boolean validateItemAvailability(Order order) {
    	InventoryService is = ServiceLocator.getInventoryService();
    	boolean availability = true;
    	for(int i=0; i<order.size(); i++){
    		LineItem item = order.get(i);
    		if(!is.validateQuantity(item.getId(), Integer.parseInt(item.getQuantity()))){
    			availability = false;
    			break;
    		}
    	}
    	return availability;
    }
    
    public String processOrder(Order order) {
    	CreditCardPayment ccp = new CreditCardPayment();
    	ccp.setCardHolder(order.getPaymentInfo().getCardHolder());
    	ccp.setCreditCardNum(order.getPaymentInfo().getCreditCardNum());
    	ccp.setCvvCode(order.getPaymentInfo().getCvvCode());
    	ccp.setExpireDate(order.getPaymentInfo().getExpireDate());
    	ccp.setId(0);//order.getPaymentInfo().getId()); 
    	
    	String returnCode = service.getPaymentProcessorPort().processPayment(ccp);
    	order.getPaymentInfo().setConfirmationNumber(returnCode); 
    	if (Integer.parseInt(returnCode) < 0) return "FAILED";
    	
    	InventoryService is = ServiceLocator.getInventoryService();
    	boolean availability = true;
    	for(int i=0; i<order.size(); i++){
    		LineItem item = order.get(i);
    		if(!is.validateQuantity(item.getId(), Integer.parseInt(item.getQuantity()))){
    			availability = false;
    			break;
    		}
    	}
    	if (!availability) {
    		return "FAILED"; // check order quantity
    	}
    	
    	entityManager.persist(order);
    	entityManager.flush();
    	
    	StringBuilder sb = new StringBuilder();
    	for (int i = 0; i < 6; i++) {
    		int code = (int) Math.random() * 36;
    		sb.append(ALPHANUM.charAt(code));
    	}
    	
    	/************ Update Inventory ************/
    	is.updateInventory();
    	/************ notifyUser ***************/
    	notifyUser(order.getEmailAddress());
    	
    	return sb.toString();
    	
    }

}
