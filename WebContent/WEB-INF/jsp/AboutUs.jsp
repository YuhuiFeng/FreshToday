<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h1> Welcome to FreshToday!</h1>
	<h2> Your Fresh Fruit Supporters</h2>
	<img src="<c:url value='/images/Yuhui.jpg' />" alt="CEO Photot" style="width:128px; height:128px" />
	<p> 
		Yuhui Feng, the CEO of FreshToday. He is now the 2nd year master in Electrical and Computer Engineering in The Ohio State University. 
		His EXCELLENT management makes FreshToday the best fresh fruit supporter in the world.
	</p>
	
	<img src="<c:url value='/images/Weizhi.jpg' />" alt="CIO Photot" style="width:128px; height:128px" />
	<p> 
		Weizhi Kuo, the CIO of FreshToday. He is now the 2nd year master in Electrical and Computer Engineering in The Ohio State University. 
		He loves health and with passion in software engineer. He is the key leader in FreshToday web site developing.
	</p>
	
	<img src="<c:url value='/images/Qiang.jpg' />" alt="CIO Photot" style="width:128px; height:128px" />
	<p> 
		Qiang Xu, the CFO of FreshToday. He is now the PHD student in Electrical and Computer Engineering in The Ohio State University. 
		He is an expert not only in software developing, but also in finance and marketing. As a CFO, he has an unique idea to use FreshToday to make the world a better place.
	</p>
	
	
	
</body>
</html>