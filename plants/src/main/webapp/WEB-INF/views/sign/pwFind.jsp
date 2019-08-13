<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<form method="post" action="" id="pwFind">
		<div class="container">
			<div class="pt-3">
				<input type="text" class="sign-input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>
				
			<div class="pt-3">
				<input type="text" class="sign-input" placeholder="이름" name="name">
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="password" class="sign-input" placeholder="비밀번호" name="pw" id="pw">
			</div>
				<label id="pw-error" for="pw"></label>
				
			<div class="m-3">
				<button class="btn-raw">F I N D  P A S S W O R D</button>
			</div>
			
			<div class="border" style="color:#b97f6d">
				입력하신 이메일로 비밀번호가 전송되었습니다.
			</div>
		</div>
	</form>
			
</body>
</html>
