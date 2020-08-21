<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sign-01">
	<h1>비밀번호 찾기</h1>
	<h6 class="text-center">가입 시 입력 하신 메일로 임시 비밀번호가 발송됩니다.</h6>
	<label class="desc">이름</label>
	<input type="text" id="name" /><br />
	<label class="desc">이메일</label>
	<input type="text" id="email" />
	<br />
	<input type="button" value="get password" />
	<hr>
	<a href="<%=request.getContextPath()%>/pages/sign/find_id"><span>이메일 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span><img src="https://img.icons8.com/small/16/000000/add-user-group-woman-woman.png"/>회원가입</span></a>
</div>
