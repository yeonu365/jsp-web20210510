<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<%--

	<h1>환영합니다.</h1>
	<a href="<%= request.getContextPath() %>/sample2/member/signup">회원가입</a>
 --%>
 
<s2:navbar />
<%-- 이미지 사진 넣기, 상단에 위치함.. 
<div class="container">
	<img alt="" src="${pageContext.request.contextPath }/img/theblowing.jpg">
</div>
--%>
<div class="container">
	<div class="jumbotron">
	  <h1 class="display-4"><i class="fab fa-java"></i>&nbsp;&nbsp;환영합니다.</h1>
	  <p class="lead">기본 Servlet / JSP 로 만든 회원, 게시판 어플리케이션입니다.</p>
	  <hr class="my-4">
	  <p>약 5개월간 공부하고 만든 첫번쨰 프로젝트입니다.</p>
	  <p>회원가입 가능합니다. </p>
	   
	  <a class="btn btn-primary btn-lg" href="<%= request.getContextPath()%>/sample2/member/signup" role="button">회원가입</a>
	</div>
</div>



</body>
</html>