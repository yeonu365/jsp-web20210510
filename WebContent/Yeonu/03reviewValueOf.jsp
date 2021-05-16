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
<input type="checkbox" name="fruit" value="100"> 사과 <br>
<input type="checkbox" name="fruit" value="150"> 바나나 <br>
<input type="checkbox" name="fruit" value="200"> 딸기 <br>
<input type="checkbox" name="fruit" value="300"> 키위 <br>
<input type="checkbox" name="fruit" value="500"> 망고 <br>
<input type="checkbox" name="fruit" value="700"> 수박 <br><br>
<input type="submit" class="btn btn-primary" value="합계">
</form>

<%
String[] fruits = request.getParameterValues("fruit");
int sum=0;
if(fruits != null && fruits.length >0) {
	for(String value : fruits) {
		sum += Integer.valueOf(value);
	}
}
%>
<br>
<h3><%= sum %>원</h3>

</div>

</body>
</html>