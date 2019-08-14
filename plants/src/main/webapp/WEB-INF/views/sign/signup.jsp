<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
</head>
<body>
	<form method="post" action="" id="signup">
		<div class="container">
			<div class="pt-3">
				<input type="text" class="sign-input" placeholder="아이디" name="id">
				<a href="#" data-toggle="tooltip" title="아이디는 6자에서 12자 사이로 입력해주세요">exam</a>
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
				<input type="text" class="sign-input" placeholder="이름" name="name">
			</div>
				<label id="id-error" for="id"></label>
			
			<div>
				<input type="email" class="sign-input" placeholder="이메일" name="email">
			</div>
				<label id="email-error" for="email"></label>
				
			<div class="mt-4">
				<button class="btn-tree">S I G N  U P</button>
			</div>
			
			
			<div class="font-black py-3 mx-5">
				본인은 만 14세 이상이며, [이용약관 동의] 와 [개인정보 수집 및 이용 동의] 에 확인 하였으며, 동의합니다.
			</div>
			
			<div class="font-black py-3">
				@Pickles Corp. All right reserved.
			</div>
			
				<!-- <a href="<%=request.getContextPath()%>/">
				<button type="button" class="btn btn-outline-success btn-sm float-right mr-1">home</button></a>  -->
		</div>
	</form>
</body>
</html>
