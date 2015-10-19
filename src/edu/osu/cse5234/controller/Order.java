package edu.osu.cse5234.controller;

import edu.osu.cse5234.business.Item;

import java.util.List;
import java.util.ArrayList;

public class Order {
	private List<Item> items;	
	private int size;
	
	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public Order() {
		items = new ArrayList<>();
		this.size = 0;
	}

	public List<Item> getOrder() {
		return items;
	}

	public void setOrder(List<Item> order) {
		this.items = order;
		this.size = items.size();
	}
	
	public void add(Item item) {
		this.items.add(item);
		this.size++;
	}
	
	public Item get(int i){
		return items.get(i);
	}
	
	public void remove(int i){
		items.remove(i);
		this.size--;
	}
	
	public int size(){
		return this.size;
	}
}

