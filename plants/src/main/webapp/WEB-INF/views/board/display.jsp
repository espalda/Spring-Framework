<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<table class="table">
		<tr>
			<th>작성자 : ${board.member_id }</th>
			<th>조회수 : ${board.views }</th>
			<th>등록일 : ${board.registered }</th>
		</tr>
			<tr>
				<th width="15%">분류 : ${board.category }</th>
				<th colspan="2">제목 : ${board.title }</th>
			</tr>
			<tr>
				<td height="300px" colspan="3">${board.contents }</td>
			</tr>
			<tr>
				<td>
					<label>첨부파일 : </label>
					<c:if test="${board.fileName ne '' }">
						<a href="<%=request.getContextPath()%>/board/download?fileName=${board.file}">${board.fileName }</a>
					</c:if>
					<c:if test="${board.fileName eq '' }">없음</c:if>
				</td>
			</tr>
	</table>
	<div class="float-right">
		<a href="<%=request.getContextPath()%>/board/modify?num=${board.num}"><button class="butt">수정</button></a>
		<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"><button class="butt">삭제</button></a>
		<a href="<%=request.getContextPath()%>/board/list"><button class="btn-gray">목록</button></a>
	</div>
</body>
</html>