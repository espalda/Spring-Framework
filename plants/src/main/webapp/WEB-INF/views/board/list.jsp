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
	<table class="table">
		<thead>
			<tr>
				<td colspan="10" class="">
					<span>카테고리</span>
					<select>
						<option>공지</option>
						<option>건의</option>
						<option>질문</option>
						<option>교환</option>
						<option>환불</option>
					</select>
					<a href="<%=request.getContextPath()%>/board/register">
					<button class="btn-raw float-right">W R I T E</button></a>
				</td>
			</tr>

		</thead>
							
		<thead>
			<tr>
				<td width="60%">제목</td>
				<td width="10%">작성자</td>
				<td width="20%">작성일</td>
				<td width="10%">조회수</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
		
	</table>
</div>
</body>
</html>