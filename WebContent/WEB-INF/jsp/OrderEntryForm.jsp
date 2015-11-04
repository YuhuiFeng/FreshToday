<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Entry Form</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>
<body>
<jsp:include page="header.jsp"/>
<h2>Welcome to FreshToday! Health everyday!</h2>
<form:form modelAttribute="order" method="post" action="purchase/submitItems">
	<table>
		<tr>
			<th>ID</th>
			<th>Fruit</th>
			<th>Description</th>
			<th>Price</th>
			<th>Quantity</th>
		</tr>
		<c:forEach var="i" begin="0" end="4">
			<tr>
				<td> <form:hidden path="items[${i}].id" /> ${order.items[i].id} </td>
				<td> <form:hidden path="items[${i}].name" />${order.items[i].name} </td>
				<td> <form:hidden path="items[${i}].description" /> ${order.items[i].description} </td>
				<td> <form:hidden path="items[${i}].unitPrice" /> ${order.items[i].unitPrice} </td>
	    		<td> <form:input path="items[${i}].quantity" /> </td>
    		</tr>
    	</c:forEach>

	</table><br />
	
	<input type="submit" value="Make a playment >>" />
</form:form>
<jsp:include page="footer.jsp"/>
</body>
</html>
