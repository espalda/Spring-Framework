<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form action="">
		<p>게시글 작성</p>
			<div>
				<table class="table table-borderless">
					<tr>
						<th width="15%">
							<span>카테고리</span>
							<select>
								<option>공지</option>
								<option>건의</option>
								<option>질문</option>
								<option>교환</option>
								<option>환불</option>
							</select>
						</th>
						<th colspan="2">
							<span>제목</span>
							<input type="text" size="100">
						</th>
					</tr>
					<tr>
						<td colspan="2">
							<textarea id="summernote" name="contents"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="file"><i class="fas fa-trash-alt"></i>
						</td>
					</tr>
				</table>
			</div>
			<div class="float-right">
				<button class="btn-tree">REGISTER</button>
				<button class="btn-gray">LIST</button>
			</div>
	</form>
</body>
</html>