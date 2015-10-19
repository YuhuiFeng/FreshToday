package edu.osu.cse5234.business;

import java.util.ArrayList;
import java.util.List;

public class Inventory {
	private List<Item> items;	
	private int size;
	
	private Inventory() {
		items = new ArrayList<>();
		size = 0;
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
		this.size = items.size();
	}

	public List<Item> getInventory() {
		return items;
	}

	public void setInventory(List<Item> items) {
		this.items = items;
	}
	
	public void add(Item item) {
		this.items.add(item);
		this.size++;
	}
	
	public Item get(int i){
		return items.get(i);
	}
	
	public int size(){
		return this.size;
	}
}
