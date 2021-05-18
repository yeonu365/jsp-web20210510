<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Login</title>
</head>
<body>

<div class="">
  <form action="<%= request.getContextPath() %>/ch09/textbook/login.jsp" method="post" class="px-4 py-3" >
    <div class="form-group">
      <label for="exampleDropdownFormEmail1">ID</label>
      <input type="text" name="id" class="form-control" id="exampleDropdownFormEmail1" placeholder="abcd">
    </div>
    <div class="form-group">
      <label for="exampleDropdownFormPassword1">Password</label>
      <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
    </div>
    <div class="form-group">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">
          Remember me
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="#">New around here? Sign up</a>
  <a class="dropdown-item" href="#">Forgot password?</a>
</div>
</body>
</html>

<%--  
<div class="container">
	<form action="<%= request.getContextPath() %>/ch09/textbook/login.jsp" method="post">
아이디 <input type="text" name="id" size="10">
암호 <input type="password" name="password" size="10">
<input type="submit" value="로그인">
	</form>
</div>
--%>