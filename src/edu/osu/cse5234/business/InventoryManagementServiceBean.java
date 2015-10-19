package edu.osu.cse5234.business;

public class InventoryManagementServiceBean {
	
	public Inventory inventoryInstance = null;
	
	private static final String[] FRUITS = {"apple", "orange", "peach", "pear", "lemonade"};
	
	public InventoryManagementServiceBean(){
		this.inventoryInstance = Inventory.getInstance();
		for (int i = 0; i < FRUITS.length; i++) {
			inventoryInstance.add(new Item(FRUITS[i], "100"));
		}
	}
	
	public Inventory getAvailableItems(){
		return inventoryInstance;
	}
}
