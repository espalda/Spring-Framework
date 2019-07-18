<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
	<title>Home</title>
	<script>
		$(document).ready(function(){	//아이디 입력창에 마우스 커서가 자동으로 포커스 되는 기능 구현
			$('input[name=id]').focus();
		})
	</script>
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
	.container{
		border: 1px dashed slategray;
		border-radius: 8px;
		font-size: 12px;
		padding: 5px;
		margin-top: 20px;
	}
	.main{
		margin-top:50px;
	}
	.row{
		margin: 5px 0px;
	}
	</style>
</head>
<body>
	<div class="container">
		<c:if	test="${user eq null }">
			<div class="top-list">
				<i class="fas fa-user-plus" style="color: navy"></i>
				<a href="<%=request.getContextPath()%>/signup">회원가입</a>
			</div>
		</c:if>
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

	<c:if test="${user ne null }">
	${user }
	</c:if>
	
	<form method="post" action="<%=request.getContextPath()%>/signin">
		<div class="container offset-4 col-4">
			<h4 style="text-align: center;">로그인</h4>
				<div class="row">
					<label class="col-4">아이디</label>
					<input type="text" class="form-control col-7" placeholder="아이디" name="id">
				</div>
				<div class="row">
					<label class="col-4">비밀번호</label>
					<input type="password"class="form-control col-7" placeholder="비밀번호" id="pw" name="pw">
				</div>
				<div class="offset-8 col-3 clearfix p-0">
					<button class="btn btn-primary float-right">로그인</button>
				</div>
		</div>
	</form>
</body>
</html>
