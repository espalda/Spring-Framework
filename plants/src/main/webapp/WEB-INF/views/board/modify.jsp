<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.table input{
font-family: 'nanumgothic';
font-size: 13px;
}
</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/board/modify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="${board.num}">
			<div>
				<table class="table table-borderless">
					<tr>
						<th width="15%">
							<select name="category">
								<option value="공지">공지</option>
								<option value="건의">건의</option>
								<option value="질문">질문</option>
								<option value="교환">교환</option>
								<option value="환불">환불</option>
							</select>
						</th>
						<th colspan="2">
							<label>제목</label>
							<input type="text" size="70" name="title" value="${board.title}">
						</th>
					</tr>
					<tr>
						<td colspan="2">
							<textarea id="summernote" name="contents">${board.contents}</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<label>첨부파일 :</label>
							<c:if test="${board.fileName ne '' }">
								<a href="<%=request.getContextPath()%>/board/download?fileName=${board.file}" id="file-link">${board.fileName }</a>
								<input type="hidden" name="file" value="${board.file }"><i class="fas fa-times del"><span class="btn-sm">삭제</span></i>	<!-- 기존 첨부파일 삭제 -->
							</c:if>
							<input type="file" name="file2">
						</td>
					</tr>
				</table>
			</div>
			<div class="float-right">
				<button class="butt">수정</button>
				<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"><button class="butt">삭제</button></a>
				<a href="<%=request.getContextPath()%>/board/list"><button class="butt">목록</button></a>
			</div>
	</form>

<script>
	 $(document).ready(function(){
      $('#summernote').summernote({
        placeholder: '내용을 입력해주세요',
        tabsize: 2,
        height: 300,
        lang: 'kr-KRs',
      });
	 })
	 
	 $('.del').click(function(){	//a태그와 x버튼 사라지게 하는 기능
   	  $('#file-link').remove();
    	  $('input[name=file]').val('');
    	  $(this).css('display','none');
     });
</script>

</body>
</html>