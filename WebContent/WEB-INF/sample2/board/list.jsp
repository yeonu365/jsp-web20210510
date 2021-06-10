<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<table class="table">
	<h1>글 목록</h1>
	<s2:message></s2:message>
		<thead>
			<tr>
				<td>#</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성시간</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boards }" var="board">
				<tr>
					<td>${board.boardId }</td>
					<td>
						<a href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId }">
						${board.title }</a>
						
						<c:if test="${board.numberOfComment != 0 }">
						<span>[${board.numberOfComment }]</span>
						</c:if>
					</td>
					<td>${board.memberName }</td>
					<td>${board.timeAgo }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>