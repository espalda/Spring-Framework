<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<style>
	#signin label{
	color: #b30000;
	}
</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/signin" method="post" id="signin">
		<div class="container text-center">
		<p>로그인</p>
			<div>
				<input type="text" class="input" placeholder="아이디" name="id">
			</div>
				<label id="id-error" for="id"></label>

			<div>
				<input type="password" class="input" placeholder="비밀번호" name="pw">
			</div>
				<label id="pw-error" for="pw"></label>
	
				<button class="btn-tree d-block">로그인</button>
				<br>
				<i class="fas fa-caret-right"></i><a class="text-center" href="<%=request.getContextPath()%>/signup">회원가입을 하시려면 여기를 클릭하세요.</a><br>
				<i class="fas fa-caret-right"></i><a href="<%=request.getContextPath()%>/idFind">아이디 찾기</a><br>
				<i class="fas fa-caret-right"></i><a href="<%=request.getContextPath()%>/pwFind">비밀번호 찾기</a><br>
				
		</div>
	</form>
<script>
	$(document).ready(function(){
		/** 입력창에 마우스 커서가 자동으로 포커스 되는 기능 구현 */
		$('input[name=id]').focus();

		/** plug-in */
		$("#signin").validate({
			rules: {
			    id: {
			        required : true,
			        minlength : 5,
			        maxlength : 10,
			        regex: /^\w*$/
			    },
			    pw: {
			        required : true,
			        minlength : 1,
			        maxlength : 16,
			        regex: /^\w*$/
			    }
				},
			 messages : {
				 id: {
				     required : "아이디를 필수로 입력하세요.",
				     minlength : "최소 5 글자 이상이어야 합니다.",
				     maxlength : "최소 10 글자 이하이어야 합니다.",
				  	   regex : "아이디는 영문자, 영문자 숫자 조합만 가능합니다."
				 },
				 pw: {
				     required : "비밀번호를 필수로 입력하세요.",
				     minlength : "최소 8 글자 이상이어야 합니다.",
				     maxlength : "최소 16 글자 이하이어야 합니다.",
				     regex : "비밀번호는 영문자, 숫자, 특수문자 3가지 조합만 가능합니다."
				 },
			}
		});
	}) /** document.ready */
	$.validator.addMethod(
	    "regex",
	    function(value, element, regexp) {
	        var re = new RegExp(regexp);
	        return this.optional(element) || re.test(value);
	    },
	    "Please check your input."
	);
</script>
</body>
</html>
