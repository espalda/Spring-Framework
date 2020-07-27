<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.sign-01 {
margin: 0 auto;
width: 500px;
padding: 30px;
}
.sign-01 h1 {
padding: 10px;
font-size: 30px;
}
.test {
width: 100px;
text-align: center;
font-size: 15px;

}
.sign-01 input[type=text] {
all: unset;
width: 300px;
height: 50px;
text-align: center;
font-weight: bold;
border-bottom: 1px solid black;
}
.sign-01 input[type=button] {
width: 400px;
height: 50px;
border: 1px solid black;
margin: 30px;
font-size: 20px;
}
.sign-01 input[type=checkbox] {
vertical-align: middle;
margin-right: 5px;
}

.sign-01 input[name=email], select {
width: 100px;
}
input[name=email]::placeholder {
text-align: center;
}
</style>

<div class="sign-01">
	<h1>비밀번호 찾기</h1>
	<p>가입시 입력하신 메일로 임시 비밀번호가 발송됩니다.</p>
	<label class="test">name</label>
	<input type="text" id="name" placeholder="please, enter your name"><br>
	<label class="test">email</label>
	<input type="text" id="email" name="email" placeholder="please, enter"><span> @ </span>
	<input type="text" id="email2" name="email" placeholder="your email">
	<select id="kind_addr">
		<option value="">직접입력</option>
		<option value="naver.com">네이버</option>
		<option value="nate.com">네이트</option>
		<option value="gmail.com">지메일</option>
		<option value="daum.net">다음</option>
		<option value="kakao.com">카카오</option>
	</select>
	<br>
	<input type="button" value="get password">
	<hr>
	<a href="<%=request.getContextPath()%>/pages/sign/find_id" ><span>이메일 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span>회원가입</span></a>
</div>

<script>
	$('#kind_addr').change(function(){
		var email = $(this).val();
		$('#email2').val(email);
		if( $('#email2').val() == ''){
			$('#email2').attr('readonly', false);
		}
		if( $('#email2').val() != '' ) {
			$('#email2').attr('readonly', true);
		}
	})
</script>