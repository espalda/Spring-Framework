<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script>
	$(document).ready(function(){
		/** 입력창에 마우스 커서가 자동으로 포커스 되는 기능 구현 */
		$('input[name=id]').focus();	
		
		/** validate(plug-in)의 양식이 맞으면 true, 다르면 false */
		$('.pop').click(function(){
			var test = $('#signup').valid();	
			if(!test){
				return false;
			}
			alert("회원가입이 완료되었습니다.");
			$('#signup').submit();
		});
		
		/** plug-in */
		$("#signup").validate({
			rules: {
			    id: {
			        required : true,
			        minlength : 5,
			        maxlength : 10,
			        regex: /^\w*$/
			    },
			    pw: {
			        required : true,
			        minlength : 1,
			        maxlength : 16,
			        regex: /^\w*$/
			    },
			    pw2: {
			        required : true,
			        equalTo : pw
			    },
			    name: {
			        required : true,
			        regex: /^[가-힣]{2,10}$/
			    },
			    phone: {
			        required : true,
			        regex: /^(010|011)-\d{4}-\d{4}$/
			    },
			    email: {
			        required : true,
			        email : true
			    }
			},
		   /** 규칙체크 실패시 출력될 메시지 */
		   messages : {
		       id: {
		           required : "아이디를 필수로 입력하세요.",
		           minlength : "최소 5 글자 이상이어야 합니다.",
		           maxlength : "최소 10 글자 이하이어야 합니다.",
		        	   regex : "아이디는 영문자, 영문자 숫자 조합만 가능합니다."
		       },
		       pw: {
		           required : "비밀번호를 필수로 입력하세요.",
		           minlength : "최소 8 글자 이상이어야 합니다.",
		           maxlength : "최소 16 글자 이하이어야 합니다.",
		           regex : "비밀번호는 영문자, 숫자, 특수문자 3가지 조합만 가능합니다."
		       },
		       pw2: {
		           required : "비밀번호 확인을 입력하세요.",
		           equalTo : "비밀번호가 일치하지 않습니다."
		       },
		       name: {
		           required : "이름을 필수로 입력하세요.",
		           regex : "이름은 한글로만 입력해주세요. 최소 2글자 이상"
		       },
		       phone: {
		           required : "전화번호를 필수로 입력하세요.",
		           regex : "전화번호는 숫자로만 입력해주세요."
		       },
		       email: {
		           required : "이메일을 필수로입력하세요.",
		           email : "메일규칙에 어긋납니다."
		       }
			}
		});
		
		/** ajax id 중복 검사 */
		$('input[name=id]').change(function(){
			var id = $('input[name=id]').val();	//id 유효성 검사
			$.ajax({
				async:false, /** 비동기식 */
				type:'POST',
				data:id,
				url:"<%=request.getContextPath()%>/checkId",
				dataType:"json",
				contentType:"application/json; charset=UTF-8",
				success : function(test){
					if(test.idCheck){
						$('#id-error').html("이미 존재하는 아이디 입니다.");
					}else{
						$('#id-error').html("가입 가능한 아이디 입니다.");
					}
				}
			});
		})
	})	/** document.ready */
	
	$.validator.addMethod(
	    "regex",
	    function(value, element, regexp) {
	        var re = new RegExp(regexp);
	        return this.optional(element) || re.test(value);
	    },
	    "Please check your input."
	);	/** plug-in 메서드 */
	
</script>

<style>
.sb{
padding: 15px 15px 0 15px;
}
#signup label{
color: #cc0000;
}
</style>

</head>
<body>
	<form action="<%=request.getContextPath()%>/signup" method="post" id="signup">
		<div class="container text-center"><br>
			<mark> pickles 에 오신것을 환영합니다.<br>
			지금 회원 가입하신 후 다양한 서비스를 만나보세요.</mark>
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
					<label id="name-error" for="name"></label>
					
				<div>
					<input type="text" class="input" placeholder="휴대폰" name="phone">
				</div>
					<label id="phone-error" for="phone"></label>
				
				<div>
					<input type="email" class="input" placeholder="이메일" name="email">
				</div>
					<label id="email-error" for="email"></label>
					
			<div class="sb">
				<button type="button" class="btn-tree pop">SIGN UP</button>
			</div>
			<div class="sb">
				<input type="checkbox" id="myCheck" onclick="myFunction()">

				<p id="text" style="display:none">개인정보 수집에 동의하셨습니다.</p>
				본인은 만 14세 이상이며, <a href="#">[이용약관 동의]</a> 와 <a href="#">[개인정보 수집 및 이용 동의]</a> 에 확인 하였으며, 동의합니다.
			</div>
			<div class="sb">
				@Pickles Corp. All right reserved.
			</div>
		</div>
	</form>
<script>
function myFunction() {
	  // Get the checkbox
	  var checkBox = document.getElementById("myCheck");
	  // Get the output text
	  var text = document.getElementById("text");

	  // If the checkbox is checked, display the output text
	  if (checkBox.checked == true){
	    text.style.display = "block";
	  } else {
	    text.style.display = "none";
	  }
	}
</script>
</body>
</html>
