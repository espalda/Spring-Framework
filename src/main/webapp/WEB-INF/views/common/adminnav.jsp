<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">
	<ul class="navbar-nav">
	 <li class="nav-item active">
      <a class="nav-link" href="<%=request.getContextPath()%>/">home</a>
    </li>
    
    <li class="nav-item active">
      <a class="nav-link" href="<%=request.getContextPath()%>/admin/user/list">member</a>
    </li>
    
    <li class="nav-item active">
      <a class="nav-link" href="<%=request.getContextPath()%>/admin/board/list">board</a>
    </li>
    
    <li class="nav-item active">
      <a class="nav-link disabled" href="#">[ manager ${user.id } Signing in ]</a>
    </li>
  </ul>
</nav>