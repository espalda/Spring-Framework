<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body>
	<span>카테고리</span>
		<select>
			<option>공지</option>
			<option>건의</option>
			<option>질문</option>
			<option>교환</option>
			<option>환불</option>
		</select>
					
		<table class="table">
			<tr>
				<th width="60%">제목</th>
				<th width="10%">작성자</th>
				<th width="20%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
			<tr>
				<td>test</td>
				<td>test</td>
				<td>test</td>
				<td>test</td>
			</tr>		
		</table>
		
		<a href="<%=request.getContextPath()%>/board/register"><button class="btn-raw float-right">WRITE</button></a>
</body>
</html>