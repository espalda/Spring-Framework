<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>게시판 리스트</h1>
<table class="table">
	<tr>
		<th colspan="5">카테고리 버튼 호버 전체보기 | 공지 | 상품 문의 | 건의 사항 | 기타</th>
	</tr>
	<tr>
		<th width="10%">카테고리</th>
		<th width="50%">제목</th>
		<th width="10%">작성자</th>
		<th width="10%">작성일</th>
		<th width="10%">조회수</th>
	</tr>
	<tr>
		<td>1</td>
		<td><a href='<c:url value="/pages/board/board_desc"/>'>2</a></td>
		<td>3</td>
		<td>4</td>
		<td>5</td>
	</tr>
</table>
<div style="float: right;">
	<a href='<c:url value="/pages/board/board_desc" />'><input type="button" value="글쓰기" /></a>
	<input type="text" placeholder="검색"/>
</div>