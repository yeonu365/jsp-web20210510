<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-4">
<form action="processJoining.jsp" method="post">
	<div class="form-group">
		<lavel for="input1"> 아이디</lavel>
	    <input type="text" class="form-control" id="input1" name="id">
	</div>
	<div class="form-group">
		<lavel for="input2"> 이름</lavel>
	    <input type="text" class="form-control" id="input2" name="name">
	</div>
	<div class="form-group">
		<lavel for="input3"> 이메일</lavel>
	    <input type="text" class="form-control" id="input3" name="email">
	</div>
	
	<input type="submit" class="btn btn-primary" value="회원가입">
</form>
</div>
</div>	
</div>
</body>
</html>