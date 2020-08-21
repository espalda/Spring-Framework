<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>게시글 작성</h1>
<table class="table table-bordered">
	<tr>
		<th width="10%">
			<select>
				<option>공지</option>
				<option>테스트</option>
				<option>테스트</option>
				<option>테스트</option>
			</select>
		</th>
		<th width="90%"><input type="text" /></th>
	</tr>
	<tr>
		<td colspan="2" style="height: 500px; overflow: auto;">네이버 스마트 에디션 플러그인</td>
	</tr>
	<tr>
		<td>첨부파일</td>
		<td>파일</td>
	</tr>
</table>
<div style="float: right;">
	<input type="button" value="등록" />
	<input type="button" value="취소" />
	<!-- 등록 취소시 확인 alert 창  -->
</div>