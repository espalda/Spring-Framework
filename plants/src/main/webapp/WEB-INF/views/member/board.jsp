<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="text-center">
	<!-- member-board -->
		<h2>My Board</h2>
		<div>
			<table class="table">
				<tr>
					<th width="5%"><input type="checkbox"></th>
					<th width="10%">분류</th>
					<th width="40%">제목</th>
					<th width="10%">작성자</th>
					<th width="15%">작성일</th>
				</tr>
				<c:forEach var="post" items="${boardList }">
				<tr>
					<td><input type="checkbox"></td>
					<td>${post.category }</td>
					<td>${post.title }</td>
					<td>${post.member_id }</td>
					<td>${post.registered }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>