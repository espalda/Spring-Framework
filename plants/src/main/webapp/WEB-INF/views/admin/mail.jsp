<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
label{
width: 50px;
}

textarea, input, input:hover, input.active{
outline: none;
border: 1px solid #b97f6d;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Mail</h2>
		<p>FOR SPECIAL REQUESTS ORDERS</p>
			<table>
				<tr>
					<td>reciever</td>
					<td><input type="text" size="40"></td>
				</tr>
				<tr>
					<td>title</td>
					<td><input type="text" size="40"></td>
				</tr>
				<tr>
					<td>contents</td>
					<td><textarea rows="5" cols="78"></textarea></td>
				</tr>
			</table>
			
			<div>
				<div>
					<label>받는사람</label>
					<input type="text" size="40">
				</div>
				<div>
					<label>제목</label>
					<input type="text" size="80">
				</div>
				<div class="c-1">
					<label>내 용</label>
					<textarea rows="5" cols="78"></textarea>
				</div>
			</div>
			<button class="btn-raw">S E N D</button>
	</div>
</body>
</html>