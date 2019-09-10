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
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명</th>
				<th width="10%">배송비</th>
				<th width="10%">상품금액</th>
			</tr>
			<c:forEach var="bas" items="${basketList }">
				<tr>
					<td><input type="checkbox" checked></td>
					<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${bas.item_file }" width="80px"></td>
					<td>${bas.item_name }, <br>${bas.option }</td>
					<td>${bas.option_count }</td>
					<td>${bas.seller_member_id }</td>
					<td>${bas.delivery_charge }</td>
					<td>${bas.total_price }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="10" class="background-raw text-right">
					<span>${bas.total_price }</span>
				</td>
			</tr>
		</table>
		<button class="btn-tree">ORDER</button>
		<a href="<%=request.getContextPath()%>/basket/delete">
		<button class="btn-tree">DELETE</button></a>
	</div>
</body>
</html>