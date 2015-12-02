<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Confirmation Page</title>
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
		<h2>Congratulations!</h2>
		<h3>You have set your fruit order.</h3>
		<h3>You will received your fresh fruit tomorrow!</h3>
	</div>
	
	<div class="container-fluid bg-3 text-center container-padding">
	<p>
	Your confirmation code is <%=request.getAttribute("confirmCode").toString() %>
	Thanks for shopping at FreshToday, your fresh fruit supporter!
	</p>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>