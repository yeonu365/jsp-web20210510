<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id=" book1" class="ch08.Book">
	<jsp:setProperty name="book1" property="title" value="JAVA"/>
	<jsp:setProperty name="book2" property="writer" value="kim"/>
</jsp:useBean>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	book : ${book1 } <br>
	
</div>
</body>
</html>