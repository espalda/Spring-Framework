<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form method="post" action="" id="signin">
		<div class="container text-center">
		<h2>Sign In</h2>
			<div>
				<input type="text" class="sign-input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="password" class="sign-input" placeholder="비밀번호" name="pw" id="pw">
			</div>
				<label id="pw-error" for="pw"></label>
				
			<div class="font-gray text-right mr-5 pr-4">
				<a class="a-gray" href="<%=request.getContextPath()%>/idFind">Find ID</a>
				 / 
				<a class="a-gray" href="<%=request.getContextPath()%>/pwFind">PASSWORD</a>
			</div>
				<button class="btn-tree d-block">SIGN IN</button>
				<a class="text-center" href="<%=request.getContextPath()%>/signup">회원가입을 하시려면 여기를 클릭하세요.</a>
		</div>
	</form>	
</body>
</html>
