<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
input{
all:unset;
}
th{
width: 150px;
background-color: #ededed;
}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/member/profile" method="post" id="modify">
<div class="container modify">
<h2>회원 정보</h2>
    <table class="table table-borderless">
    	<tr>
    		<th>아이디</th>
    		<td><input type="text" placeholder="아이디" name="id" value="${login.id }" readonly></td>
    	</tr>
    	<tr>
    		<th>등급</th>
    		<td><input type="text" placeholder="등급" name="grade" value="${login.grade }" readonly></td>
    	</tr>
    	<tr>
    		<th>이름</th>
    		<td><input type="text" placeholder="이름" name="name" value="${login.name }" readonly></td>
    	</tr>
    	<tr>
    		<th>비밀번호</th>
    		<td><input type="password" placeholder="비밀번호" name="pw" id="pw"><br>
    			 <label id="pw-error" for="pw"></label>
    		</td>
    	</tr>
    	<tr>
    		<th>비밀번호 확인</th>
    		<td><input type="password" placeholder="비밀번호 확인" name="pw2"><br>
    			 <label id="pw2-error" for="pw2"></label>
    		</td>
    	</tr>
    	<tr>
    		<th>휴대폰</th>
    		<td><input type="text" placeholder="휴대폰" name="phone" value="${login.phone }"><br>
    			 <label id="phone-error" for="phone"></label>
    		</td>
    	</tr>
    	<tr>
    		<th>이메일</th>
    		<td><input type="email" placeholder="이메일" name="email" value="${login.email }"><br>
    			 <label id="email-error" for="email"></label>
    		</td>
    	</tr>
    </table>
			<button type="button" class="butt modi">수정</button>
			<a href="<%=request.getContextPath()%>/member/delete?id=${login.id}">
			<button type="button" class="butt delete">탈퇴</button></a>
	</div>
</form>
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