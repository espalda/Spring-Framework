<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css?ver=1.1">
	<title>Home</title>
	<script>
		$(document).ready(function(){	//아이디 입력창에 마우스 커서가 자동으로 포커스 되는 기능 구현
			$('input[name=id]').focus();
		})
	</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<div class="container offset-4 col-4">
	<form method="post" action="<%=request.getContextPath()%>/signin">
		
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
					<button class="btn btn-success float-right">로그인</button>
				</div>
				</form>
				<a href="<%=request.getContextPath()%>/password/find"><button class="btn btn-success">비밀번호 찾기</button></a>
		</div>
		
	
	
</body>
</html>
