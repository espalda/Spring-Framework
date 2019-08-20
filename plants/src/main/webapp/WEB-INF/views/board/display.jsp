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
<div class="top px-3" >
	<div style="padding: 12px;">
		<span>작성자</span>
		<span>조회수</span>
		<span>작성일</span>
	</div>
	<table class="table">
		<thead>
			<tr>
				<td width="15%">카테고리</td>
				<td colspan="2">제목</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td height="300px" colspan="3">내용</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td>첨부파일</td>
			</tr>
		</tfoot>
	</table>
</div>

	<div>
		<button class="btn-tree">M O D I F Y</button>
		<button class="btn-raw">D E L E T E</button>
		<button class="btn-gray">L I S T</button>
	</div>
</body>
</html>