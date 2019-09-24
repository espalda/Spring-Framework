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
<h2>메일 보내기</h2>
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
	<button class="btn-raw">보내기</button>
</body>
</html>