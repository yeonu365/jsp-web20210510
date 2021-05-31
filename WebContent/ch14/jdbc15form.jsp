<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="${pageContext.request.contextPath }/JDBC15InsertServlet" method="post">
	Last name : <input type="text" name="lastName"><br> 
	First name : <input type="text" name="firstName"><br> 
	Notes : <br>
	<textarea name="notes" rows="3"></textarea>
	<br>
	<input type="submit">
	</form>
</div>
</body>
</html>