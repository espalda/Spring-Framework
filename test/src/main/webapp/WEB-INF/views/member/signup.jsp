<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>회원가입</title>
	<script>
	var isCheck = false;
	
	$(document).ready(function(){
		
		//중복검사를 클릭하면
		$('#dup').click(function(){
			var id = $('input[name=id]').val();
			
			//id를 서버에 전송
			$.ajax({
				async:true,	//비동기 방식 true: 동시 작업 처리, 동기화 방식 false: 순차적 작업 처리(일이 끝날때 까지 기다려야함)
				type:'POST',
				data:id,		//{'id':id} 중괄호는 여러개를 보낼때 사용하는 방식임
				url: "<%=request.getContextPath()%>"+"/dup",
				dataType:"json",
				contentType:"application/json; charset=UTF-8",
				success : function(aaa){
					if(!aaa){
						alert('회원 가입이 가능한 아이디입니다.');
						isCheck = true;
					}else{
						alert('사용할수 없는 아이디 입니다.')
						isCheck = false;
					}
				}
		});
	})
	
		$('input[name=id]').change(function(){
			isCheck = false;
		});
	})
	
	</script>
</head>
<body>
	<form method="post" action="" id="signup">
		<div class="container col-4 shadow mt-4 py-3 clearfix">
			<h4 class="text-center">Sign Up</h4>
			<hr>
			<div class="row border border-dark m-1">
				<label class="col-4 small">ID</label>
				<input type="text" class="col-7 border border-white" name="id">
			</div>
				
			<div>
				<button type="button" class="offset-4 btn btn-outline-success btn-sm col-5" id="dup">Check ID Duplication</button>
			</div>
			<div class="row border border-dark m-1">
				<label class="col-4 small">Password</label>
				<input type="password"class="col-7 border border-white" name="pw" id="pw">
			</div>
				
			<div class="row border border-dark m-1">
				<label class="col-4 small">Confirm Password</label>
				<input type="password"class="col-7 border border-white" name="pw2">
			</div>
				
			<div class="row border border-dark m-1">
				<label class="col-4 small">Gender</label>
				<div class="col-8">
					<label class="small mr-4">
						<input type="radio" class="" name="gender" value="M" checked>male
					</label>
					<label class="small">
						<input type="radio" class="" name="gender" value="F">female
					</label>
				</div>
			</div>
			<div class="row border border-dark m-1">
				<label class="col-4 small">Email</label>
				<input type="email" class="col-7 border border-white" name="email">
			</div>
				
			<div class="">
				<button class="btn btn-outline-success btn-sm float-right">Join us</button>
				<a href="<%=request.getContextPath()%>/">
				<button type="button" class="btn btn-outline-success btn-sm float-right mr-1">home</button>
				</a>
			
			</div>
	</div>
	</form>
</body>
</html>