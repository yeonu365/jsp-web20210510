<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<%= request.getHeader("Connection") %><br>
<%= request.getServerName() %><br>
<%= request.getContextPath() %><br>
<%= request.getRequestURI() %>
	
</div>
</body>
</html>