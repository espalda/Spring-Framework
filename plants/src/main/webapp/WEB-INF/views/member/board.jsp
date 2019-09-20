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
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach var="post" items="${boardList }">
				<tr>
					<td>${post.category }</td>
					<td><a href="<%=request.getContextPath()%>/board/display?num=${post.num}">${post.title }</a></td>
					<td>${post.member_id }</td>
					<td>${post.registered }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>