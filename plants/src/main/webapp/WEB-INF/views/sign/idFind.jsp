<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form method="post" action="" id="idFind">
		<div class="container text-center">
		<h2>Find Id</h2>
			<div>
				<input type="text" class="sign-input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="email" class="sign-input" placeholder="이메일" name="email" id="email">
			</div>
				<label id="email-error" for="email"></label>
				
				<button class="btn-raw">FIND ID</button>
		
			<div>
				가입 시 입력하신 아이디는 ${member.id} 입니다.
			</div>
		</div>
	</form>
			
</body>
</html>
