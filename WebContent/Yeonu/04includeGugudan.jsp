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
<%-- div 를 나눠주기 않으면 dan duplicated 발생 error --%>
<div class="container">
	<h1>3단출력 include directive</h1>
	<%
	int dan = 3;
	%>
	<%@ include file="04include-directive.jsp" %>
</div>

<div class="container">	
<br>
	<h1>4단 출력 include action tag</h1>
	<h3 style= "text-align:center;">(변수 정의 필요.)</h3>
	<jsp:include page="04include-actionTag.jsp">
		<jsp:param value="4" name="dan"/>
	</jsp:include>
	
</div>
</body>
</html>