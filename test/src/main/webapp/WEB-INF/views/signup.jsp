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
	<script src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/additional-methods.js"></script>
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
		.error{
		color: red;
		padding: 0;
		}
	</style>
	<script>
	//-1 : 중복체크를 해야하는 경우.
	//0: 회원가입이 가능한 경우
	//1: 이미 회원이라 회원가입 불가능
	
	var isMember = -1;
	$(document).ready(function(){
		/*아이디 중복 검사를 통해 회원가입 가능한 아이디를 입력했더라도 이후에 아이디창을 통해 아이디 값을 바꾼다면 다시 중복검사를 해야하기 때문에
		isMember의 값을 -1로 설정한다 */
		$('input[name = id]').change(function(){
			isMember = -1;
		})
		$('#signup').submit(function(){
			if(!checkLength('#signup input[name=id]',5,13)){
				alert('아이디는 5~13자리입니다.');
				return false;
			}
			
			var regex = /^\w*(\d[A-z]|[A-z]\d)\w*$/;
			var id = $('input[name=id]').val();
			if(!regex.test(id)) {
			alert('아이디는 영문자와 숫자를 반드시 1개 이상 포함해야 합니다.');
			return false;
			}
			
			if(isMember == -1){
				alert('아이디 중복검사를 하세요');
				isCheck = false;
			}else if(isMember == 1){
				alert('이미 가입된 아이디 입니다.');
				return false;
			}
			else{
				alert('회원가입에 성공했습니다.');
				isCheck = false;
				return true;
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
					if(aaa.isMember){
						//회원가입 가능
						alert('사용할수 없는 아이디 입니다.');	//회원이 아니면 회원가입이 가능한 아이디 입니다 라고 출력
						isMember = 1;
					}
						//회원가입 불가
					else{
						alert('회원 가입이 가능한 아이디입니다.');
						isMember = 0;
						//isCheck = aaa.isMember;
				}
			}
		});
	})
	$("#signup").validate({
        rules: {
            id: {
                required : true,
                minlength : 8,
                maxlength : 13
            },
            pw: {
                required : true,
                minlength : 8,
                maxlength : 13,
                regex: /^(?=\w{8,20}$)\w*(\d[A-z]|[A-z]\d)\w*$/
            },
            pw2: {
                required : true,
                minlength : 8,
                equalTo : pw
            },
            email: {
                required : true,
                minlength : 2,
                email : true
            }
        },
        //규칙체크 실패시 출력될 메시지
        messages : {
            id: {
                required : "필수로입력하세요",
                minlength : "최소 {0}글자이상이어야 합니다",
                maxlength : "최대 {0}글자이하이어야 합니다"
            },
            pw: {
                required : "필수로입력하세요",
                minlength : "최소 {0}글자이상이어야 합니다",
                maxlength : "최대 {0}글자이하이어야 합니다",
                regex : "영문자, 숫자로 이루어져있으며 최소 하나이상 포함"
            },
            pw2: {
                required : "필수로입력하세요",
                equalTo : "비밀번호가 일치하지 않습니다."
            },
            email: {
                required : "필수로입력하세요",
                minlength : "최소 {0}글자이상이어야 합니다",
                email : "메일규칙에 어긋납니다"
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
	<form method="post" action="<%=request.getContextPath()%>/signup" id="signup">
		<div class="container offset-4 col-4">
			<h4 style="text-align: center;">회원가입</h4>
			<div class="row">
				<label class="col-4">아이디</label>
				<input type="text"class="form-control col-7" placeholder="아이디" name="id" id="id">
				<button type="button" class="btn btn-outline-dark offset-4 col-7" id="dup">아이디 중복 검사</button>
			</div>
			
			<div class="row">
				<label class="error offset-4 col-7" id="id-error" for="id"></label>
			</div>
			
			<div class="row">
				<label class="col-4">비밀번호</label>
				<input type="password"class="form-control col-7" placeholder="비밀번호" id="pw" name="pw">
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