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
	<form method="post" action="<%=request.getContextPath()%>/signin">
		<div class="container col-4 shadow mt-4 py-3 clearfix">
			<h4 class="text-center">Login</h4>
			<hr>
				<div class="row border border-dark m-1">
					<label class="col-4 small">ID</label>
					<input type="text" class="col-7 border border-white" name="id">
				</div>
				<div class="row border border-dark m-1">
					<label class="col-4 small">Password</label>
					<input type="password" class="col-7 border border-white" id="pw" name="pw" style="border:none">
				</div>
				<div class="float-right mr-1">
					<a href="<%=request.getContextPath()%>/password/find">
					<button class="btn btn-outline-success btn-sm">Forgot password</button></a>
					<button class="btn btn-outline-success btn-sm">Sign In</button>
				</div>
				
		</div>
	</form>
	
</body>
</html>
