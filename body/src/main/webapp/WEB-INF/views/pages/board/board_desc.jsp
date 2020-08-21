<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>커뮤니티</h1>
<table class="table table-bordered">
	<tr>
		<th width="10%">카테고리</th>
		<th width="90%">제목</th>
	</tr>
	<tr>
		<td colspan="2">내용</td>
	</tr>
	<tr>
		<td colspan="2" style="height: 500px; overflow: auto;">내용</td>
	</tr>
	<tr>
		<td>첨부파일</td>
		<td>파일</td>
	</tr>
</table>
<div style="float: right;">
	<a href='<c:url value="/pages/board/board_write" />'><input type="button" value="수정" /></a>
	<input type="button" value="삭제" />
	<a href='<c:url value="/pages/board/board_deslist" />'><input type="button" value="목록" /></a>
</div>