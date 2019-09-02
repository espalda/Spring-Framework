<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<table class="table">
		<tr>
			<th>${board.member_id }</th>
			<th>${board.views }</th>
			<th>${board.registered }</th>
		</tr>
			<tr>
				<th width="15%">${board.category }</th>
				<th colspan="2">${board.title }</th>
			</tr>
			<tr>
				<td height="300px" colspan="3">${board.contents }</td>
			</tr>
			<tr>
				<td>첨부파일</td>
			</tr>
	</table>
	<div class="float-right">
		<a href="<%=request.getContextPath()%>/board/modify?num=${board.num}"><button class="btn-tree">MODIFY</button></a>
		<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"><button class="btn-raw">DELETE</button></a>
		<a href="<%=request.getContextPath()%>/board/list"><button class="btn-gray">LIST</button></a>
	</div>
</body>
</html>