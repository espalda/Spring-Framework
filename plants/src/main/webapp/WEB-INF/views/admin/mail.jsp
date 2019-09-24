<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h2>메일 보내기</h2>
	<table>
		<tr>
			<td>받는사람</td>
			<td><input type="text" class="input"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" class="input"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="5" class="input"></textarea></td>
		</tr>
	</table>
	<button class="btn-raw">보내기</button>
</body>
</html>