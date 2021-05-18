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
	<form>
	수1 : <input type="text" name="input1" /><br>
	수2 : <input type="text" name="input2" /><br>
	<input type="submit" value="계산" />
	</form>	
	<hr>
	더하기 : ${param.input1 + param.input2 }<br>
 	빼기 : ${param.input1 - param.input2 }<br>
	곱하기 : ${param.input1 * param.input2 }<br>
	나누기 : ${param.input1 / param.input2 }<br>
	
	
</div>
</body>
</html>