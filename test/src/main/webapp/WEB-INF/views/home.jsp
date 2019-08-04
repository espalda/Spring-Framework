<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>test-Home</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
	<div class="container offset-4 col-4">
	<form method="post" action="">
			<div class="row">
				<label class="col-4"></label>
				<input type="text"class="form-control col-7" placeholder="아이디" name="id">
			</div>
			<div class="row">
				<label class="col-4"></label>
				<input type="password"class="form-control col-7" placeholder="비밀번호" id="pw" name="pw">
			</div>
			<div class="offset-8 col-3 clearfix p-0">
				<button class="btn btn-primary float-right">로그인</button>
			</div>
			</form>
			<a href="<%=request.getContextPath()%>/password/find">
			<button class="btn btn-outline-dark float-right">비밀번호 찾기</button></a>
	</div>
	
	
</body>
</html>