<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie = new Cookie("my-cookie", "my-value");
response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>COOKIE</h1>
	<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"	
</div>
</body>
</html>