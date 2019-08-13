<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<form method="post" action="" id="signin">
		<div class="container">
			<div class="pt-3">
				<input type="text" class="sign-input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="password" class="sign-input" placeholder="비밀번호" name="pw" id="pw">
			</div>
				<label id="pw-error" for="pw"></label>
				
			<div class="font-gray text-right mr-5 pr-4">
				Find ID / PASSWORD
			</div>
				
			<div class="m-3">
				<button class="btn-tree">S I G N  I N</button>
			</div>
			
			<div class="font-black">
				회원가입을 하시려면 여기를 클릭하세요.
			</div>
		</div>
	</form>
			
</body>
</html>
