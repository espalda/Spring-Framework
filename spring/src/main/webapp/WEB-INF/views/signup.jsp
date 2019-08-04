<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="//code.jquery.com/jquery-3.4.1.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/additional-methods.js"></script>
	<title>회원가입</title>
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
		if(!checkLength('#signup input[name=id]',5,10)){
			alert('아이디는 5~13자리입니다.');
			return false;
		}
		
		//정규표현식
		var regex = /^\w*(\d[A-z]|[A-z]\d)\w*$/;
		var id = $('input[name=id]').val();
		if(!regex.test(id)) {
		alert('아이디는 영문자와 숫자를 반드시 1개 이상 포함해야 합니다.');
		return false;
		}
		
		
		if(!isCheck){
			alert('아이디 중복검사를 하세요');
			isCheck = false;
			return false;
		}
		
		else{
			alert('회원가입에 성공했습니다.');
			isCheck = false;
			return true;
		}
		
		if(!checkLength('#signup input[name=pw]',8,13)){
			alert('비밀번호는 8~13자리입니다.');
			return false;
		}
		if(!checkSame('#signup input[name=pw]','#signup input[name=pw2]')){
			alert('비밀번호와 일치하지 않습니다.');
			return false;
		}
		if($('#signup input[type=email]').val().length == 0){
			alert('이메일을 입력해주세요.');
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
	
	//플러그인
	$("form").validate({
		rules: {
		    id: {
		        required : true,
		        minlength : 5,
		        maxlength : 10,
		        regex: /^\w*(\d[A-z]|[A-z]\d)\w*$/
		    },
		    pw: {
		        required : true,
		        minlength : 8,
		        maxlength : 20,
		        regex: /^\w*(\d[A-z]|[A-z]\d)\w*$/
		    },
		    pw2: {
		        required : true,
		        equalTo : pw
		    },
		    email: {
		        required : true,
		        email : true
		    }
		},
        //규칙체크 실패시 출력될 메시지
       messages : {
           id: {
               required : "must be filled",
               minlength : "Make sure it's at least {0} characters",
               maxlength : "Make sure it's at least {0} characters",
               regex : "Make sure it's at least 5 characters OR at least 10 characters including a number and a lowercase letter"
           },
           pw: {
               required : "must be filled",
               minlength : "Make sure it's at least {0} characters",
               maxlength : "Make sure it's at least {0} characters",
               regex : "Make sure it's at least 8 characters OR at least 20 characters including a number and a lowercase letter"
           },
           pw2: {
               required : "must be filled",
               equalTo : "Password does not match"
           },
           email: {
               required : "must be filled",
               email : "Email is invalid"
           }
    		}
		});
	})
	$.validator.addMethod(
	    "regex",
	    function(value, element, regexp) {
	        var re = new RegExp(regexp);
	        return this.optional(element) || re.test(value);
	    },
	    "Please check your input."
	);
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
				<label id="id-error" class="offset-4 col-7 p-0 small text-success error" for="id"></label>
	<!-- 	<div>
				<button type="button" class="offset-4 btn btn-outline-success btn-sm col-5" id="dup">Check ID Duplication</button>
			</div> -->
			<div class="row border border-dark m-1">
				<label class="col-4 small">Password</label>
				<input type="password"class="col-7 border border-white" name="pw" id="pw">
			</div>
				<label id="pw-error" class="offset-4 col-7 p-0 small text-success error" for="pw"></label>
			<div class="row border border-dark m-1">
				<label class="col-4 small">Confirm Password</label>
				<input type="password"class="col-7 border border-white" name="pw2">
			</div>
				<label id="pw2-error" class="offset-4 col-7 p-0 small text-success error" for="pw2"></label>
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
				<label id="email-error" class="offset-4 col-7 p-0 small text-success error" for="email"></label>
			<div class="">
				<button class="btn btn-outline-success btn-sm float-right">Join us</button>
				<a href="<%=request.getContextPath()%>/">
				<button type="button" class="btn btn-outline-success btn-sm float-right mr-1">home</button></a>
			
			</div>
	</div>
	</form>
</body>
</html>