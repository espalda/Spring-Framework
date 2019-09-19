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
<form action="<%=request.getContextPath()%>/item/paid" method="post" >
<input type="hidden" name="id" value="${login.id }">
<input type="hidden" name="num" value="${item.num }">
	<div class="container-11">
		<h2>Order List</h2>
		<table class="table">
			<tr>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명</th>
				<th width="10%">배송비</th>
				<th width="10%">상품금액</th>
			</tr>
			
			<c:forEach var="opt" items="${optionList }">

					<input type="hidden" name="option_num" value="${opt.num }">
					<input type="hidden" name="option_count" value="${opt.option_count }">
				
					<tr>
						<td>
							<img src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="50px">
						</td>
						
						<td class="item-contents">
							<a href="<%=request.getContextPath()%>/item/display?num=${item.num}">${item.name }</a>
							<br>옵션 : ${opt.option }
						</td>
						<td>${opt.option_count } </td>
						<td>${item.seller_member_id }</td>
						<td>${item.delivery_charge }</td>
						<td>${opt.option_price * opt.option_count }</td>
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
				<h1>${total}<input type="hidden" name="total" value=${total }></h1>
				<hr>
				<div>
					<strong>상품금액</strong>
					<label class="item"></label>
				</div>
				<div>
					<strong>배송비</strong>
					<label class="delivery"></label>
				</div>
				<div>
					<strong>최종결제금액</strong>
					<label>${total }원</label>
				</div>
		</div>
	</div>
	<!-- Tab links -->
	<div class="ob-3">
		<div class="tab">
		  <button type="button" class="tablinks" onclick="openCity(event, 'card')">카드결제</button>
		  <button type="button" class="tablinks" onclick="openCity(event, 'bank')">무통장입금</button>
		  <button type="button" class="tablinks" onclick="openCity(event, 'phone')">휴대폰결제</button>
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
		
		<button class="btn-gold">결제하기</button>
	</div>
</form>
<script>
/* total 값에 의한 배송비 계산식 */
var total = parseInt($('input[name=total]').val());
	if(total < 10000){
		var delivery = parseInt(2500);
		$('.item').html(total-delivery+'원');
		$('.delivery').html(delivery+'원');
	}else{
		$('.delivery').html('0원');
	}


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
</body>
</html>