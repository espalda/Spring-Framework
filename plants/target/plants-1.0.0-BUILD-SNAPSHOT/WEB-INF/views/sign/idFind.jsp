<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.ss{
margin-bottom: 10px;
}
</style>
</head>
<body>
	<form action="" id="idFind">
		<div class="container text-center">
		<br>
		<h2>아이디 찾기</h2>
			<div class="ss">
				<input type="text" class="input" placeholder="이름" name="name" id="name">
			</div>

			<div class="ss">
				<input type="email" class="input" placeholder="이메일" name="email" id="email">
			</div>
			<div class="sb">
				<button type="button" class="butt my-2 find">아이디 찾기</button>
			</div>
			<div class="sb ctn">
			</div>
			<div class="sb">
				<i class="fas fa-caret-right"></i><a href="<%=request.getContextPath()%>/pwFind">비밀번호 찾기</a>
			</div>
		</div>
	</form>
<script>
	/** id 입력창에 마우스 커서가 자동 포커스 기능 */
	$('input[name="name"]').focus();
	
	/** 아이디 찾기 기능 */
	$('.find').click(function(){
		var name = $('input[name=name]').val();
		var email = $('input[name=email]').val();
		$.ajax({
			async:true,
			type:'POST',
			data:{'name':name, 'email':email},
			url:"<%=request.getContextPath()%>/findId",
			dataType:"json",
			contentType:"application/json; charset=UTF-8",
			success : function(test){
				if(test.idFind != null){
					$('.ctn').html("가입시 입력하신 아이디는 [ " + test.idFind + " ] 입니다.");
				}else{
					$('.ctn').html("존재하지 않는 아이디입니다.");
				}
			},
			error:function(request,status,error){
				console.log( request.responseText );
				$('.ctn').html("입력하신 정보를 다시한번 확인해 주세요.");
			}
		});
	});
</script>	
</body>
</html>
