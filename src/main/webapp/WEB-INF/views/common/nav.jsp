<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signup">회원가입</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signout">로그아웃</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/member/modify">회원수정</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link disabled" href="#">[ ${user.id }님 로그인 중 ]</a>
    </li>
  </ul>
</nav>