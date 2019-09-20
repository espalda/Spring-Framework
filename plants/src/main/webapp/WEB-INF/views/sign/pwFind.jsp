<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.sb{
padding: 15px 15px 0 15px;
}
.ss{
margin-bottom: 10px;
}
</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/password/send" id="pwFind">
		<div class="container text-center">
		<h2>비밀번호 찾기</h2>
			<div class="ss">
				<input type="text" class="input" placeholder="아이디" name="id">
			</div>
				
			<div class="ss">
				<input type="text" class="input" placeholder="이름" name="name">
			</div>

			<div class="ss">
				<input type="email" class="input" placeholder="이메일" name="email" id="email">
			</div>
			<div class="sb">
				<button type="button" class="btn-raw find">비밀번호 찾기</button>
			</div>
			<div class="sb">
				<i class="fas fa-caret-right"></i><a href="<%=request.getContextPath()%>/idFind">아이디 찾기</a>
			</div>
			
			<div class="sb ctn">
			</div>
		</div>
	</form>
<script>
	/** id 입력창에 마우스 커서가 자동 포커스 기능 */
	$('input[name=id]').focus();

	/** 비밀번호 찾기 기능 */
	$('.find').click(function(){
		var id = $('input[name=id]').val();
		var name = $('input[name=name]').val();
		var email = $('input[name=email]').val();
		$.ajax({
			async:true,
			type:'POST',
			data:{'id':id, 'name':name, 'email':email},
			url:"<%=request.getContextPath()%>/findPw",
			dataType:"json",
			/* contentType:"application/json; charset=UTF-8", */
			success : function(test){
				if(test.pwFind != ""){
					$('.ctn').html("가입시 입력하신 이메일 [ " + test.pwFind + " ] 로 임시 비밀번호가 발급되었습니다.");
				}else{
					$('.ctn').html("존재하지 않는 정보입니다.");
				}
			},
			error:function(request,status,error){
				console.log( request.responseText );
				$('.ctn').html("존재 ㄴㄴ 정보");
			}
		});
	});
</script>
</body>
</html>
