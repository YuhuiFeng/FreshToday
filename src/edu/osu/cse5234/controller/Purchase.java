package edu.osu.cse5234.controller;

import edu.osu.cse5234.business.OrderProcessingServiceBean;
import edu.osu.cse5234.business.view.Inventory;
import edu.osu.cse5234.business.view.InventoryService;
import edu.osu.cse5234.business.view.Item;
import edu.osu.cse5234.util.ServiceLocator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/purchase")
public class Purchase {
	
	private void inventoryToOrder(Order order, Inventory inventory){
		for(int i=0; i<inventory.size(); i++){
			Item inventoryItem = inventory.get(i);
			if(Integer.parseInt(inventoryItem.getQuantity())>0){
				Item orderItem = new Item(inventoryItem.getId(), inventoryItem.getName(), 
						inventoryItem.getDescription(), "0" , inventoryItem.getUnitPrice());
				order.add(orderItem);
			}
		}
	}
	
	private void filterOrder(Order order){
		int tmp =0;
		int total = order.size();
		for(int i=0; i<total; i++){
			if(Integer.parseInt(order.get(tmp).getQuantity())<=0)
				order.remove(tmp);
			else tmp ++;
		}
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String viewOrderEntryPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Order order = new Order();
		//InventoryManagementServiceBean inventoryManagementService = new InventoryManagementServiceBean();
		//Inventory inventory = inventoryManagementService.getAvailableItems();
		InventoryService is = ServiceLocator.getInventoryService();
		Inventory inventory = is.getAvailableInventory();
		inventoryToOrder(order, inventory);
		request.setAttribute("order", order);
		System.out.print("1");
		return "OrderEntryForm";
	}
	
	// Issue: the quantity of an item may exceed the inventory.
	
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) throws Exception {
		request.getSession().setAttribute("order", order);
		System.out.print("2");
		OrderProcessingServiceBean opsb = ServiceLocator.getOrderProcessingService();
		if (opsb.validateItemAvailability(order)) {
			filterOrder(order);
			return "redirect:/purchase/paymentEntry";
		} else {
			// alert user error message "resubmit item quantities"
			return "OrderEntryForm";
		}
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
	
//	private void updateInventory(Order order, Inventory inventory){
//		int start = 0;
//		for(int i =0; i<order.size(); i++){
//			Item orderItem = order.get(i);
//			for(int j =start; j< inventory.size(); j++){
//				Item inventoryItem = inventory.get(j);
//				if(orderItem.getName().equals(inventoryItem.getName())){
//					int tmpQuantity = Integer.parseInt(inventoryItem.getQuantity()) - Integer.parseInt(orderItem.getQuantity());
//					inventoryItem.setQuantity(Integer.toString(tmpQuantity));
//					System.out.println("Updated Invenytory item " + inventoryItem.getName() + " is " + inventoryItem.getQuantity());
//					start = j+1;
//					break;
//				}
//			}
//		}
//	}
	
	@RequestMapping(path = "/ConfirmOrder", method = RequestMethod.POST)
	public String viewConfirmOrderPage(HttpServletRequest request, HttpServletResponse response)throws Exception {
		System.out.print("8");
		HttpSession session = request.getSession();
		Order order = (Order) session.getAttribute("order");
		System.out.println("order size is "+ order.size());
//		updateInventory(order, Inventory.getInstance());
		OrderProcessingServiceBean opsb = ServiceLocator.getOrderProcessingService();
		String confirmCode = opsb.processOrder(order);
		request.setAttribute("confirmCode", confirmCode);
		return "Confirmation";
	}
}
