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
		$(document).ready(function(){
			$('#pw1').change(function(){
				if(!checklength('#pw1',8,13)){
					alert('비밀번호 길이를 8~13자 사이로 입력하세요.');
				}
			})
			$('#pw2').change(function(){
				if(!equals('#pw1','#pw2')){
					alert('비밀번호가 일치하지 않습니다.');
				}else
					alert('비밀번호가 일치합니다.');
			})
		});
	
		function checklength(id,min,max){
			var length = $(id).val().length;
			if(length > max || length < min)
				return false;
			else return true;
		}
	
		function equals(sel1,sel2){
			if($(sel1).val() == $(sel2).val())
				return true;
					return false;
		}
	</script>
</head>
<body>
	<form method="post" action="">
		<div class="container offset-4 col-4">
			<h4 style="text-align: center;">회원가입</h4>
			<div class="row">
				<label class="col-4">아이디</label>
				<input type="text"class="form-control col-7" placeholder="아이디" name="id">
			</div>
			<div class="row">
				<label class="col-4">비밀번호</label>
				<input type="password"class="form-control col-7" placeholder="비밀번호" id="pw1" name="pw1">
			</div>
			<div class="row">
				<label class="col-4">비밀번호확인</label>
				<input type="password"class="form-control col-7" placeholder="비밀번호확인" id="pw2" name="pw2">
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