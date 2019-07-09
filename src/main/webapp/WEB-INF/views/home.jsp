<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<title>Home</title>
	<style>
	.top-list{
		font-size: 11px;
		display: inline-block;
		padding: 3px 3px;
		margin-right: 3px;
	}
	.top-list a{
		text-decoration: none;
		color: black;
	}
	</style>
</head>
<body>
	<div class="container">
		<div class="top-list">
			<i class="fas fa-user-plus" style="color: navy"></i>
			<a href="<%=request.getContextPath()%>/signup">회원가입</a>
		</div>
		<div class="top-list">
			<i class="fas fa-user-circle" style="color: cornflowerblue"></i>
			<a href="<%=request.getContextPath()%>/signin">로그인</a>
		</div>
		<div class="top-list">
			<i class="fas fa-edit" style="color: lightcoral"></i>
			<a href="<%=request.getContextPath()%>/member/modify">회원수정</a>
		</div>
		<div class="top-list">
			<i class="fas fa-list" style="color: teal"></i>
			<a href="<%=request.getContextPath()%>/board/list">게시판</a>
		</div>
	</div>
</body>
</html>
