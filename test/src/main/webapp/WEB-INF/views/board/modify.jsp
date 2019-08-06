<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div style="min-height:561px;">
	<h4 class="my-3">게시글 수정</h4>
	<form action="<%=request.getContextPath()%>/board/modify" method="post">
		<input type="hidden" name="num" value="${board.num }">
		<div class="form-group">
  			<input type="text" class="form-control" name="title" value="${board.title }">
		</div>
		<div class="form-group">
  			<input type="text" class="form-control" name="writer" value="${board.writer }" readonly>
		</div>
		<textarea id="summernote" name="contents">${board.contents }</textarea>
		<button type="submit" class="bnt bnt-outline-dark btn-sm">수정</button>
	</form>
	</div>
	
	 <script>
	 $(document).ready(function(){
      $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 300,
        lang: 'kr-KRs'
      });
	 })
    </script>
	
</body>
</html>