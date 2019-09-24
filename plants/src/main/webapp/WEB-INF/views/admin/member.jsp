<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h2>회원 관리</h2>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화</th>
			<th>이메일</th>
			<th>등급</th>
			<th>권한</th>
		</tr>
		<c:forEach var="member" items="${memberList }">
		<tr>
			<td>${member.id }</td>
			<td>${member.name }</td>
			<td>${member.phone }</td>
			<td>${member.email }</td>
			<td>${member.grade}</td>
			<td>${member.authority }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>