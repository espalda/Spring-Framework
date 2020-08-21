<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sign-01">
	<h1>이메일 찾기</h1>
	<label class="desc">이름</label>
	<input type="text" id="name" /><br>
	<label class="desc">전화번호</label>
		<select>
			<option>010</option>
			<option>011</option>
			<option>012</option>	
		</select>
		<span role="-">-</span>
		<input type="text" id="phone1" name="phone">
		<span role="-">-</span>
		<input type="text" id="phone2" name="phone">
		
	<input type="button" value="get email">
	<hr>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span><img src="https://img.icons8.com/small/16/000000/add-user-group-woman-woman.png"/>회원가입</span></a>
</div>
