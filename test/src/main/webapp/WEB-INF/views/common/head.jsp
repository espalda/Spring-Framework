<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
 <li class="nav-item">
 	<!-- c:if 조건식이 맞으면 실행, 조건식에 해당하지 않으면 실행 되지 않음 -->
	<!-- 로그인 정보가 없으면 보여지는 목록 -->
   <c:if test="${user.id eq null }">
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/signup">회원가입</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/signin">로그인</a>
	    </li>
    </c:if>
    
    <!-- 로그인 사용자가 없으면 보여지는 목록 -->
    <c:if test="${user.id ne null}">
    	<li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/member/modify">회원수정</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/signout">로그아웃</a>
	    </li>
	    
	    <li class="nav-item active">
	      <a class="nav-link disabled" href="#">${user.id }님이 로그인 중입니다.</a>
    	 </li>
    </c:if>
  </ul>
</nav>