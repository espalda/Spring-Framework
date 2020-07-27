<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.it_img {
width: 500px;
height: 500px;
border: 1px solid black;
float: left;
}
.it_detail {
width: 500px;
height: 500px;
border: 1px solid black;
float: left;
padding: 10px;
}
.table li {
border: 1px solid black;
border-radius: 5px;
padding: 15px 0;
width: 50px;
height: 50px;
text-align: center;
margin-right: 10px;
cursor: pointer;
}
</style>
<div class="it_img">
</div>
<div class="it_detail">
<h1 class="text-center">mermaid bodylotion</h1>
<table class="table table-borderless">
	<tr>
		<td>판매가</td>
		<td>16500 원</td>
	</tr>
	<tr>
		<td>상품코드</td>
		<td>QWERTY</td>
	</tr>
	<tr>
		<td>배송비</td>
		<td>2500 원 <br>
		(30000원 이상시 무료배송)</td>
	</tr>
	<tr>
		<td>적립포인트</td>
		<td>165원</td>
	</tr>
	<tr>
		<td>용량</td>
		<td>
			<ol>
				<li>150ml</li>
				<li>300ml</li>
				<li>900ml</li>
			</ol>
		</td>
	</tr>
	<tr>
		<td>타입</td>
		<td>
			<ol>
				<li>blue</li>
				<li>green</li>
				<li>red</li>
				<li>orange</li>
			</ol>
		</td>
	</tr>
	<tr>
		<td>주문개수</td>
		<td><input type="text" value="3"/>개</td>
	</tr>
	<tr>
		<td colspan="2"><h4>총 상품금액 : 000 원 (0 개)</h4></td>
	</tr>
</table>
<div class="btn-1">주문하기</div>
<div class="btn-2">장바구니</div>

</div>