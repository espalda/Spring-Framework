<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body>
	<div class="container-11">
		<table class="table">
			<tr>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
				<tr>
					<th width="15%">카테고리</th>
					<th colspan="2">제목</th>
				</tr>
				<tr>
					<td height="300px" colspan="3">내용</td>
				</tr>
				<tr>
					<td>첨부파일</td>
				</tr>
		</table>
		<div class="float-right">
			<button class="btn-tree">MODIFY</button>
			<button class="btn-raw">DELETE</button>
			<button class="btn-gray">LIST</button>
		</div>
	</div>
</body>
</html>