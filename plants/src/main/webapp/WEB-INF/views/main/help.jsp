<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.container{
width: 600px;
	background-image: url("<%=request.getContextPath()%>/resources/img/back-2.jpg");
}
th{
width: 100px;
}
h4{
display: inline-block;
margin-right: 50px;
}
</style>
</head>
<body>
	<form action="<%= request.getContextPath()%>/mail/mailSending"><br>
		<div class="container text-center">
			<h4>자주 묻는 질문</h4>
			<h4>교환 환불 문의</h4>
			<h4>문의 메일</h4>
			<table>
				<tr>
					<th>받는 사람</th>
					<td><input type="text" size="40" name="tomail" value="espalda@naver.com"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="40" name="title"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="5" cols="50" name="contents"></textarea></td>
				</tr>
			</table>
			<button class="butt my-2">보내기</button>
		</div>
	</form>
</body>
</html>