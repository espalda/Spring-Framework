<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
	font-size: 11px;
	}
	.mt-4 div{
	margin: 0 0 10px;
	}
</style>
</head>
<body class="text-center">
	<div class="py-3">
		<p>M O D I F Y</p>
			<hr class="member-line">
		<form method="post" action="">
		<div class="container">
			<div class="pt-3">
				<input type="text" class="sign-input" placeholder="아이디" name="id" readonly>
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="password" class="sign-input" placeholder="비밀번호" name="pw" id="pw">
			</div>
				<label id="pw-error" for="pw"></label>
				
			<div>
				<input type="password" class="sign-input" placeholder="비밀번호 확인" name="pw2">
			</div>
				<label id="pw2-error" for="pw2"></label>
			
			<div>
				<input type="text" class="sign-input" placeholder="이름" name="name" readonly>
			</div>
				<label id="name-error" for="name"></label>
			
			<div>
				<input type="email" class="sign-input" placeholder="이메일" name="email">
			</div>
				<label id="email-error" for="email"></label>
				
			<div class="mt-4">
				<div><button class="btn-tree">UPDATE PROFILE</button></div>
				<div>
					<a href="<%=request.getContextPath()%>/member/display">
					<button class="btn-raw">CANCLE</button></a>
				</div>
				<div><button class="btn-gray">WITHDRAW MEMBER</button></div>
			</div>
	</div>
	</form>
	</div>
	
	
</body>
</html>