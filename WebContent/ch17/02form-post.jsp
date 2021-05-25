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
		<form action="<%= request.getContextPath() %>/Servlet06Post" method="post">
	이름 : <input type="text" name="name" />
	<br>
	주소 : <input type="text" name="address" />
	<br>
	<input type="submit" />
	</form>
</div>
</body>
</html>