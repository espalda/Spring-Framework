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
	<script type="text/javascript">
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

	$(document).ready(function(){
		$('#btn').submit(function(){
			if(!checkLength($('input[name=oldPw]'),8,13)) {
				alert('기존 비밀번호를 알맞게 입력하세요');
				return false;
			}
			//checkLength($('input[name=pw]'),8,13) : 새비밀번호를 입력했다면 8~13자리이면 회원정보 수정해야함
			//$('input[name=pw]').val().length = 0) : 새 비밀번호를 입력하지 않았다면 회원 정보 수정해야함
			if(!checkLength($('input[name=pw]'),8,13) || $('input[name=pw]').val().length == 0){
				alert('비밀번호는 8~13자리를 입력하거나 비밀번호 수정을 원치 않으면 입력하지 마시오');
				return false;
			}
			if(!checkSame($('input[name=pw]').val(),$('input[name=pw2]').val())){
				alert('비밀번호와 일치하지 않습니다.');
				return false;
			}
			if($('input[name=email]').val().length == 0){
				alert('이메일을 입력해주세요.');
				return false;
			}
			alert('회원정보를 수정하였습니다');
				return true;
		})
		
		var success;
		if(${success ne null}){	//중괄호 안에서 비교해야한다.
			success = ${success};
		}
		if(${success ne null}){
			if(${success eq true}){
				alert('수정이 완료되었습니다');
			}
			else{
				alert('기본 비밀번호가 잘못됬습니다');
			}
		}
		$('body').keydown(function(e){
			if(e.which == 116){	//F5의 키값
				location.href = "<%=request.getContextPath()%>/member/modify";
			}
		})
	})
	</script>
	<title>test-회원정보수정</title>
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
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/member/modify">
		<div class="container offset-4 col-4">
			<h4 style="text-align: center;">${user.id}님의 회원수정</h4>
	
			<input type="hidden" class="form-control col-7" placeholder="아이디" name="id" value="${user.id}" readonly>
			
			<div class="row">
				<label class="col-4">기존 비밀번호</label>
				<input type="password"class="form-control col-7" placeholder="기존 비밀번호" id="oldPw" name="oldPw">
			</div>
			<div class="row">
				<label class="col-4">새 비밀번호</label>
				<input type="password"class="form-control col-7" placeholder="새 비밀번호" id="pw" name="pw">
			</div>
			<div class="row">
				<label class="col-4">새 비밀번호 확인</label>
				<input type="password"class="form-control col-7" placeholder="새 비밀번호 확인" id="pw2" name="pw2">
			</div>
			<div class="row">
				<label class="col-4">성별</label>
				<div class="col-8">
					<label class="form-check-label col-3">
						<input type="radio" class="form-check-input" name="gender" value="M" <c:if test="${user.gender eq 'M'}"> checked </c:if>>남성
					</label>
					<label class="form-check-label">
						<input type="radio" class="form-check-input" name="gender" value="F" <c:if test="${user.gender eq 'F'}"> checked </c:if>>여성
					</label>
				</div>
			</div>
			<div class="row">
				<label class="col-4">이메일</label>
				<input type="email"class="form-control col-7" placeholder="이메일" value = "${user.email }" name="email">
			</div>
			<div class="offset-8 col-3 clearfix p-0">
				<button class="btn btn-primary float-right" id="btn">수정</button>
			</div>
		</div>
	</form>
</body>
</html>