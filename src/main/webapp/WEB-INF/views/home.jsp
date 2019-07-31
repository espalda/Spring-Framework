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
		<div class="container col-3 shadow py-3 clearfix">
			<h4 style="text-align: center;">Login</h4>
				<div class="row m-1" style="border: 1px solid #101010;">
					<span class="small text-bottom col-3">ID</span>
					<input type="text" class="ml-5" name="id" style="border:none">
				</div>
				<div class="row m-1" style="border: 1px solid #101010;">
					<span class="small text-bottom col-3 ">Password</span>
					<input type="password" class="ml-5" id="pw" name="pw" style="border:none">
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
