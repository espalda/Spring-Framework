<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>board-contents</title>
</head>
<body class="clear-fix" style="margin: 0 auto;">
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<div class="container center-block">
		<div class="form-group col-8 m-auto">
		 <label>제목</label>
		  <input type="text" class="form-control" name="title" value="${board.title}" readonly>
		</div>
		<div class="row col-auto">
			<div class="form-group col-2">
			  <label>작성자</label>
			  <input type="text" class="form-control" name="writer" value="${board.writer}" readonly>
			</div>
			<div class="form-group col-2">
			  <label>작성일</label>
			  <input type="text" class="form-control" name="registered" value="${board.registered}" readonly>
			</div>
			<div class="form-group col-1">
			  <label>조회수</label>
			  <input type="text" class="form-control" name="views" value="${board.views}" readonly>
			</div>
		</div>
		<div class="form-group col-8">
		  <label>내용</label>
		  <textarea rows="10" class="form-control" name="contents" readonly>${board.contents}</textarea>
		</div>
		<div class="form-group col-8">
		  <label>첨부파일</label>
		  <a href="<%=request.getContextPath()%>/board/download?fileName=${board.file}">
		  		<input type="text" class="form-control" name="file2" value="${board.fileName}" readonly>
		  </a>
		</div>
	
		<div class="btn-group col-auto">
			<a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-outline-success">목록</button></a>
			<a href="<%=request.getContextPath()%>/board/register"><button type="submit" class="btn btn-outline-success">글쓰기</button></a>
			
			<c:if test="${user.id eq board.writer }">
			<a href="<%=request.getContextPath()%>/board/modify?num=${board.num}"><button type="submit" class="btn btn-outline-success">수정</button></a>
			<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"><button type="button" class="btn btn-outline-success">삭제</button></a>
			</c:if>
			
		</div>
	</div>	
</body>
</html>