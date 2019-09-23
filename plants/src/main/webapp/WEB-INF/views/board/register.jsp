<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form action="<%=request.getContextPath()%>/board/register" method="post" enctype="multipart/form-data">
		<p>게시글 작성</p>
			<div>
			 <input type="hidden" name="member_id" value="${login.id }" readonly>
				<table class="table table-borderless">
					<tr>
						<th width="15%">
							<span>카테고리</span>
							<select name="category">
								<option>선택</option>
								<option value="공지">공지</option>
								<option value="건의">건의</option>
								<option value="질문">질문</option>
								<option value="교환">교환</option>
								<option value="환불">환불</option>
							</select>
						</th>
						<th colspan="2">
							<span>제목</span>
							<input type="text" size="100" name="title">
						</th>
					</tr>
					<tr>
						<td colspan="2">
							<textarea id="summernote" name="contents"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="file" name="file2"><i class="fas fa-trash-alt del">삭제</i>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="float-right">
				<button class="btn-tree">등록</button>
				<a href="<%=request.getContextPath()%>/board/list"><button class="btn-gray">목록</button></a>
			</div>
	</form>
<script>
/** summer note */
$(document).ready(function(){
 $('#summernote').summernote({
   placeholder: '내용을 입력해주세요',
   tabsize: 2,
   height: 300,
   lang: 'kr-KRs'
 });
})

$('.del').click(function(){	/* 파일 값 없애기 */
	  $('input[type=file]').val('');
});
</script>
</body>
</html>