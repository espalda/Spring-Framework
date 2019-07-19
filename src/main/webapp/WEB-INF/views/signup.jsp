<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="//code.jquery.com/jquery-3.4.1.js"></script>
	<title>회원가입</title>
<style>
	.container{
		border: 1px dashed slategray;
		border-radius: 8px;
		font-size: 12px;
		padding: 5px;
		margin-top: 20px;
	}
	.main{
		margin-top:50px;
	}
	.row{
		margin: 5px 0px;
	}
</style>
<script>
	function checkSame(sel1, sel2){
		var val1 = $(sel1).val();
		var val2 = $(sel2).val();
		if(val1 == val2)
			return true;
		return false;
	}
	
	function checkLength(sel,min,max){
		var val = $(sel).val();
		if(val.length >= min && val.length <= max )
			return true;
		return false;
	}

	var isCheck = false;
	
	$(document).ready(function(){
		$('#signup').submit(function(){
		if(!checkLength('#signup input[name=id]',5,13)){
			alert('아이디는 5~13자리입니다.');
			return false;
		}
		
		if(!isCheck){
			alert('아이디 중복검사를 하세요');
			isCheck = false;
			return false;
		}else{
			alert('회원가입에 성공했습니다.');
			isCheck = false;
			return true;
		}
			
		if(!checkLength('#signup input[name=pw]',8,13)){
			alert('비밀번호는 8~13자리입니다.')
			return false;
		}
		
		if(!checkSame('#signup input[name=pw]','#signup input[name=pw2]')){
			alert('비밀번호와 일치하지 않습니다.')
			return false;
		}
		
		if($('#signup input[type=email]').val().length == 0){
			alert('이메일을 입력해주세요.')
			return false;
		}
		
	})

	
	$('#dup').click(function(){
		var id = $('input[name=id]').val();	//id 유효성 검사
		$.ajax({
			async:true,
			type:'POST',
			data:id,
			url:"dup",
			dataType:"json",
			contentType:"application/json; charset=UTF-8",
			success : function(aaa){
				if(!aaa.isMember){
					alert('회원 가입이 가능한 아이디입니다.');	//회원이 아니면 회원가입이 가능한 아이디 입니다 라고 출력
					isCheck = true;}
				else{
					alert('사용할수 없는 아이디 입니다.')
					isCheck = false;}
			}
		});
	})
	$('input[name = id]').change(function(){
		isCheck = false;
	})
})
	</script>
</head>
<body>
	<form method="post" action="" id="signup">
		<div class="container offset-4 col-4">
			<h4 style="text-align: center;">회원가입</h4>
			<div class="row">
				<label class="col-4">아이디</label>
				<input type="text"class="form-control col-7" placeholder="아이디" name="id">
			</div>
			<div>
				<button type="button" class="btn btn-outline-success offset-4 col-7" id="dup">아이디 중복확인</button>
			</div>
			<div class="row">
				<label class="col-4">비밀번호</label>
				<input type="password"class="form-control col-7" placeholder="비밀번호" name="pw">
			</div>
			<div class="row">
				<label class="col-4">비밀번호확인</label>
				<input type="password"class="form-control col-7" placeholder="비밀번호확인" name="pw2">
			</div>
			<div class="row">
				<label class="col-4">성별</label>
				<div class="col-8">
					<label class="form-check-label col-3">
						<input type="radio" class="form-check-input" name="gender" value="M" checked>남성
					</label>
					<label class="form-check-label">
						<input type="radio" class="form-check-input" name="gender" value="F">여성
					</label>
				</div>
			</div>
			<div class="row">
				<label class="col-4">이메일</label>
				<input type="email"class="form-control col-7" placeholder="이메일" name="email">
			</div>
			<div class="offset-8 col-3 clearfix p-0">
				<button class="btn btn-primary float-right">가입</button>
			</div>
	</div>
	</form>
</body>
</html>