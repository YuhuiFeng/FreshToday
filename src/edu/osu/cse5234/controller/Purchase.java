package edu.osu.cse5234.controller;

import edu.osu.cse5234.business.InventoryManagementServiceBean;
import edu.osu.cse5234.business.Inventory;
import edu.osu.cse5234.business.Item;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/purchase")
public class Purchase {
	
	private void inventoryToOrder(Order order, Inventory inventory){
		for(int i=0; i<inventory.size(); i++){
			Item tmpItem = inventory.get(i);
			if(Integer.parseInt(tmpItem.getQuantity())>0){
				tmpItem.setQuantity("0");
				order.add(tmpItem);
			}
		}
	}
	
	private void filterOrder(Order order){
		System.out.println(order.getOrder().size());
		for(int i=0; i<order.getOrder().size(); i++){
			if(Integer.parseInt(order.get(i).getQuantity())<=0){
				System.out.println(order.get(i).getQuantity());
				order.remove(i);
			}
		}
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String viewOrderEntryPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Order order = new Order();
		InventoryManagementServiceBean inventoryManagementService = new InventoryManagementServiceBean();
		Inventory inventory = inventoryManagementService.getAvailableItems();
		inventoryToOrder(order, inventory);
		request.setAttribute("order", order);
		System.out.print("1");
		return "OrderEntryForm";
	}
	
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) throws Exception {
		filterOrder(order);
		System.out.println(order.getOrder().size());
		request.getSession().setAttribute("order", order);
		System.out.print("2");
		return "redirect:/purchase/paymentEntry";
	}
	
	@RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
	public String viewPaymentEntryPage(HttpServletRequest request, HttpServletResponse response)throws Exception {
		request.setAttribute("payment", new PaymentInfo());
		System.out.print("3");
		return "PaymentEntryForm";
	}
	
	
	@RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("payment") PaymentInfo paymentInfo, HttpServletRequest request) throws Exception {
		request.getSession().setAttribute("payment", paymentInfo);
		System.out.print("4");
		return "redirect:/purchase/shippingEntry";
	}
	
	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntryPage(HttpServletRequest request, HttpServletResponse response)throws Exception {
		request.setAttribute("shipping", new ShippingInfo());
		System.out.print("5");
		return "ShippingEntryForm";
	}
	
	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String submitShipping(@ModelAttribute("shipping") ShippingInfo shippingInfo, HttpServletRequest request) throws Exception {
		request.getSession().setAttribute("shipping", shippingInfo);
		System.out.print("6");
		return "redirect:/purchase/viewOrder";
	}
	
	@RequestMapping(path = "/viewOrder", method = RequestMethod.GET)
	public String viewOrderPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.print("7");
		return "ViewOrder";
	}
	
	@RequestMapping(path = "/ConfirmOrder", method = RequestMethod.POST)
	public String viewConfirmOrderPage(HttpServletRequest request, HttpServletResponse response)throws Exception {
		System.out.print("8");
		return "Confirmation";
	}
}
