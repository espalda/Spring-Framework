<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h2>게시글 관리</h2>
	<table class="table table-hover">
		<tr>
			<th>게시글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="board" items="${boardList }">
		<tr>
			<td>${board.num}</td>
			<td><a href="<%=request.getContextPath()%>/board/display?num=${board.num}">${board.title}</a></td>
			<td>${board.member_id}</td>
			<td>${board.registered}</td>
			<td>${board.views}</td>
			<!-- <td>
				<select name="aaa">
					<option value="num=${board.num }&valid=D&page=${pageMaker.criteria.page}" <c:if test="${board.valid eq 'D'}">selected</c:if>>Delete</option>
					<option value="num=${board.num }&valid=I&page=${pageMaker.criteria.page}" <c:if test="${board.valid eq 'I'}">selected</c:if>>valid</option>
				</select>
			</td> -->
		</tr>
		</c:forEach>
	</table>		
</body>
</html>