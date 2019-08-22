<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form method="post" action="" id="pwFind">
		<div class="container text-center">
		<h2>Find Password</h2>
			<div>
				<input type="text" class="sign-input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>
				
			<div>
				<input type="text" class="sign-input" placeholder="이름" name="name">
			</div>
				<label id="id-error" for="name"></label>

			<div>
				<input type="password" class="sign-input" placeholder="비밀번호" name="pw" id="pw">
			</div>
				<label id="pw-error" for="pw"></label>
				
			<div>
				<button class="btn-raw">FIND PASSWORD</button>
			</div>
			
			<div>
				입력하신 이메일로 비밀번호가 전송되었습니다.
			</div>
		</div>
	</form>
			
</body>
</html>
