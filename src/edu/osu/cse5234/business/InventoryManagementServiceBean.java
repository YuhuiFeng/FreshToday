package edu.osu.cse5234.business;

import edu.osu.cse5234.business.view.Inventory;

public class InventoryManagementServiceBean {
	
	public Inventory inventoryInstance = null;
	
	public InventoryManagementServiceBean(){
		this.inventoryInstance = Inventory.getInstance();
	}
	
	public Inventory getAvailableItems(){
		return inventoryInstance;
	}
}
