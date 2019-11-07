<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
th{
width: 100px;
}
</style>
</head>
<body>
<h2>메일 보내기</h2>
	 <form action="<%= request.getContextPath()%>/mail/mailSending"><br>
			<div class="text-center">
				<table>
					<tr>
						<th>받는 사람</th>
						<td><input type="text" size="40" name="tomail" class="input"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" size="40" name="title" class="input"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea rows="5" cols="50" name="contents" class="input"></textarea></td>
					</tr>
				</table>
				<button class="butt my-2">보내기</button>
		</div>
	</form>
</body>
</html>