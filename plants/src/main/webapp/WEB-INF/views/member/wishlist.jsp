<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container-m">
		<h2>Wishlist</h2>

		<div>
			<table class="table">
				<tr>
					<th width="5%"><input type="checkbox"></th>
					<th width="10%">이미지</th>
					<th width="15%">상품정보</th>
					<th width="20%">수량</th>
					<th width="10%">판매자명</th>
					<th width="10%">배송비</th>
					<th width="15%">상품금액</th>
				</tr>
				<c:forEach var="wish" items="${wishlist }">
					<tr>
						<td><input type="checkbox" checked></td>
						<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${wish.file}" width="50px"></td>
						<td>${wish.name }</td>
						<td><mark>옵션 종류, 수량 선택 불가 - 추후 수정</mark></td>
						<td>${wish.seller_member_id }</td>
						<td>${wish.delivery_charge }</td>
						<td>${wish.price }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="float-right">
				<button class="btn-tree">ORDER</button>
				<button class="btn-raw">BASKET</button>
			</div>
		</div>
	</div>
</body>
</html>