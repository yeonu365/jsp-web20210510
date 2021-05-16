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
<%-- out.print/write
     ("") 안에서 html 코드가 사용가능하다!! --%>
     
	<%
	out.print("coding");
	out.print("<h1>You can do it.!</h1>");
	out.write("coding");
	out.write("<h3>You can do it.!</h3>");
	%>
</div>
</body>
</html>