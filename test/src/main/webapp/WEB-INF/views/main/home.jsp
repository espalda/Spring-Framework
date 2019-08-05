<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
	<style>
	.login-box{
	border: 1px solid black;
	width: 400px;
	height: 200px;
	margin: 50px auto 0;
	padding: 20px;
	}
	</style>
</head>
<div style="height: 600px">
	<div class="login-box">
	<form method="post" action="<%=request.getContextPath()%>/">
		<div class="form-group">
		  <input type="text" placeholder="아이디" class="form-control" name="id">
		</div>
		<div class="form-group">
		  <input type="password" placeholder="비밀번호" class="form-control" name="pw">
		</div>
		<button class="btn btn-outline-info col-12">로그인</button>
	</form>
	</div>
</div>

