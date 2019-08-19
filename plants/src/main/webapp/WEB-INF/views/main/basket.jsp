<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	table{
	font-size: 11px;
	}
	.basket-table{
	width: 900px;
	margin: 0 auto;
	}
	.basket-item{
	border: 1px solid #7f7f7f;
	height: 100px;
	padding: 8px;
	}
	.basket-img{
	width: 100px;
	height: 100px;
	border: 1px solid #b97f6d;
	}
	
	td:nth-child(4){
	padding: 12px 12px 12px 0 !important;
	}
</style>
</head>
<body class="text-center">
<h1>B A S K E T</h1>
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
		<tfoot>
			<tr>
				<td colspan="10" class="text-right" style="background-color: #b97f6d; color: white;">
					<span>상품구매금액 52,900 + 배송비 0 (무료) = 합계 : 52,900원</span>
				</td>
			</tr>
		</tfoot>
		</table>
		
		<button class="btn-tree">O R D E R</button>
	</div>
</body>
</html>