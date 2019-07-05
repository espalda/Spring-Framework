<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<script src="//code.jquery.com/jquery-3.3.1.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<title>로그인</title>
	<style>
	.container{
		border: 1px dashed slategray;
		border-radius: 8px;
		font-size: 15px;
		padding: 20px;
		margin-top: 50px;
	}
	.far.fa-kiss-wink-heart{
		color:lightblue;
	}


</style>
</head>
<body> 
	<form action="" method="post">
		<div class="container offset-4 col-4">
			<h3>로그인</h3>
			<div class="form-group">
				<label for="usr">Id:</label>
				<input type="text" class="form-control" id="usr" name="id">
			</div>
	
			<div class="form-group">
				<label for="pwd">Password:</label>
				<input type="password" class="form-control" id="pwd" name="pw">
			</div>
			
			<button type="submit" class="btn btn-primary float-right">Sign In</button>
			<i class="far fa-caret-square-up"></i>
		</div>
	</form>
</body>
</html>