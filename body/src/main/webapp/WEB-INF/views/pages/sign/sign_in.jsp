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
.sign-01 input[type=text], input[type=password]  {
all: unset;
width: 300px;
height: 50px;
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
</style>

<div class="sign-01">
	<h1>SIGN-IN</h1>
	<label class="test">e-mail</label>
	<input type="text" id="email" placeholder="please, enter your e-mail"><br>
	<label class="test">password</label>
	<input type="password" id="pw" placeholder="please, enter your password"><br>
	<input type="button" value="login">
	<input type="checkbox" id="save_id"><label for="save_id">아이디 저장</label>
	
	<hr>
	<a href="<%=request.getContextPath()%>/pages/sign/find_id" ><span>이메일 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span>회원가입</span></a>
</div>