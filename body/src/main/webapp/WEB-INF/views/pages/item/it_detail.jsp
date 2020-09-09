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

.des-01 {
width: 1018px;
height: 41px;
margin: 0 auto;
}
.des-01 ul {
width: 750px;
height: 40px;
margin: 0 auto;
}
.des-01 li {
width: 150px;
height: 40px;
font-size: 13px;
line-height: 38px;
letter-spacing: 3px;
text-align: center;
margin: 0 auto;
cursor: pointer;
margin: 0 0 0 -1px;
}

.des-01 li.now {
margin: 0 1px 0 0;
height: 41px;
background: #eee;
border-bottom: 1px solid black;
}
.it-top {
width: 1020px;
height: 540px;
margin: 55px; 
}

/* animation */
.des-01 li {
  position: relative;
  display: inline-block;
  transition: .3s;
}
.des-01 li::after {
  position: absolute;
  bottom: 0;
  left: 0;
  content: '';
  width: 0;
  height: 1px;
  background: #364E69;
  transition: .3s;
}
.des-01 li:hover::after {
  width: 100%;
}
</style>
<div class="it-top">
	<div class="it_img">
		<div class="it_img1"></div>
		<ul class="sum">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
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
				<ul>
					<li>150ml</li>
					<li>300ml</li>
					<li>900ml</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>타입</td>
			<td>
				<ul>
					<li>blue</li>
					<li>green</li>
					<li>red</li>
					<li>orange</li>
				</ul>
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
</div>

<div class="it_bottom">
	<div class="des-01">
		<ul>
			<li class="now">상품정보</li>
			<li>구매안내</li>
			<li>배송안내</li>
			<li>상품후기</li>
			<li>상품문의</li>
		</ul>
	</div>
	<div class="des-01">
		<ul>
			<li>상품정보</li>
			<li class="now">구매안내</li>
			<li>배송안내</li>
			<li>상품후기</li>
			<li>상품문의</li>
		</ul>
	</div>
	<div>
		상품결제정보<br/>
		상품 구매 방법은 카드결제, 계좌이체, 가상결제가 가능합니다.<br/>
		고액결제의 경우 안전을 위해 카드사에서 확인 전화를 드릴 수 도 있습니다.<br/>
		확인 과정에서 도난 카드의 사용이나 타인 명의의 주문 등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있으며,<br/>
		상품 금액의 오류가 있을 경우에도 취소될 수 있습니다.<br/>
		가상결제의 경우 3일 이내 입금 부탁드립니다. (새벽 5시 취소 예정)<br/>
		입금이 되지 않을 경우, 입금 계좌가 중지처리되며, 주문이 취소됩니다.<br/>
		행사제품의 경우, 상황에 따라 주문이 취소처리 될 수 있습니다.<br/>
	</div>
	
	<div class="des-01">
		<ul>
			<li>상품정보</li>
			<li>구매안내</li>
			<li class="now">배송안내</li>
			<li>상품후기</li>
			<li>상품문의</li>
		</ul>
	</div>
	<div>
	배송정보<br/>
	배송 방법 : 택배<br/>
	배송 지역 : 전국지역<br/>
	배송 비용 : 2,500원<br/>
	배송 기간 : 1일 ~ 3일<br/>
	배송 안내 :<br/>
	- 고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 주문량이 많을 경우 지연될 수 있습니다.<br/>
	- 일반적으로 평일 오전 8시까지의 주문은 당일 출고되며, 오전 8시 이후의 주문건은 익일 출고 됩니다.<br/>
	- 주말과 공휴일은 출고처리를 하고 있지 않으니, 주문시 참고하시기 바랍니다.<br/>
	- 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다. (지역별 금액 상이)<br/>
	</div>
	<div class="des-01">
		<ul>
			<li>상품정보</li>
			<li>구매안내</li>
			<li>배송안내</li>
			<li class="now">상품후기</li>
			<li>상품문의</li>
		</ul>
	</div>
	<div>
		<table class="table" style="width: 900px; margin: 0 auto;">
			<tr>
				<th>번호</th>
				<th>평점</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<input type="button" value="후기작성"/>
	</div>
	<div class="des-01">
		<ul>
			<li>상품정보</li>
			<li>구매안내</li>
			<li>배송안내</li>
			<li>상품후기</li>
			<li class="now">상품문의</li>
		</ul>
	</div>
	<div>
		<table class="table" style="width: 900px; margin: 0 auto;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>답변상태</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<input type="button" value="문의작성"/>
	</div>
</div>
<script>

</script>