<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
<div>
	<a href="<%= request.getContextPath()%>/sample2/main">메인</a>
	|
	<a href="<%= request.getContextPath()%>/sample2/member/signup">회원가입</a>
	|
	<c:if test="${empty sessionScope.userLogined }">
		<a href="<%= request.getContextPath()%>/sample2/member/login">로그인</a>
		|
	</c:if>
	
	<c:if test="${not empty sessionScope.userLogined }">
		<a href="<%= request.getContextPath()%>/sample2/member/info">정보보기</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/member/logout">로그아웃</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/board/write">글쓰기</a>
		|
	<a href="<%= request.getContextPath() %>/sample2/member/list">회원 목록보기</a>
	    |
	</c:if>
	<a href="<%= request.getContextPath() %>/sample2/board/list">글 목록보기</a>

</div>
--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  

  <a class="navbar-brand" href="#">
    <i class="fab fa-java"></i>&nbsp;&nbsp;수업중
  </a>


<%--   
  <a class="navbar-brand" href="#">수업중</a>
--%>  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath()%>/sample2/main"><i class="fas fa-home"></i>&nbsp;&nbsp;홈 <span class="sr-only">(current)</span></a>
      </li>
      	<c:if test="${empty sessionScope.userLogined }">
	      <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath()%>/sample2/member/signup"><i class="fas fa-user-plus"></i>&nbsp;&nbsp;회원가입</a>
	      </li>
	            <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath()%>/sample2/member/login"><i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;로그인</a>
	      </li>
      	</c:if>
      	
      	<c:if test="${not empty sessionScope.userLogined }">
	            <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath()%>/sample2/member/info"><i class="fab fa-sistrix"></i>&nbsp;&nbsp;정보보기</a>
	      </li>
	            <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/logout"><i class="fas fa-sign-out-alt"></i>&nbsp;&nbsp;로그아웃</a>
	      </li>
	            <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/write"><i class="fas fa-edit"></i>&nbsp;&nbsp;글쓰기</a>
	      </li>
	            <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/list"><i class="fas fa-address-book"></i>&nbsp;&nbsp;회원목록보기</a>
	      </li>
      </c:if>
            <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/list"><i class="fas fa-list"></i>&nbsp;&nbsp;글목록보기</a>
      </li>
    </ul>

  </div>
</nav>