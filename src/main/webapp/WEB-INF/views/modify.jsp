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
	<title>회원수정</title>
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
	<form method="get" action="">
	<div class="container offset-4 col-4">
	<h3>회원정보 수정</h3>
		<div class="form-group">
			<label for="usr">아이디:</label>
			<input type="text" class="form-control" id="usr" name="id">
			</div>
	
		<div class="form-group">
			<label for="pwd">기존 비밀번호:</label>
			<input type="password" class="form-control" id="pwd" name="pw">
		</div>
		
		<div class="form-group">
			<label for="pwd">새 비밀번호:</label>
			<input type="password" class="form-control" id="pwd" name="pw">
		</div>

		<div class="form-group">
			<label for="pwd">새 비밀번호 확인:</label>
			<input type="password" class="form-control" id="pwd" name="">
		</div>

		<div class="option">
			<label for="pwd">성별:</label>
			<div class="form-check">
					<label class="form-check-label">
						<input type="radio" class="form-check-input" name="gender" value="M" checked>male
					</label>
				</div>

			<div class="form-check">
				<label class="form-check-label">
					<input type="radio" class="form-check-input" name="gender" value="F">female
				</label>
			</div>
			</div>
		<div class="form-group">
				<label for="email">E-mail:</label>
				<input type="email" class="form-control" id="email" name="email">
		</div>
		<button type="submit" class="btn btn-primary float-right">Modify</button>
		<i class="far fa-caret-square-up"></i>
		
	</div>
	</form>
</body>
</html>