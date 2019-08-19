<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	tr, td, th{
	font-size: 11px;
	}
</style>
</head>
<body class="text-center">
	<div class="py-3">
		<p>M Y  W I S H L I S T</p>
			<hr class="member-line">
	<div class="basket-table">
		<table class="table">
		<thead>
			<tr>
				<th width="3%"><input type="checkbox"></th>
				<th width="15%">주문번호</th>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명</th>
				<th width="10%">배송비</th>
				<th width="10%">상품금액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" checked></td>
				<td>20190624-0000124</td>
				<td><div class="basket-img"></div></td>
				<td><div class="basket-item">미세먼지 공기정화 추천상품</div></td>
				<td>1</td>
				<td>피클즈</td>
				<td>2500</td>
				<td>52900</td>
			</tr>
		</tbody>
		</table>
		<button class="btn-1">주문</button>
		<button class="btn-1" style="width:80px;">장바구니</button>
	</div>
	</div>
</body>
</html>