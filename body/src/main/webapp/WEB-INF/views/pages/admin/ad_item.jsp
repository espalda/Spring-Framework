<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table">
	<tr>
		<th width="20%">상품 이미지</th>
		<th width="20%">상세 분류</th>
		<th width="60%">상세 입력</th>
	</tr>
	<tr>
		<th rowspan="10"><img width="200px" height="250px"><button>이미지등록</button><button>이미지삭제</button></th>
		<th>상품명</th>
		<td><input type="text" /></td>
	</tr>
	<tr>
		<th>상품 수량</th>
		<td><input type="text" /></td>
	</tr>
	<tr>
		<th>상품 배지 등록</th>
		<td><input type="checkbox" id="1" /><label for="1">신상품</label>
			<input type="checkbox" id="2" /><label for="2">재입고</label>
			<input type="checkbox" id="3" /><label for="3">리뉴얼</label>
			<input type="checkbox" id="4" /><label for="4">할인중</label>
		</td>
	</tr>
	<tr>
		<th>상품 썸네일 설명</th>
		<td><textarea style="resize: none; width: 100%; height: 80px;"></textarea></td>
	</tr>
	<tr>
		<th>상품 상세설명 이미지</th>
		<td>이미지 등록</td>
	</tr>
	<tr>
		<th>상품옵션 대분류</th>
		<td><input type="text" /></td>
	</tr>
	<tr>
		<th>상품옵션 소분류<button>추가</button></th>
		<td><input type="text" /></td>
	</tr>
</table>
<div class="btn-3">상품 등록</div>
<div class="btn-3" style="background: #fff; color: #777;">상품 예약 등록</div>