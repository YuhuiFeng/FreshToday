<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>View Order Page</title>
</head>
<style>
body {
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: #f5f6f7;
}
.margin {margin-bottom: 45px; }
.bg-1 {
	background-color: #1abc9c;
	color: #ffffff;
}
.bg-3 {
	background-color: #ffffff;
	color: #555555;
}
.container-padding {
	padding-top: 70px;
	padding-bottom: 70px;
}
</style>
<body>
<jsp:include page="header.jsp"/>
<div class="container-fluid bg-1 text-center container-padding">
	<h3>Here is your order information</h3>
</div>

<div class="container">
<form:form method="post" action="ConfirmOrder">
	<%@ page import="java.util.List" %>
	<%@ page import="edu.osu.cse5234.business.view.LineItem" %>
	<%@ page import="edu.osu.cse5234.business.view.Order" %>
	<%@ page import="edu.osu.cse5234.business.view.PaymentInfo" %>
	<%@ page import="edu.osu.cse5234.business.view.ShippingInfo" %>
	
	<h2>Order:</h2>
   	<table class="table table-striped">
   		<tr>
   			<th>Fruit</th>
   			<th>Quantity</th>
		</tr>
		<% 
		Order order = (Order) session.getAttribute("order");
		List<LineItem> list = order.getOrder();
		for(int i=0; i<list.size(); i++){ 
	 	%>
		<tr>
			<td><%= list.get(i).getItemName() %></td>
			<td><%= list.get(i).getQuantity() %></td>
		</tr>
		<%} %>
	</table><br />
	
	<h2>Payment Information:</h2>
   	<% PaymentInfo payment = (PaymentInfo) session.getAttribute("payment"); %>
   	<table class="table table-striped">
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

	<h2>Shipping Information:</h2>
   	<% ShippingInfo shipping = (ShippingInfo) session.getAttribute("shipping"); %>
   	<table class="table table-striped">
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
   	
	<div class="container-fluid bg-3 text-center container-padding">
		<input type="submit" class="btn btn-info btn-lg" value="Confirmation">
	</div>
	
</form:form>
</div>
</body>
</html>


