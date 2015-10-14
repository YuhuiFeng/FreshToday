<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Info Page</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>
<body>
<h2>Please enter your payment info:</h2>
<form:form modelAttribute="payment" method="post" action="submitPayment">
	Credit card holder: <form:input path = "cardHolder" type = "text"/><br />
	Credit card number: <form:input path = "creditCardNum" type = "text" /><br />
	Expiration date: <form:input path = "expireDate" type = "text" /><br />
	CVV code: <form:input path = "cvvCode" type = "text" /><br/>
	<br />
	
	<input type="submit" value="Next" />
</form:form>
<jsp:include page="footer.jsp"/>
</body>
</html>