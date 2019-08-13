<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<form method="post" action="" id="idFind">
		<div class="container">
			<div class="pt-3">
				<input type="text" class="sign-input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="password" class="sign-input" placeholder="비밀번호" name="pw" id="pw">
			</div>
				<label id="pw-error" for="pw"></label>
				
			<div class="m-3">
				<button class="btn-raw">F I N D  I D</button>
			</div>
			
			<div class="border" style="color:#b97f6d">
				가입 시 입력하신 아이디는 ${member.id} 입니다.
			</div>
		</div>
	</form>
			
</body>
</html>
