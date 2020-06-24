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
border-bottom: 1px solid black;
}
.sign-01 input[name=phone] {
all: unset;
width: 100px;
height: 50px;
border-bottom: 1px solid black;
text-align: center;
}
input[name=phone]::placeholder {
text-align: center;
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
	<h1>FIND E-MAIL</h1>
	<label class="test">name</label>
	<input type="text" id="name" placeholder="please, enter your name"><br>
	<label class="test">phone</label>
	<input type="text" id="phone" name="phone" placeholder="please"><span> - </span>
	<input type="text" id="phone" name="phone" placeholder="enter your"><span> - </span>
	<input type="text" id="phone" name="phone" placeholder="phone number">
	<input type="button" value="get email">
	<hr>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span>회원가입</span></a>
</div>
