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
<title>Payment Info Page</title>
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
	<h3>Please enter your payment info</h3>
</div>
<br />

<div class="container">
<form:form modelAttribute="payment" method="post" action="submitPayment" class="form-horizontal" role="form">
	<div class="form-group">
		<label class="control-label col-sm-2" for="cardHolder">Credit card holder:</label>
		<div class="col-sm-10">
			<form:input path = "cardHolder" class="form-control" id="cardHolder" placeholder="Enter card holder name"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="creditCardNum">Credit card number:</label>
		<div class="col-sm-10">
			<form:input path = "creditCardNum" class="form-control" id="creditCardNum" placeholder="Enter card number"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="expireDate">Expiration date:</label>
		<div class="col-sm-10">
			<form:input path = "expireDate" class="form-control" id="expireDate" placeholder="Enter card expiration date"/>
		</div>		
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="cvvCode">CVV Code:</label>
		<div class="col-sm-10">
			<form:input path = "cvvCode" class="form-control" id="cvvCode" placeholder="Enter card CVV code"/>
		</div>			
	</div>

	<br />
	
	<div class="container-fluid bg-3 text-center container-padding">
		<input type="submit" class="btn btn-info btn-lg" value="Next">
	</div>	
	
</form:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>