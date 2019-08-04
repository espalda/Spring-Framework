<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>게시글 수정</title>
	<style>
		.container{
		margin:60px;
		}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
	<h3>게시글내용</h3>
	<form method="post" action="<%=request.getContextPath()%>/board/modify">
	<input type="hidden" name="num" value="${board.num }">
	<div class="container">
		<div class="btn-group">
			<a href = "<%=request.getContextPath()%>/board/list">
			<button type="button" class="btn btn-outline-secondary">목록</button></a>
			<a href = "<%=request.getContextPath()%>/board/modify">
			<button type="submit" class="btn btn-outline-secondary">게시글 수정</button></a>
			<a href = "<%=request.getContextPath()%>/board/delete">
			<button type="button" class="btn btn-outline-secondary">게시글 삭제</button></a>
		</div>
		<div class="form-group">
			<label>제목</label>
			<input type="text" class="form-control" name="title" value="${board.title }">
		</div>
		<div class="form-group">
			<label>작성자</label>
			<input type="text" class="form-control" name="writer" value="${board.writer }" readonly>
		</div>
		<div class="form-group">
			<label>작성일</label>
			<input type="text" class="form-control" name="registered" value="${board.registered }" readonly>
		</div>
		<div class="form-group">
			<label>조회수</label>
			<input type="text" class="form-control" name="views" value="${board.views }" readonly>
		</div>
		<div class="form-group">
			<label>내용</label>
			<textarea rows="10" class="form-control" name="contents">${board.contents }</textarea>
		</div>
		<div class="form-group">
			<label>파일</label>
			<input type="text" class="form-control-file border" name="file" value="${board.file }">
		</div>
		<button type="submit" class="btn btn-outline-secondary">등록</button>
	</div>
	</form>
</body>
</html>