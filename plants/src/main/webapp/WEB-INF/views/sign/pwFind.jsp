<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
	/** id 입력창에 마우스 커서가 자동 포커스 기능 */
	 $(document).ready(function(){
		$('input[name=id]').focus();
	})
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
})
</script>
<style>
.sb{
padding: 15px 15px 0 15px;
}
</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/password/send" id="pwFind">
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
				<button type="button" class="btn-raw find">FIND PASSWORD</button>
			</div>
			
			<div class="sb ctn">
				입력하신 이메일로 비밀번호가 전송되었습니다.
			</div>
		</div>
	</form>
</body>
</html>
