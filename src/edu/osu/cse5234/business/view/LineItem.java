package edu.osu.cse5234.business.view;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="CUSTOMER_ORDER_LINE_ITEM")
public class LineItem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator="seq_lineitem_sequence")
	@SequenceGenerator(name="seq_lineitem_sequence", sequenceName="SEQ_LINEITEM_SEQUENCE", allocationSize=500)
	@Column(name="ID")
	private int id;
	
	@Column(name="ITEM_ID")
	private int itemId;
	
	@Column(name="ITEM_NAME")
	private String itemName;
	
	@Column(name="QUANTITY")
	private String quantity;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
}
