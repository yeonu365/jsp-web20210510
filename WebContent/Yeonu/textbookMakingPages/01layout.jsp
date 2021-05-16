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
<tr>
	<td colspan="2">
	<jsp:include page="top.jsp"/>
	</td>
</tr>
<tr>
	<td width="100" valign="top">
	<jsp:include page="left.jsp"/>
	</td>
	<td width=300" valign="top">
	layout1
	</td>
</tr>
<tr>
	<td colspan="2">
	<jsp:include page="bottom.jsp"/>
	</td>
</tr>
	

</body>
</html>