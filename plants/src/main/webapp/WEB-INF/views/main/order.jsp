<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.order-1{
		float: left;
	width: 500px;
	height: 300px;
	padding: 10px;
	margin-right: 12px;
	}
	.order-1 label{
	width: 80px;
	padding-right: 10px;
	}
	.order-2{
	float: left;
	width: 388px;
	height: 300px;
	padding: 10px;
	}
	
</style>
</head>
<body>
	<div class="container-11">
	<p>주 문 페 이 지</p>
		<table class="table">
			<tr>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명</th>
				<th width="10%">배송비</th>
				<th width="10%">상품금액</th>
			</tr>
			<tr>
				<td>image</td>
				<td>test</td>
				<td>test</td>
				<td>피클즈</td>
				<td>2500</td>
				<td>52900</td>
			</tr>
		</table>
	
	<hr>

	<div class="clearfix order">
		<div class="border order-1">
			<div>배송 정보</div>
			<hr>
			<div>
				<label>배송지 선택</label>
				<input type="radio"><span>기본배송지</span>
				<input type="radio"><span>신규배송지</span>
			</div>
			<div>
				<label>수령인</label>
				<input type="text"></div>
			<div>
				<label>주소</label>
				<input type="text"></div>
			<div>
				<label>연락처</label>
				<input type="text"></div>
			<div>
				<label>이메일</label>
				<input type="email"></div>
			<div>
				<label>메모</label>
				<input type="text" size="40"></div>
		</div>
		<div class="border order-2">
				<strong>결제금액</strong>
				<h1>5200원</h1>
				<hr>
				<div>
					<strong>결제금액</strong>		<label>52000원</label>
				</div>
				<div>
					<strong>배송비</strong>		<label>2500원</label>
				</div>
				<div>
					<strong>할인금액</strong>		<label>0원</label>
				</div>
				<div>
					<strong>적립금 사용금액</strong>	<label>0원</label>
				</div>
		</div>
	
		
	</div>
		<div class="order-3">
			<!-- Tab links -->
			<div class="tab">
			  <button class="tablinks" onclick="openCity(event, 'London')">카드결제</button>
			  <button class="tablinks" onclick="openCity(event, 'Paris')">무통장입금</button>
			  <button class="tablinks" onclick="openCity(event, 'Tokyo')">휴대폰결제</button>
			</div>
			
			<!-- Tab content -->
			<div id="London" class="tabcontent">
			  <h3>카드결제</h3>
			  <p>test</p>
			</div>
			
			<div id="Paris" class="tabcontent">
			  <h3>무통장입금</h3>
			  <p>test</p> 
			</div>
			
			<div id="Tokyo" class="tabcontent">
			  <h3>휴대폰결제</h3>
			  <p>test</p>
			</div>
		</div>
		
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
</div>
</body>
</html>