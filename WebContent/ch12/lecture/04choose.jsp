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
	<h1>coohse tag</h1>
	<c:choose>
		<c:when test="true">
			<h1>실행 1</h1>
		</c:when>
		<c:otherwise>
			<h1>otherwise 생략 가능</h1>
		</c:otherwise>
	</c:choose>	
	
		<c:choose>
		<c:when test="false">
			<h1>실행 1</h1>
		</c:when>
		<c:otherwise>
			<h1> 거짓 실행 </h1>
		</c:otherwise>
		</c:choose>
		<hr>
	<c:choose>
		<c:when test="${param.type == 'a' }">
			<h1>when 1</h1>
		</c:when>
		<c:when test="${param.type == 'b' }">
			<h1>when 2</h1>
		</c:when>
		<c:when test="${param.type == 'c' }">
			<h1>when 3</h1>
		</c:when>
		<c:otherwise>
			<h1>otherwise evoked</h1>
		</c:otherwise>
	</c:choose>
		
</div>
</body>
</html>