package edu.osu.cse5234.business;

import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;

import edu.osu.cse5234.business.view.InventoryService;
import edu.osu.cse5234.controller.Order;
import edu.osu.cse5234.util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@LocalBean
public class OrderProcessingServiceBean {
	
	private static final String ALPHANUM = "abcdefghijklmnopqrstuvwxyz0123456789";

    /**
     * Default constructor. 
     */
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    
    public boolean validateItemAvailability(Order order) {
    	InventoryService is = ServiceLocator.getInventoryService();
    	return is.validateQuantity(order.getItems());
    }
    
    public String processOrder(Order order) {
    	InventoryService is = ServiceLocator.getInventoryService();
    	if (!is.validateQuantity(order.getItems())) {
    		return "FAILED"; // check order quantity
    	}
    	StringBuilder sb = new StringBuilder();
    	for (int i = 0; i < 6; i++) {
    		int code = (int) Math.random() * 36;
    		sb.append(ALPHANUM.charAt(code));
    	}
    	is.updateInventory(order.getItems());
    	return sb.toString();
    }

}
