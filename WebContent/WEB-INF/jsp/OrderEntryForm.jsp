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
<title>Order Entry Form</title>
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
	<h3>Welcome to FreshToday!</h3>
	<h2>Health everyday!</h2>
</div>
<br />

<div class="container">
<form:form modelAttribute="order" method="post" action="purchase/submitItems">
	<table class="table table-striped">
	  <thead>
		<tr>
			<th>Item ID</th>
			<th>Fruit</th>
			<th>Quantity</th>
		</tr>
	  </thead>
		<c:forEach var="i" begin="0" end="4">
			<tr>
				<td> <form:hidden path="items[${i}].itemId" /> ${order.items[i].itemId} </td>
				<td> <form:hidden path="items[${i}].itemName" />${order.items[i].itemName} </td>
				<td> <form:input path="items[${i}].quantity" /> </td>
    		</tr>
    	</c:forEach>

	</table><br />
	
	<div class="container-fluid bg-3 text-center container-padding">
		<input type="submit" class="btn btn-info btn-lg" value="Make a payment">
	</div>
</form:form>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>
