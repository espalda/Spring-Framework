<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-warning navbar-dark">
  <ul class="navbar-nav">

    <li class="nav-item active">
      <a class="nav-link" href="<%=request.getContextPath()%>/admin/user/list">회원 리스트</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="<%=request.getContextPath()%>/board/list">게시글</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link disabled" href="#">[ 관리자 ${user.id } 접속 중 ]</a>
    </li>
    
  </ul>
</nav>