<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<!-- member-order -->
	<div class="container-m">
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
				<tr>
					<td>20190624-0000124</td>
					<td>image</td>
					<td>test</td>
					<td>test</td>
					<td>52900</td>
					<td>test</td>
				</tr>
			</table>
		</div>
	</div>
	
	<!-- member-board -->
	<div class="container-m">
		<h2>Posting</h2>
		<div>
			<table class="table">
				<tr>
					<th width="10%">게시글번호</th>
					<th width="10%">분류</th>
					<th width="40%">제목</th>
					<th width="15%">작성자</th>
					<th width="15%">작성일</th>
				</tr>
				<tr>
					<td>test</td>
					<td>test</td>
					<td>test</td>
					<td>test</td>
					<td>test</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- member-coupon -->
	<div class="container-m">
		<h2>Coupon</h2>
		<div>
			<table class="table">
				<tr>
					<th width="10%">쿠폰번호</th>
					<th width="25%">쿠폰명</th>
					<th width="25%">상품</th>
					<th width="10%">할인금액</th>
					<th width="25%">사용가능기간</th>
				</tr>
				<tr>
					<td>test</td>
					<td>여름 세일 10% 쿠폰</td>
					<td>test</td>
					<td>test</td>
					<td>yyyy-mm-dd ~ yyyy-mm-dd</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- member/address -->
	<div class="py-3 d-none">
		<p>M Y A D D R E S S</p>
			<hr class="member-line">
			<div class="gray-container">
				<table class="table member-table">
					<tr>
						<th width="10%">분류</th>
						<th width="10%">수령인</th>
						<th width="20%">휴대전화</th>
						<th width="60%">주소</th>
					</tr>
					<tr>
						<td>기본</td>
						<td>피클즈</td>
						<td>000-0000-0000</td>
						<td>주소 : 충북 청주시 서원구 사직대로 109</td>
					</tr>
				</table>
		</div>
	
			<div class="btn-box clearfix mt-2">
				<button class="btn-1 float-left ml-5">수정</button>
				<button class="btn-1 float-left">삭제</button>
			</div>
	</div>
</body>
</html>