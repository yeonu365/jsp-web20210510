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
	<form>
		<input type="number" name="dan" />
		<br>
		<input type="submit" value="구구단 출력" />
	</form>
	<hr>
	<c:forEach var="i" begin="1" end="9">
		${param.dan } X ${i } = ${param.dan * i }<br>
	</c:forEach>
</div>
</body>
</html>