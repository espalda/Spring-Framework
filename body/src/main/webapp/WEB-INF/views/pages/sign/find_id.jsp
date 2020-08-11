<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sign-01">
	<h1>이메일 찾기</h1>
	<label class="desc">name</label>
	<input type="text" id="name" placeholder="please, enter your name"><br>
	<label class="desc">phone</label>
		<select>
			<option>010</option>
			<option>011</option>
			<option>012</option>	
		</select>
		<span>-</span>
		<input type="text" id="phone" name="phone">
		<span>-</span>
		<input type="text" id="phone" name="phone">
		
	<input type="button" value="get email">
	<hr>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span>회원가입</span></a>
</div>
