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
	<h3>구구단 3단 출력 (include directive)</h3>
	<%
	int dan =3;
	%>
	<%@ include file="05include-directive.jsp" %>
	
</div>
<div class="container mt-3">

	<h3>구구단 3단 출력 (include tag)</h3>
 	<jsp:include page="05include-tag.jsp">
 		<jsp:param name="dan" value="3"/>
 	</jsp:include>
</div>

<div class="container mt-3">
	<h3>구구나 4단 출력</h3>
	<jsp:include page="05include-tag.jsp">
		<jsp:param name="dan" value="4"/>
	</jsp:include>
</div>

</body>
</html>