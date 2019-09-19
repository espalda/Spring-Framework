<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="text-center">
	<!-- member-order -->
		<h2>Order State</h2>
		<div>
			<table class="table">
				<tr>
					<th width="10%">주문번호</th>
					<th width="20%">이미지</th>
					<th width="40%">상품정보</th>
					<th width="8%">수량</th>
					<th width="10%">금액</th>
					<th width="17%">주문상태</th>
				</tr>
				<c:forEach var="order" items="${orderList }">
				<tr>
					<td>${order.order_num }</td>
					<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${order.file }" width="50px"></td>
					<td>${order.contents }</td>
					<td>${order.option_count }</td>
					<td>${order.order_price }</td>
					<td>${order.status }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>