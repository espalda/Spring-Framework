<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>로그인</h1>
<div>
	<label class="desc">이메일</label>
	<input type="text" id="email" />
</div>
<div>
	<label class="desc">비밀번호</label>
	<input type="password" id="pw" />
</div>
<input type="button" value="click" />

<div>
	<input type="checkbox" id="save_id"><label for="save_id">아이디 저장</label>
	<hr>
	<a href="<%=request.getContextPath()%>/pages/sign/find_id"><span>이메일 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/sign_up" />"><span><img src="https://img.icons8.com/small/16/000000/add-user-group-woman-woman.png"/>회원가입</span></a>
</div>