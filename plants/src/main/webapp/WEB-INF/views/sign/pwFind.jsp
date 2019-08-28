<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
	$('input[name=id]').focus();	/* 입력창에 마우스 커서가 자동으로 포커스 되는 기능 구현 */
	$('.pw').click(function(){
		console.log("입력하신 이메일로 비밀번호가 전송되었습니다.");
	});
})
</script>
<style>
.sb{
padding: 15px 15px 0 15px;
}
</style>
</head>
<body>
	<form action="" method="post" id="pwFind">
		<div class="container text-center">
		<h2>Find Password</h2>
			<div>
				<input type="text" class="input" placeholder="아이디" name="id">
			</div>
				
			<div>
				<input type="text" class="input" placeholder="이름" name="name">
			</div>

			<div>
				<input type="email" class="input" placeholder="이메일" name="email" id="email">
			</div>
				
			<div class="sb">
				<a href="<%=request.getContextPath()%>/idFind">Find ID</a>
			</div>
			<div class="sb">
				<button class="btn-raw pw">FIND PASSWORD</button>
			</div>
			
			<div class="sb">
				입력하신 이메일로 비밀번호가 전송되었습니다.
			</div>
		</div>
	</form>
			
</body>
</html>
