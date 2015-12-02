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
<title>Insert title here</title>
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
.row-padding {
	padding-top: 20px;
	padding-bottom: 20px;	
}
</style>
<body>
<jsp:include page="header.jsp"/>
<div class="container-fluid bg-1 text-center container-padding">
	<h2>Welcome to FreshToday!</h2>
	<h2>Your Fresh Fruit Supporters</h2>
	<h3>We deliver Fresh to you!</h3>
</div>

<div class="container-fluid bg-3 text-center">
	<div class="row">
		<div class="col-sm-4 row-padding">
			<img src="<c:url value='/images/Yuhui.jpg' />" alt="CEO Photot" style="width:128px; height:128px" />
			<p>Yuhui Feng, the CEO of FreshToday. He is now the 2nd year master in Electrical and Computer Engineering in The Ohio State University.</p>
			<p>His EXCELLENT management makes FreshToday the best fresh fruit supporter in the world.</p>
		</div>
		
		<div class="col-sm-4 row-padding">
			<img src="<c:url value='/images/Weizhi.jpg' />" alt="CIO Photot" style="width:128px; height:128px" />
			<p>Weizhi Kuo, the CIO of FreshToday. He is now the 2nd year master in Electrical and Computer Engineering in The Ohio State University.</p>
			<p>He loves health and with passion in software engineer. He is the key leader in FreshToday web site developing.</p>
		</div>
		
		<div class="col-sm-4 row-padding">
			<img src="<c:url value='/images/Qiang.jpg' />" alt="CIO Photot" style="width:128px; height:128px" />
			<p>Qiang Xu, the CFO of FreshToday. He is now the PHD student in Electrical and Computer Engineering in The Ohio State University.</p>
			<p>He is an expert not only in software developing, but also in finance and marketing. As a CFO, he has an unique idea to use FreshToday to make the world a better place.</p>
		</div>
	</div>
</div>
	
<jsp:include page="footer.jsp"/>	
</body>
</html>