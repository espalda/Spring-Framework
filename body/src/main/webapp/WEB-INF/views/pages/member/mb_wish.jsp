<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table">
	<tr>
		<th width="5%"><input type="checkbox"/></th>
		<th width="15%">상품 이미지</th>
		<th width="45%">상품 정보</th>
		<th width="15%">수량</th>
		<th width="10%">판매가</th>
		<th width="10%">선택</th>
	</tr>
	<tr>
		<td><input type="checkbox"/></td>
		<td><img width="80px" height="80px;"></td>
		<td>3</td>
		<td><input value="4" data-nm=""></td>
		<td>15000 원</td>
		<td><div class="btn-delete"><img src="https://img.icons8.com/small/16/000000/delete-forever.png"/>삭 제</div></td>
	</tr>
</table>

<div class="btn-3" style="float: right;">상품주문</div>