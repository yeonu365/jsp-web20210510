<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%
	String type = request.getParameter("type");
	if (type ==null) {
		return;
	}
%>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>타입</td>
	<td><b><%=type %></b></td>
	</tr>
	<tr>
	<td>특징</td>
	<td>
	<% if(type.equals("A")) {
	%>
		강한 내구성.
		<%
	} else if (type.equals("B")) { 
		%>
	뛰어난 대처 능력
	<%
	}
	%>
	</td>
	</tr>		
</table>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
</div>
</body>
</html>