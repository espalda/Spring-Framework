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
	<form action="<%=request.getContextPath()%>/board/modify" method="post" enctype="multipart/form-data">
		<input type="hidden" name="num" value="${board.num }">
		<div class="form-group">
  			<input type="text" class="form-control" name="title" value="${board.title }">
		</div>
		<div class="form-group">
  			<input type="text" class="form-control" name="writer" value="${board.writer }" readonly>
		</div>
		<textarea id="summernote" name="contents">${board.contents }</textarea>
		<div>
			<label>첨부파일 :</label>
			<c:if test="${board.fileName ne '' }">
				<a href="<%=request.getContextPath()%>/board/download?filename=${board.file}" id="file-link">${board.fileName }</a>
				<input type="hidden" name="file" value="${board.file }">
				<i class="fas fa-times close"></i>	<!-- 기존 첨부파일 삭제 하기 위해서 -->
			</c:if>
			<c:if test="${board.fileName eq '' }">없음</c:if>
		</div>
			<input type="file" class="form-control-file border" name="file2">
			<button type="submit" class="btn btn-outline-dark btn-sm">수정</button>
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
      $('.close').click(function(){	//a태그와 x버튼 사라지게 하는 기능
    	  $('#file-link').remove();
     	  $('input[name=file]').val('');
     	  $(this).css('display','none');
      });
	 })
    </script>
	
</body>
</html>