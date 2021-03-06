<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>modify</title>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.del').click(function(){
			$(this).prev().val('');
		});
	})
	</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<form action="<%=request.getContextPath()%>/board/modify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="${board.num }">
	<div class="container-fluid">
		<div class="form-group col-8">
		  <label>제목</label>
		  <input type="text" class="form-control" name="title" value="${board.title}">
		</div>
		<div class="row col-auto">
			<div class="form-group col-3">
			  <label>작성자</label>
			  <input type="text" class="form-control" name="writer" value="${board.writer}" readonly>
			</div>
			<div class="form-group col-3">
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
		  <textarea rows="10" class="form-control" name="contents">${board.contents}</textarea>
		</div>
		<div class="form-group col-8">
		  <label>첨부파일</label>
		  	<div class="form-group clearfix">
		  		<input type="text" class="form-control col-11 float-left" name="file" value="${board.fileName}" readonly>
		  		<i class="far fa-trash-alt del" style="margin:10px; cursor:pointer"></i>
		  	</div>
		  		<input type="file" class="form-control-file" name="file2">
		</div>
	
	<div class="btn-group">
	  <a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-outline-success">목록</button></a>
	  <button type="submit" class="btn btn-outline-success">등록</button>
	  <a href="<%=request.getContextPath()%>/board/delete"><button type="button" class="btn btn-outline-success">삭제</button></a>
	</div>
	</div>
	</form>
</body>
</html>