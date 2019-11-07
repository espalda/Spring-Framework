<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.ob-2{
	float: left;
	width: 880px;
	height: 200px;
	padding: 10px;
	margin-bottom: 16px;
	background-color: white;
	}
	.table{
	background-color: white;
	}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/item/paid" method="post" >
<input type="hidden" name="id" value="${login.id }">
	<div class="container-11">
		<h2>주문 리스트</h2>
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
							<img src="<%=request.getContextPath()%>/resources/uploadfiles${opt.file}" width="50px">
						</td>
						
						<td class="item-contents">
							<a href="<%=request.getContextPath()%>/item/display?num=${opt.num}"><h4>${opt.name }</h4></a>
							옵션 : ${opt.option }
						</td>
						<td>${opt.option_count } </td>
						<td>${opt.seller_member_id }</td>
						<td>${opt.delivery_charge }</td>
						<td>${opt.option_price * opt.option_count }</td>
					</tr>
			</c:forEach>
			<c:forEach var="bas" items="${basket }">
				<input type="hidden" name="basket_num" value="${bas}">
			</c:forEach>
		</table>
	<hr>

	<div class="clearfix">
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
		<button type="submit" class="butt">결제하기</button>
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
		var delivery = parseInt(0);
		$('.item').html(total-delivery+'원');
		$('.delivery').html('0원');
	}
</script>
</body>
</html>