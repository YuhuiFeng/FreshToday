<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Fresh Today Homepage</title>
</head>

<style>
body {
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: #f5f6f7;
}
.margin {margin-bottom: 45px; }
p {
	font-size: 16px; 
	text-align: center;
}


.bg-1 {
	background-color: #1abc9c;
	color: #ffffff;
}
.bg-2 {
	background-color: #474e5d;
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
	<h3>What we offer?</h3>
	<img src="<c:url value='/images/we.jpg' />" class="img-circle" alt="WE" style="width:300px; height:280px" >
	<h3>We deliver Fresh to you!</h3>
</div>

<div class="container-fluid bg-2 text-center container-padding">
	<h3>Vision and Mission</h3>
	<p>We aimed at providing fresh fruit online ordering and delivering service. "FreshToday" means all fruits
	delivered are absolutely fresh and yummy! We are customer orientated company and we focused on every details of the
	services provided. We know you have many choices to choose from. Thanks for choosing us and we will do our best!
	</p>
</div>

<div class="container-fluid bg-3 text-center container-padding">
	<h3>Ready to taste fresh?</h3>
	<a href="/FreshToday/purchase" class="btn btn-primary btn-lg">START PURCHASE</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>