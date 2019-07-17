<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-success navbar-dark">
  <ul class="navbar-nav">
  <c:if test="${user eq null}">
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signup">회원가입</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signin">로그인</a>
    </li>
  </c:if>
  
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/signout">로그아웃</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=request.getContextPath()%>/member/modify">회원수정</a>
    </li>
    
    <!-- target="_blank" 은 활성화 되어있는 페이지가 아닌 새탭에 생성 -->
    <li class="nav-item">
      <a class="nav-link" href="https://github.com/st8324" target="_blank">Github</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link disabled" href="#">[ ${user.id }님 로그인 중 ]</a>
    </li>
  </ul>
</nav>