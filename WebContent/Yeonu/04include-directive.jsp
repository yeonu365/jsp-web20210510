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
<%

for(int i = 1; i<= 9; i++) {
	out.print(dan + "x" + i + "=" + (dan*i));
	out.print("<br>");
}
%>	
</div>
</body>
</html>