<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h2>게시글</h2>
	<div>
		<table class="table">
			<tr>
				<th width="10%">분류</th>
				<th width="45%">제목</th>
				<th width="15%">작성자</th>
				<th width="20%">작성일</th>
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
</body>
</html>