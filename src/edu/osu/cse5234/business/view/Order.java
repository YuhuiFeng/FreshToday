package edu.osu.cse5234.business.view;

import java.util.List;
import java.util.ArrayList;

import javax.persistence.*;

@Entity
@Table(name="CUSTOMER_ORDER")
public class Order {
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="ORDER_ID")
	private List<LineItem> items;
	
	@OneToOne(cascade = CascadeType.PERSIST, fetch=FetchType.LAZY)
	@JoinColumn(name="ORDER_ID", insertable=false, updatable=false)
	private ShippingInfo shippingInfo;
	
	@OneToOne(cascade = CascadeType.PERSIST, fetch=FetchType.LAZY)
	@JoinColumn(name="ORDER_ID", insertable=false, updatable=false)
	private PaymentInfo paymentInfo;

	@PrePersist
	public void prePresistCallBack() {
		if(shippingInfo!=null) {
			shippingInfo.setOrderId(this.id);
		}
		if(paymentInfo!=null) {
			paymentInfo.setOrderId(this.id);
		}
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator="seq_gen_sequence")
	@SequenceGenerator(name="seq_gen_sequence", sequenceName="SEQ_GEN_SEQUENCE", allocationSize=500)
	@Column(name="ORDER_ID")
	private int id;
	
	@Column(name="CUSTOMER_NAME")
	private String customerName;
	
	@Column(name="CUSTOMER_EMAIL")
	private String emailAddress;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}


	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	
	public List<LineItem> getItems() {
		return items;
	}

	public void setItems(List<LineItem> items) {
		this.items = items;
	}

	public Order() {
		items = new ArrayList<>();
		paymentInfo = new PaymentInfo();
		shippingInfo = new ShippingInfo();
	}

	public List<LineItem> getOrder() {
		return items;
	}

	public void setOrder(List<LineItem> order) {
		this.items = order;
	}
	
	public ShippingInfo getShippingInfo() {
		return shippingInfo;
	}

	public void setShippingInfo(ShippingInfo shippingInfo) {
//		this.shippingInfo = shippingInfo;
		this.shippingInfo.setAddressLine1(shippingInfo.getAddressLine1());
		this.shippingInfo.setAddressLine2(shippingInfo.getAddressLine2());
		this.shippingInfo.setCity(shippingInfo.getCity());
		this.shippingInfo.setName(shippingInfo.getName());
		this.shippingInfo.setState(shippingInfo.getState());
		this.shippingInfo.setZipCode(shippingInfo.getZipCode());
	}

	public PaymentInfo getPaymentInfo() {
		return paymentInfo;
	}

	public void setPaymentInfo(PaymentInfo paymentInfo) {
//		this.paymentInfo = paymentInfo;
		this.paymentInfo.setCardHolder(paymentInfo.getCardHolder());
		this.paymentInfo.setConfirmationNumber(paymentInfo.getConfirmationNumber());
		this.paymentInfo.setCreditCardNum(paymentInfo.getCreditCardNum());
		this.paymentInfo.setCvvCode(paymentInfo.getCvvCode());
		this.paymentInfo.setExpireDate(paymentInfo.getExpireDate());
	}
	
	public void add(LineItem item) {
		this.items.add(item);
	}
	
	public LineItem get(int i){
		return items.get(i);
	}
	
	public void remove(int i){
		items.remove(i);
	}
	
	public int size(){
		return items.size();
	}
}

