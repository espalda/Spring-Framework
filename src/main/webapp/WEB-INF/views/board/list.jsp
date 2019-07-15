<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>board-list</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<h1>게시판</h1>
		<div class="btn-group">
		  <a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-primary">목록</button></a>
		  <a href="<%=request.getContextPath()%>/board/register">
			 <button type="submit" class="btn btn-primary">글쓰기</button>
		  </a>
		</div>
	<table class="table">
		<tr>
			<th width="5%">번호</th>
			<th width="55%">제목</th>
			<th width="10%">작성자</th>
			<th width="20%">등록일</th>
			<th width="10%">조회수</th>
		</tr>
		<c:forEach var="board" items="${list}">
			<tr>
				<th>${board.num}</th>
				<th><a href="<%=request.getContextPath()%>/board/display?num=${board.num}">${board.title}</a></th>
				<th>${board.writer}</th>
				<th>${board.registered}</th>
				<th>${board.views}</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>