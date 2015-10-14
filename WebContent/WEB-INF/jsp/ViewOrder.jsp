<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Order Page</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>
<body class="body">
<form:form method="post" action="ConfirmOrder">
	<%@ page import="java.util.List" %>
	<%@ page import="edu.osu.cse5234.controller.Item" %>
	<%@ page import="edu.osu.cse5234.controller.Order" %>
	<%@ page import="edu.osu.cse5234.controller.PaymentInfo" %>
	<%@ page import="edu.osu.cse5234.controller.ShippingInfo" %>
	
	<font color="green" size="5">
	Order: 
   	</font><br />
   	<table>
   		<tr>
   			<th>Fruit</th>
   			<th>Quantity</th>
		</tr>
		<% 
		Order order = (Order) session.getAttribute("order");
		List<Item> list = order.getOrder();
		for(int i=0; i<list.size(); i++){ 
	 	%>
		<tr>
			<td><%= list.get(i).getName() %></td>
			<td><%= list.get(i).getQuantity() %></td>
		</tr>
		<%} %>
	</table><br />
	
	<font color="green" size="5">
   	Payment Information:
   	</font><br /> 
   	<% PaymentInfo payment = (PaymentInfo) session.getAttribute("payment"); %>
   	<table>
   		<tr>
   			<td>Card Holder:</td>
   			<td><%= payment.getCardHolder() %></td>
   		</tr>
   		<tr>
   			<td>Credit Card Number:</td>
   			<td><%= payment.getCreditCardNum() %></td>
   		</tr>
   		<tr>
   			<td>Expiration Date:</td>
   			<td><%= payment.getExpireDate() %></td>
   		</tr>
   		<tr>
   			<td>cvv Code:</td>
   			<td><%= payment.getCvvCode() %></td>
   		</tr>
   	</table><br />

	<font color="green" size="5">
   	Shipping Information:
   	</font><br /> 
   	<% ShippingInfo shipping = (ShippingInfo) session.getAttribute("shipping"); %>
   	<table>
   		<tr>
   			<td>Name:</td>
   			<td><%= shipping.getName() %></td>
   		</tr>
   		<tr>
   			<td>Address Line 1:</td>
   			<td><%= shipping.getAddressLine1() %></td>
   		</tr>
   		<tr>
   			<td>Address Line 2:</td>
   			<td><%= shipping.getAddressLine2() %></td>
   		</tr>
   		<tr>
   			<td>City:</td>
   			<td><%= shipping.getCity() %></td>
   		</tr>
   		<tr>
   			<td>State:</td>
   			<td><%= shipping.getState() %></td>
   		</tr>
   		<tr>
   			<td>Zip Code:</td>
   			<td><%= shipping.getZipCode() %></td>
   		</tr>
   	</table><br />
	
	<input type="submit" value="Confirmation" />
</form:form>
</body>
</html>


