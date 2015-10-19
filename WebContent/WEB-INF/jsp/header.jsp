<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header of homepage</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>
<body>
	<ul class="header" id="menu">
		<li><a href="/FreshToday/">HOME PAGE</a></li>
		<li><a href="/FreshToday/AboutUs"> ABOUT US</a></li>
		<li><a class="a" href="/FreshToday/purchase">PURCHASE</a></li> 
	</ul>
</body>
</html>