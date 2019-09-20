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
	<form action="<%= request.getContextPath()%>/mail/mailSending">
			<div class="container-11">
			<h4>문의 메일 보내기</h4>
			<div class="container">
				<h2>Mail</h2>
				<p>FOR SPECIAL REQUESTS ORDERS</p>
					<table>
						<tr>
							<td>receiver</td>
							<td><input type="text" size="40" name="tomail"></td>
						</tr>
						<tr>
							<td>title</td>
							<td><input type="text" size="40" name="title"></td>
						</tr>
						<tr>
							<td>contents</td>
							<td><textarea rows="5" cols="78" name="contents"></textarea></td>
						</tr>
					</table>
					<button class="btn-raw">보내기</button>
			</div>
			</div>
		</form>
</body>
</html>