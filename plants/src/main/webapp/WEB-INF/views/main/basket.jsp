<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
</head>
<body>
	<div class="container-11">
		<h2>Basket</h2>
		<table class="table">
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
			<tr>
				<td><input type="checkbox" checked></td>
				<td>20190624-0000124</td>
				<td>image</td>
				<td>test</td>
				<td>test</td>
				<td>피클즈</td>
				<td>2500</td>
				<td>52900</td>
			</tr>
			<tr>
				<td colspan="10" class="background-raw text-right">
					<span>상품구매금액 52,900 + 배송비 0 (무료) = 합계 : 52,900원</span>
				</td>
			</tr>
		</table>
		<button class="btn-tree">ORDER</button>
	</div>
</body>
</html>