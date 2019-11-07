<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h2>주문 관리</h2>
		<table class="table table-hover">
			<tr>
				<th width="5%">주문번호</th>
				<th>주문아이디</th>
				<th>이미지</th>
				<th>상품정보</th>
				<th>수량</th>
				<th>상품금액</th>
				<th>총주문금액</th>
				<th width="15%">주문상태</th>
			</tr>
			<c:forEach var="order" items="${orderList }">
			<tr>
				<td>${order.order_num }</td>
				<td>${order.member_id }</td>
				<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${order.file }" width="50px"></td>
				<td>${order.contents }</td>
				<td>${order.order_count }</td>
				<td>${order.option_price }</td>
				<td>${order.order_price }</td>
				<td>${order.status }</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>