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
	<h1>el 기본 객체 (11개)</h1>
	<ul>
		<li>pageContext -Object</li>
		<li>pageScope -Map</li>
		<li>requestScope -Map</li>
		<li>sessionScope -Map</li>
		<li>applicationScope -Map</li>
		<li>param -Map</li>
		<li>paramValues -Map</li>
		<li>header -Map</li>
		<li>headerValues -Map</li>
		<li>cookie -Map</li>
		<li>initParam -Map</li>
	</ul>
</div>
</body>
</html>