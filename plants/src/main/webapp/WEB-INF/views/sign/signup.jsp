<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<script>
	$(document).ready(function(){
		$("form").validate({
			rules: {
			    id: {
			        required : true,
			        minlength : 5,
			        maxlength : 10,
			        regex: /^\w*$/
			    },
			    pw: {
			        required : true,
			        minlength : 8,
			        maxlength : 16,
			        regex: /^\w*(\d[A-z]|[A-z]\d)\w*$/
			    },
			    pw2: {
			        required : true,
			        equalTo : pw
			    },
			    name: {
			        required : true,
			        regex: ^[가-힣]{2,10}/
			    },
			    phone: {
			        required : true,
			        regex: ^(010|011)-\d{4}-\d{4}$
			    },
			    email: {
			        required : true,
			        email : true
			    }
			},
	        //규칙체크 실패시 출력될 메시지
	       messages : {
	           id: {
	               required : "아이디를 필수로 입력하세요",
	               minlength : "최소 {5} 글자 이상이어야 합니다",
	               maxlength : "최소 {10} 글자 이하이어야 합니다",
	            	   regex : "아이디는 영문자, 숫자로 이루어져있으며 최소 하나이상 포함"
	           },
	           pw: {
	               required : "비밀번호를 필수로 입력하세요",
	               minlength : "최소 {8} 글자 이상이어야 합니다",
	               maxlength : "최소 {16} 글자 이하이어야 합니다",
	               regex : "비밀번호는 영문자, 숫자로 이루어져있으며 최소 두개 이상 포함"
	           },
	           pw2: {
	               required : "비밀번호 확인을 입력하세요",
	               equalTo : "비밀번호가 일치하지 않습니다."
	           },
	           name: {
	               required : "이름을 필수로 입력하세요",
	               regex : "이름은 한글로만 입력해주세요. 최소 2글자 이상"
	           },
	           phone: {
	               required : "전화번호를 필수로 입력하세요",
	               regex : "비밀번호는 영문자, 숫자로 이루어져있으며 최소 두개 이상 포함"
	           },
	           email: {
	               required : "이메일을 필수로입력하세요",
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
	<form action="<%=request.getContextPath()%>/signup" method="post" id="signup">
		<div class="container text-center">
			<h2>Sign Up</h2>
				<div>
					<input type="text" class="input" placeholder="아이디" name="id">
				</div>
					<label id="id-error" for="id"></label>
	
				<div>
					<input type="password" class="input" placeholder="비밀번호" name="pw" id="pw">
				</div>
					<label id="pw-error" for="pw"></label>
					
				<div>
					<input type="password" class="input" placeholder="비밀번호 확인" name="pw2">
				</div>
					<label id="pw2-error" for="pw2"></label>
				
				<div>
					<input type="text" class="input" placeholder="이름" name="name">
				</div>
					<label id="id-error" for="id"></label>
					
				<div>
					<input type="text" class="input" placeholder="휴대폰" name="phone">
				</div>
					<label id="phone-error" for="phone"></label>
				
				<div>
					<input type="email" class="input" placeholder="이메일" name="email">
				</div>
					<label id="email-error" for="email"></label>
				
					<button class="btn-tree">SIGN UP</button>
			
			<div>
				본인은 만 14세 이상이며, [이용약관 동의] 와 [개인정보 수집 및 이용 동의] 에 확인 하였으며, 동의합니다.
			</div>
			
			<div>
				@Pickles Corp. All right reserved.
			</div>
			
		</div>
	</form>
</body>
</html>
