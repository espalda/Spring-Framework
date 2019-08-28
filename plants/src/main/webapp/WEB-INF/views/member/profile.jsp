<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.modify input{
text-align: center;
color: blue;
}
</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/member/profile" method="post">
		<div class="text-center">
			<h2>Profile</h2>
			<div>
				<table class="table table-borderless text-center">
					<tr>
						<td>${login.id} 님 환영합니다.</td>
					</tr>
					<tr>
						<td>회원님의 등급은 [💗${login.grade }💗] 입니다.</td>
					</tr>
					<tr>
						<td>적립금 : ${login.point }</td>
					</tr>
					<tr>
						<td>보유 쿠폰 : count</td>
					</tr>
				</table>
			</div>
		
		<h2>modify</h2>
			<div class="modify">
				<div>
					<span>아이디</span>
					<input type="text" placeholder="아이디" name="id" value="${login.id }" readonly>
				</div>
				<div>
					<span>이름</span>
					<input type="text" placeholder="이름" name="name" value="${login.name }" readonly>
				</div>
				<div>
					<span>바밀번호</span>
					<input type="password" placeholder="비밀번호" name="pw" id="pw">
				</div>
					<label id="pw-error" for="pw"></label>
				<div>
					<span>비밀번호 확인</span>
					<input type="password" placeholder="비밀번호 확인" name="pw2">
				</div>
					<label id="pw2-error" for="pw2"></label>
				<div>
					<span>휴대폰</span>
					<input type="text" placeholder="휴대폰" name="phone">
				</div>
					<label id="phone-error" for="phone"></label>
				<div>
					<span>이메일</span>
					<input type="email" placeholder="이메일" name="email">
				</div>
					<label id="email-error" for="email"></label>
				</div>
	
				<button class="btn-tree">UPDATE</button>
				<a href="<%=request.getContextPath()%>/member/display"><button class="btn-raw">CANCLE</button></a>
				<button class="btn-gray">WITHDRAW</button>
		</div>
	</form>
</body>
</html>