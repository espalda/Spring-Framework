<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
	
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
				if(test.idFind == null){
					$('.ctn').html("가입시 입력하신 아이디는 [ " + test.idFind + " ] 입니다.");
				}
			},
			error:function(){
				$('.ctn').html("존재 ㄴㄴ 아이디");
			}
		});
	});
})	/** document.ready */
</script>
<style>
.sb{
padding: 15px 15px 0 15px;
}
</style>
</head>
<body>
	<form action="" id="idFind">
		<div class="container text-center">
		<h2>Find Id</h2>
			<div>
				<input type="text" class="input" placeholder="이름" name="name" id="name">
			</div>

			<div>
				<input type="email" class="input" placeholder="이메일" name="email" id="email">
			</div>
			
			<div class="sb">
				<a href="<%=request.getContextPath()%>/pwFind">Find PASSWORD</a>
			</div>
			
			<div class="sb">
				<button type="button" class="btn-raw find">FIND ID</button>
			</div>
		
			<div class="sb ctn">
				가입 시 입력하신 아이디는 ${member.id} 입니다.
			</div>
		</div>
	</form>
			
</body>
</html>
