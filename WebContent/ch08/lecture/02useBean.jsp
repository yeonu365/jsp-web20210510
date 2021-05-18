<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" class="ch08.Book" scope="request"></jsp:useBean>
<jsp:setProperty name="book1" property="title" value="이것이 자바다"/>
<jsp:setProperty name="book1" property="writer" value="신용권"/>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<%
Book book = (Book) request.getAttribute("book1");
%>	

book 이 request에 잘 붙어있는 지 확인~> <%= book != null %>
<br><br>
<h3>properties 확인하기.</h3>
<br>
title : <%= book.getTitle() %><br>
writer : <%= book.getWriter() %><br>
<hr>
<h3>getProperty Tag</h3>
title : <jsp:getProperty property="title" name="book1"/><br>
writer : <jsp:getProperty property="writer" name="book1"/>

</div>
</body>
</html>