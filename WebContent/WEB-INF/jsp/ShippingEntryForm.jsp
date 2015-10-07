<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping info page</title>
</head>
<body>
<h2>Please enter your shipping info:</h2>
<form:form modelAttribute="shipping" method="post" action="submitShipping">
	Name : <form:input path = "name" /><br />
	Address line 1 : <form:input path = "addressLine1" /><br />
	Address line 2 : <form:input path = "addressLine2" /><br />
	City : <form:input path = "city" /><br />
	State : <form:input path = "state" /><br />
	Zip code : <form:input path = "zipCode" /><br />
	<br />
	
	<input type="submit" value="Submit Order" />
</form:form>
</body>
</html>