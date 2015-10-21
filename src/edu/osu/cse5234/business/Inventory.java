package edu.osu.cse5234.business;

import java.util.ArrayList;
import java.util.List;

public class Inventory {
	private List<Item> items;	
	
	private Inventory() {
		items = new ArrayList<Item>();
	}
	
	private static Inventory instance = new Inventory();
	
	public static Inventory getInstance(){
		return instance;
	}
	
	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public List<Item> getInventory() {
		return items;
	}

	public void setInventory(List<Item> items) {
		this.items = items;
	}
	
	public void add(Item item) {
		this.items.add(item);
	}
	
	public Item get(int i){
		return items.get(i);
	}
	
	public int size(){
		return items.size();
	}
}
