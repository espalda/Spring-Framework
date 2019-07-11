<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	<table class="table">
		<tr>
			<th width="10%">제목</th>
			<th width="5%">작성자</th>
			<th width="10%">작성일</th>
			<th width="10%">조회수</th>
			<th width="40%">내용</th>
			<th width="10%">파일</th>
		</tr>
		<tr>
			<th>${board.title}</th>
			<th>${board.writer}</th>
			<th>${board.registered}</th>
			<th>${board.views}</th>
			<th>${board.contents}</th>
			<th>${board.file}</th>
		</tr>
	</table>
</body>
</html>