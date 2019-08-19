<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.top{
	border: 1px solid #7f7f7f;
	box-sizing: border-box;
	}
</style>
</head>
<body>
<form action="">
<p>게시글 작성</p>
<div class="top px-3" >
	<table class="table">
		<thead>
			<tr>
				<td width="15%">
					<span>카테고리</span>
					<select>
						<option>공지</option>
						<option>건의</option>
						<option>질문</option>
						<option>교환</option>
						<option>환불</option>
					</select>
				</td>
				<td colspan="2">
					<label>제목</label>
					<input type="text" style="width: 550px;">
				</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="2">
					<textarea id="summernote" name="contents"></textarea>
				</td>
			</tr>
		</tbody>
	</table>
</div>
	<div>
		<input type="file" style="width: 100%;">
	</div>
	<div>
		<button class="btn-tree">R E G I S T E R</button>
		<button class="btn-gray">L I S T</button>
	</div>
	<script>
		 $(document).ready(function(){
	      $('#summernote').summernote({
	        placeholder: '내용을 입력해주세요',
	        tabsize: 2,
	        height: 300,
	        lang: 'kr-KRs'
	      });
		 })
	</script>
</form>
</body>
</html>