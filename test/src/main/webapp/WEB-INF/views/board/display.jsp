<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>게시글</title>
	<style>
		.container{
		margin:0 60px;
		}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
	<span>📄POST</span>
	${user} 
	<div class="container">
	<div class="btn-group float-right">
		<!-- *목록으로 가는 버튼과 게시글 등록 버튼은 게시글번호를 가져올 필요가 없다. -->
		<a href="<%=request.getContextPath()%>/board/list?page=${cri.page}&type=${cri.type}&search=${cri.search}&perPageNum=${cri.perPageNum}"><button type="button" class="btn btn-outline-secondary">목록</button></a>
		<a href="<%=request.getContextPath()%>/board/register"><button type="button" class="btn btn-outline-secondary">게시글 등록</button></a>
		<c:if test="${user.id eq board.writer }">
		<a href="<%=request.getContextPath()%>/board/modify?num=${board.num}"><button type="button" class="btn btn-outline-secondary">게시글 수정</button></a>
		<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"><button type="button" class="btn btn-outline-secondary">게시글 삭제</button></a>
		</c:if>
	</div>
	<div class="form-group">
		<label>제목</label>
		<input type="text" class="form-control" value="${board.title }" readonly>
	</div>
	<div class="form-group">
		<label>작성자</label>
		<input type="text" class="form-control" value="${board.writer }" readonly>
	</div>
	<div class="form-group">
		<label>작성일</label>
		<input type="text" class="form-control" value="${board.registered }" readonly>
	</div>
	<div class="form-group">
		<label>조회수</label>
		<input type="text" class="form-control" value="${board.views }" readonly>
	</div>
	<div class="form-group">
		<label>내용</label>
		<textarea rows="10" class="form-control" readonly>${board.contents }</textarea>
	</div>
	<div class="form-group">
		<label>파일</label>
		<input type="text" class="form-control" value="${board.file }" readonly>
	</div>
</div>
</body>
</html>