<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.ob-1{
	float: left;
	width: 500px;
	height: 300px;
	padding: 10px;
	margin-right: 12px;
	}
	.ob-1 label{
	width: 80px;
	padding-right: 10px;
	}
	.ob-2{
	float: left;
	width: 388px;
	height: 300px;
	padding: 10px;
	}
	
</style>
</head>
<body>
	<div class="container-11">
		<h2>Order</h2>
		<table class="table">
			<tr>
				<th>주문번호</th>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명</th>
				<th width="10%">배송비</th>
				<th width="10%">상품금액</th>
			</tr>
			<c:forEach var="order" items="${orderList}">
				<tr>
					<td>20190624-0000124</td>
					<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${order.file}" width="50px"></td>
					<td><a href="<%=request.getContextPath()%>/item/display?=${order.num}">${order.name }</a><br>${order.option }</td>
					<td>${order.option_count }</td>
					<td>${order.seller_member_id }</td>
					<td>${order.delivery_charge }
					<td>${order.option_price * order.option_count }</td>
				</tr>
			</c:forEach>
		</table>
	
	<hr>

	<div class="clearfix">
		<div class="border ob-1">
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
		<div class="border ob-2">
				<strong>결제금액</strong>
				<h1>${order.total}</h1>
				<hr>
				<div>
					<strong>결제금액</strong>		<label></label>
				</div>
				<div>
					<strong>배송비</strong>		<label></label>
				</div>
				<div>
					<strong>할인금액</strong>		<label></label>
				</div>
				<div>
					<strong>적립금 사용금액</strong>	<label></label>
				</div>
		</div>
	
	
	</div>
		<div class="ob-3">
			<!-- Tab links -->
			<div class="tab">
			  <button class="tablinks" onclick="openCity(event, 'card')">카드결제</button>
			  <button class="tablinks" onclick="openCity(event, 'bank')">무통장입금</button>
			  <button class="tablinks" onclick="openCity(event, 'phone')">휴대폰결제</button>
			</div>
			
			<!-- Tab content -->
			<div id="card" class="tabcontent">
			  <p>test1</p>
			</div>
			
			<div id="bank" class="tabcontent">
			  <p>test2</p> 
			</div>
			
			<div id="phone" class="tabcontent">
			  <p>test3</p>
			</div>
		</div>
		
<script>
/* ob-3 bootstrap-script */
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