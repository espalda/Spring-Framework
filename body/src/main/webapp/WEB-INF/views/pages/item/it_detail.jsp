<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.it_img {
width: 500px;
height: 500px;
float: left;
}
.it_detail {
width: 500px;
border: 1px solid black;
float: left;
padding: 10px;
margin-left: 15px; /* 20으로 변경 예정 */
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
.it_img1 {
width: 500px;
height: 400px;
border: 1px solid black; 
}
.sum li {
width: 100px;
height: 100px;
border: 1px solid black;
}
tr.it_total {
background: #CDD8E5;
}
h4 {
text-align: right;
}
</style>
<div class="it_img">
	<div class="it_img1"></div>
	<ol class="sum">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ol>
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
		<td>
			<img src="https://img.icons8.com/material-rounded/24/000000/sort-down.png" class="num-down"/>
			<input type="text" class="it-num" readonly="readonly"/>
			<img src="https://img.icons8.com/material-rounded/24/000000/sort-up.png" class="num-up"/>
		</td>
	</tr>
</table>
<table class="table">
	<tr style="background: #CDD8E5;">
		<td><img src="https://img.icons8.com/small/16/000000/advance.png" style="margin-right: 5px;"/>mermaid bodylotion 150ml orange</td>
		<td>2개</td>
		<td>12300원</td>
		<td><div class="btn-delete">삭제</div></td>
	</tr>
	<tr>
		<td colspan="4"><h4>총 상품금액 : 16500 원 (0 개)</h4></td>
	</tr>
</table>
<div class="btn-3"><img src="https://img.icons8.com/small/16/000000/order-history.png" style="filter: invert(100%);"> 주문하기</div>
<div class="btn-4"><img src="https://img.icons8.com/small/16/000000/shopping-basket.png"/> 장바구니</div>
<div class="btn-4"><img src="https://img.icons8.com/small/16/000000/like.png"/> 관심상품</div>

</div>