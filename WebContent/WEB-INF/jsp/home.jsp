<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fresh Today Homepage</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>

<body class="body">
	<jsp:include page="header.jsp"/>
	<h1> FreshToday</h1>
	<h2> Vision and Mission</h2>
	<h3> Strategy </h3>
	<p> We sell orange, apple, and ... </p>
	<jsp:include page="footer.jsp"/>	
</body>
</html>