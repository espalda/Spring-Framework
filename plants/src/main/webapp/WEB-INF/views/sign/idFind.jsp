<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
	$('input[name=id]').focus();	/* 입력창에 마우스 커서가 자동으로 포커스 되는 기능 구현 */
})
</script>
<style>
.sb{
padding: 15px 15px 0 15px;
}
</style>
</head>
<body>
	<form action="" method="post" id="idFind">
		<div class="container text-center">
		<h2>Find Id</h2>
			<div>
				<input type="text" class="input" placeholder="아이디" name="id">
			</div>

			<div>
				<input type="email" class="input" placeholder="이메일" name="email" id="email">
			</div>
			
			<div class="sb">
				<a href="<%=request.getContextPath()%>/pwFind">Find PASSWORD</a>
			</div>
			
			<div class="sb">
				<button class="btn-raw">FIND ID</button>
			</div>
		
			<div class="sb">
				가입 시 입력하신 아이디는 ${member.id} 입니다.
			</div>
		</div>
	</form>
			
</body>
</html>
