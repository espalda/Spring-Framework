<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.modify input{
text-align: center;
color: blue;
}
</style>
</head>
<body>
<div class="container">
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">회원 정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">회원 수정</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
    <!-- * 회원 정보 -->
		<div class="text-center">
			<div>
				<table class="table table-borderless text-center">
					<tr>
						<td>${login.id} 님 환영합니다.</td>
					</tr>
					<tr>
						<td>회원님의 등급은 [💗${login.grade }💗] 입니다.</td>
					</tr>
					<tr>
						<td>적립금 : ${login.point }</td>
					</tr>
					<tr>
						<td>보유 쿠폰 : count</td>
					</tr>
				</table>
			</div>
		
    </div>
    </div>
    
    <!-- * 회원 등급 -->
    <div id="menu1" class="container tab-pane fade"><br>
    	<form action="<%=request.getContextPath()%>/member/profile" method="post" id="modify">
			<div class="modify">
				<div>
					<span>아이디</span>
					<input type="text" placeholder="아이디" name="id" value="${login.id }" readonly>
				</div>
				
				<div>
					<span>이름</span>
					<input type="text" placeholder="이름" name="name" value="${login.name }" readonly>
				</div>
				
				<div>
					<span>바밀번호</span>
					<input type="password" placeholder="비밀번호" name="pw" id="pw">
				</div>
					<label id="pw-error" for="pw"></label>
					
				<div>
					<span>비밀번호 확인</span>
					<input type="password" placeholder="비밀번호 확인" name="pw2">
				</div>
					<label id="pw2-error" for="pw2"></label>
					
				<div>
					<span>휴대폰</span>
					<input type="text" placeholder="휴대폰" name="phone" value="${login.phone }">
				</div>
					<label id="phone-error" for="phone"></label>
					
				<div>
					<span>이메일</span>
					<input type="email" placeholder="이메일" name="email" value="${login.email }">
				</div>
					<label id="email-error" for="email"></label>
			</div>
	
				<button type="button" class="btn-tree modi">UPDATE</button>
				<a href="<%=request.getContextPath()%>/member/delete?id=${login.id}">
				<button type="button" class="btn-gray delete">WITHDRAW</button></a>
				<p>회원탈퇴시 알림창 문구 및 비밀번호 다시 확인 창 미구현</p>
			</form>
		</div>
	</div>
</div>
	
<script>
$(document).ready(function(){
	/** validate(plug-in)의 양식이 맞으면 true, 다르면 false */
	$('.modi').click(function(){
		var test = $('#modify').valid();	
		if(!test){
			return false;
		}
		alert("회원 정보가 수정되었습니다.");
		$('#modify').submit();
	});
	
	/** plug-in */
	$("#modify").validate({
		rules: {
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
		    phone: {
		        required : true,
		        regex: /^(010|011)-\d{4}-\d{4}$/
		    },
		    email: {
		        required : true,
		        email : true
		    }
		},
	   /* 규칙체크 실패시 출력될 메시지 */
	   messages : {
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
	
}) /** document.ready */

$.validator.addMethod(
	    "regex",
	    function(value, element, regexp) {
	        var re = new RegExp(regexp);
	        return this.optional(element) || re.test(value);
	    },
	    "Please check your input."
	);
</script>
</body>
</html>