<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
<link rel="stylesheet" href="<c:url value='/css/mystyle.css' />" type="text/css" />
</head>
<body>
    <jsp:include page="header.jsp"/>
	<font color="green" size="5">
	Congratulations! You have set your fruit order. You will received your fresh fruit tomorrow!<br />
	</font>
	<br />
	Your confirmation code is <%=request.getAttribute("confirmCode").toString() %>
	Thanks for shopping at FreshToday, your fresh fruit supporter!
	<jsp:include page="footer.jsp"/>
</body>
</html>