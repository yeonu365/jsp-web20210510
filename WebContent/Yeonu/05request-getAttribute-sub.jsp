<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<%
Page p = (Page) request.getAttribute("page");
int start = p.getStart();
int end = p.getEnd();
%>

<div class="container">
	<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
<%
for(int i = start; i <=end; i++) {
%>    
    <li class="page-item"><a class="page-link" href="#"><%= i %></a></li>
<%
}
%>    	
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
	
	
	
</div>
</body>
</html>