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
<title>Shipping info page</title>
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
	<h3>Please enter your shipping info</h3>
</div>
<br />
<div class="container">
<form:form modelAttribute="shipping" method="post" action="submitShipping" class="form-horizontal" role="form">
	<div class="form-group">
		<label class="control-label col-sm-2" for="name">Name:</label>
		<div class="col-sm-10">
			<form:input path = "name" class="form-control" id="name" placeholder="Enter your name"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="addressLine1">Address line 1:</label>
		<div class="col-sm-10">
			<form:input path = "addressLine1" class="form-control" id="addressLine1" placeholder="Address line 1"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="addressLine2">Address line 2:</label>
		<div class="col-sm-10">
			<form:input path = "addressLine2" class="form-control" id="addressLine2" placeholder="Address line 2"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="city">City:</label>
		<div class="col-sm-10">
			<form:input path = "city" class="form-control" id="city" placeholder="Entry your city"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="state">State:</label>
		<div class="col-sm-10">
			<form:input path = "state" class="form-control" id="state" placeholder="Entry your state"/>
		</div>
	</div>	
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="zipCode">Zip code:</label>
		<div class="col-sm-10">
			<form:input path = "zipCode" class="form-control" id="zipCode" placeholder="Entry your Zip code"/>
		</div>
	</div>	

	<br />
	<div class="container-fluid bg-3 text-center container-padding">
		<input type="submit" class="btn btn-info btn-lg" value="Submit Order">
	</div>
</form:form>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>