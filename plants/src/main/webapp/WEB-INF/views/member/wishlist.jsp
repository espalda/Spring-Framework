<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container-m">
	<p>M Y  W I S H L I S T</p>
	<div>
		<table class="table">
			<tr>
				<th width="3%"><input type="checkbox"></th>
				<th width="10%">주문번호</th>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명</th>
				<th width="10%">배송비</th>
				<th width="15%">상품금액</th>
			</tr>
			<tr>
				<td><input type="checkbox" checked></td>
				<td>20190624-0000124</td>
				<td><div>image</div></td>
				<td><div>미세먼지 공기정화 추천상품</div></td>
				<td>1</td>
				<td>피클즈</td>
				<td>2500</td>
				<td>52900</td>
			</tr>
		</table>
		<button class="btn-tree">ORDER</button>
		<button class="btn-raw">BASKET</button>
	</div>
	</div>
</body>
</html>