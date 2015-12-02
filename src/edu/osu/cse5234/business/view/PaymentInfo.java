package edu.osu.cse5234.business.view;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="PAYMENT_INFO")
public class PaymentInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator="seq_payment_sequence")
	@SequenceGenerator(name="seq_payment_sequence", sequenceName="SEQ_PAYMENT_SEQUENCE", allocationSize=500)	
	@Column(name="ID")
	private int id;
	
	@Column(name="ORDER_ID")
	private int orderId;
	
	@Column(name="CREDIT_CARD_NUM")
	private String creditCardNum;
	
	@Column(name="EXPIRATION_DATE")
	private String expireDate;
	
	@Column(name="CVV_CODE")
	private String cvvCode;
	
	@Column(name="CARD_HOLDER")
	private String cardHolder;
	
	@Column (name="COMFIRMATION_NUMBER")
	private String confirmationNumber;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	public String getCreditCardNum() {
		return creditCardNum;
	}
	public void setCreditCardNum(String creditCardNum) {
		this.creditCardNum = creditCardNum;
	}
	
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	
	public String getCvvCode() {
		return cvvCode;
	}
	public void setCvvCode(String cvvCode) {
		this.cvvCode = cvvCode;
	}
	
	public String getCardHolder() {
		return cardHolder;
	}
	public void setCardHolder(String cardHolder) {
		this.cardHolder = cardHolder;
	}
	
	public String getConfirmationNumber() {
		return confirmationNumber;
	}
	public void setConfirmationNumber(String confirmationNumber) {
		this.confirmationNumber = confirmationNumber;
	}
}
