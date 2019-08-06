<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<style type="text/css">
	.contents{
		border: 1px solid gray;
		border-radius: 10px;
		padding : 10px;
		margin-bottom : 10px;
	}
	</style>
<body>
	<div style="min-height:561px;">
	<h4 class="my-3">게시글 내용</h4>
		<div class="form-group">
  			<input type="text" class="form-control" name="title" value=${board.title } readonly>
		</div>
		
		<div class="form-group">
  			<input type="text" class="form-control" name="writer" value="${board.writer }" readonly>
		</div>
		
		<div class="form-group">
  			<input type="text" class="form-control" name="views" value=${board.views } readonly>
		</div>
		
		<div class="form-group">
  			<input type="text" class="form-control" name="registered" value=${board.registered } readonly>
		</div>
		
		<div class="contents">
			${board.contents}
		</div>
		
		<div class="form-group">
  			<input type="file" class="form-control" name="file" value=${board.file }>
		</div>
		
		<a href="<%=request.getContextPath()%>/board/list?&page=${cri.page}&type=${cri.type}&search=${cri.search}">
		<button class="btn btn-outline-dark btn-sm">목록</button></a>
		<c:if test="${user.id eq board.writer }"><!-- 내가 작성자일 때 -->
		<a href="<%=request.getContextPath()%>/board/modify?num=${board.num }&page=${cri.page}&type=${cri.type}&search=${cri.search}">
		<button class="btn btn-outline-dark btn-sm">수정</button></a>
		</c:if>
	</div>
		
</body>
</html>