<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form method="post" action="">
		<div class="text-center">
		<h2>modify</h2>
		<div>
			<div>
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
			</div>

			<button class="btn-tree">UPDATE</button>
			<a href="<%=request.getContextPath()%>/member/display"><button class="btn-raw">CANCLE</button></a>
			<button class="btn-gray">WITHDRAW</button>
	
	
		<h2>Profile</h2>
		<div>
			<table class="table table-borderless text-center">
				<tr>
					<td>회원 아이디 님 환영합니다.</td>
				</tr>
				<tr>
					<td>회원님의 등급은 입니다.</td>
				</tr>
				<tr>
					<td>적립금 : </td>
				</tr>
				<tr>
					<td>보유 쿠폰 : </td>
				</tr>
			</table>
		</div>
	</div>
	</form>
</body>
</html>