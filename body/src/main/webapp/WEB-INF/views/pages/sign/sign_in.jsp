<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sign-01">
	<h1>로그인</h1>
	<label class="desc">e-mail</label>
	<input type="text" id="email" placeholder="please, enter your e-mail"><br>
	
	<label class="desc">password</label>
	<input type="password" id="pw" placeholder="please, enter your password"><br>
	<input type="button" value="login"><br>
	
	<input type="checkbox" id="save_id"><label for="save_id">아이디 저장</label>
	
	<hr>
	<a href="<%=request.getContextPath()%>/pages/sign/find_id"><span>이메일 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span>회원가입</span></a>
</div>