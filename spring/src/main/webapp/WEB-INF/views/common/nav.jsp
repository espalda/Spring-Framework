<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-success navbar-dark">
  <ul class="navbar-nav">
  <!-- 유저정보가 null이면 보이게 해라 -->
  <c:if test="${user eq null}">
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signup">Sing Up</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signin">Sign In</a>
    </li>
  </c:if>
  
  <c:if test="${user ne null}">
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signout">Sign Out</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/member/modify">Modify</a>
    </li>
    
    <!-- target="_blank" 은 활성화 되어있는 페이지가 아닌 새탭에 생성 -->
    <li class="nav-item">
      <a class="nav-link" href="https://github.com/st8324" target="_blank">Github</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link disabled" href="#">[ ${user.id }Signing in]</a>
    </li>
    </c:if>
    
    <c:if test="${user.authority eq 'admin'}">
	    <li class="nav-item">
	      <a class="nav-link" href="<%=request.getContextPath()%>/admin/user/list">mng page</a>
	    </li>
    </c:if>
  </ul>
</nav>