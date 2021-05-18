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
<%
pageContext.setAttribute("pageAttr1", "");
pageContext.setAttribute("pageAttr2", new int[] {});
pageContext.setAttribute("pageAttr3", new ArrayList());
pageContext.setAttribute("pageAttr4", new HashMap());
%>

	<h1>empty 연산자</h1>
	\${empty attr1 } null일때 : ${empty attr1 }<br>
	\${empty pageAttr1 } Wien 스트링 일때 : ${empty pageAttr1 }<br>
	\${empty pageAttr2 } 길이가 0일 배열 (x )일때 : ${empty pageAttr2 }<br>
	\${empty pageAttr3 } 길이가 0일 list<> 일때 : ${empty pageAttr3 }<br>
	\${empty pageAttr4 } 크기가 0일 Map<> 일때 : ${empty pageAttr4 }<br>
	<hr>
	<h1>notempty 연산자</h1>
	\${not empty attr1 } null일때 : ${not empty attr1 }<br>
	\${not empty pageAttr1 } Wien 스트링 일때 : ${not empty pageAttr1 }<br>
	\${not empty pageAttr2 } 길이가 0일 배열 (x )일때 : ${not empty pageAttr2 }<br>
	\${not empty pageAttr3 } 길이가 0일 list<> 일때 : ${not empty pageAttr3 }<br>
	\${not empty pageAttr4 } 크기가 0일 Map<> 일때 : ${not empty pageAttr4 }<br>
	<hr>
	<h1>! empty 연산자</h1>
	\${! empty attr1 } null일때 : ${! empty attr1 }<br>
	\${! empty pageAttr1 } Wien 스트링 일때 : ${! empty pageAttr1 }<br>
	\${! empty pageAttr2 } 길이가 0일 배열 (x )일때 : ${! empty pageAttr2 }<br>
	\${! empty pageAttr3 } 길이가 0일 list<> 일때 : ${! empty pageAttr3 }<br>
	\${! empty pageAttr4 } 크기가 0일 Map<> 일때 : ${! empty pageAttr4 }<br>
	<hr>
	

	
	
</div>
</body>
</html>