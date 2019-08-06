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
	<h4 class="my-3">게시글 작성</h4>
	<form action="<%=request.getContextPath()%>/board/register" method="post" enctype="multipart/form-data">
		<div class="form-group">
  			<input type="text" class="form-control" name="title" placeholder="title">
		</div>
		<div class="form-group">
  			<input type="text" class="form-control" name="writer" value="${user.id }" readonly>
		</div>
		<textarea id="summernote" name="contents"></textarea>
		<input type="file" class="form-control-file border" name="file2">
		
		<button type="submit" class="bnt bnt-outline-dark btn-sm">등록</button>
	</form>
	</div>
	
	 <script>
	 $(document).ready(function(){
      $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 100,
        lang: 'kr-KRs'
      });
	 })
    </script>
	
</body>
</html>