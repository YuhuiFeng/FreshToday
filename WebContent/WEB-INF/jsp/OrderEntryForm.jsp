<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Entry Form</title>
</head>
<body>
<h2>Welcome to FreshToday! Health everyday!</h2>
<form:form modelAttribute="order" method="post" action="purchase/submitItems">
	<table>
		<tr>
			<th>Fruit</th>
			<th>Quantity</th>
		</tr>
		<tr>
			<td> <form:hidden path="items[0].name" />${order.items[0].name} </td>
	    	<td> <form:input path="items[0].quantity" /> </td>
    	</tr>
    	<tr>
			<td> <form:hidden path="items[1].name" />${order.items[1].name} </td>
	    	<td> <form:input path="items[1].quantity" /> </td>
    	</tr>
    	<tr>
			<td> <form:hidden path="items[2].name" />${order.items[2].name} </td>
	    	<td> <form:input path="items[2].quantity" /> </td>
    	</tr>
    	<tr>
			<td> <form:hidden path="items[3].name" />${order.items[3].name} </td>
	    	<td> <form:input path="items[3].quantity" /> </td>
    	</tr>
    	<tr>
			<td> <form:hidden path="items[4].name" />${order.items[4].name} </td>
	    	<td> <form:input path="items[4].quantity" /> </td>
    	</tr>

	</table><br />
	
	<input type="submit" value="Make a playment >>" />
</form:form>
</body>
</html>
