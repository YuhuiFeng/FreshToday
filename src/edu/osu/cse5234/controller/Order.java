package edu.osu.cse5234.controller;

import java.util.List;

import edu.osu.cse5234.business.view.Item;

import java.util.ArrayList;

public class Order {
	private List<Item> items;	
	
	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public Order() {
		items = new ArrayList<>();
	}

	public List<Item> getOrder() {
		return items;
	}

	public void setOrder(List<Item> order) {
		this.items = order;
	}
	
	public void add(Item item) {
		this.items.add(item);
	}
	
	public Item get(int i){
		return items.get(i);
	}
	
	public void remove(int i){
		items.remove(i);
	}
	
	public int size(){
		return items.size();
	}
}

