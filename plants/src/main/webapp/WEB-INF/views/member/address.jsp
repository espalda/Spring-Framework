<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h2>주소록</h2>
		<div>
			<table class="table">
				<tr>
					<th width="5%"><input type="checkbox"></th>
					<th width="10%">분류</th>
					<th width="10%">수령인</th>
					<th width="20%">휴대전화</th>
					<th width="60%">주소</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>기본</td>
					<td>피클즈</td>
					<td>000-0000-0000</td>
					<td>주소 : 충북 청주시 서원구 사직대로 109
						<button class="btn-sm">수정</button>
						<button class="btn-sm">삭제</button>
					</td>
				</tr>
			</table>
	</div>
</body>
</html>