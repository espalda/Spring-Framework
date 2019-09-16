<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form action="<%=request.getContextPath()%>/item/order" method="post">
	<div class="container-11">
		<h2>Basket</h2>
		<table class="table">
			<tr>
				<th width="3%"><input type="checkbox" class="check-all" checked></th>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				<th width="10%">상품금액</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명*배송비</th>
			</tr>
			<c:forEach var="bas" items="${basketList }" varStatus="s">
			<tr class="tr">
				<td>
					<input type="hidden" name="basket-check" value="1">
					<input type="checkbox" class="check" checked>
				</td>
				<td>
					<img src="<%=request.getContextPath()%>/resources/uploadfiles${bas.file }" width="50px">
				</td>
				<td>${bas.name}<br>${bas.option }</td>
				<td>
					<input type="hidden" value="${bas.option_price }"> ${bas.option_price }
				</td>
				<td>
					<input type="hidden" value="${bas.option_count }">${bas.option_count }
					<input type="hidden" class="item-total" value="${bas.option_price * bas.option_count }">
				</td>
				<c:if test="${s.count == 1 }">
				<td rowspan="${basketList.size()}">${bas.seller_member_id }<br>${bas.delivery_charge } 원</td>
				</c:if>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="10" class="background-raw text-right">
					<span class="fin-price"></span>
					<input type="text" class="tt">
				</td>
			</tr>
		</table>
		<button class="btn-tree">ORDER</button>
		<a href="<%=request.getContextPath()%>/basket/delete">
		<button class="btn-tree">DELETE</button></a>
	</div>
</form>
<script>
	var str3 = '상품금액 : '+ 0 +' + 배송비: 0 = '+ 0; /* 전체 해제시 금액 */

	/* 장바구니 페이지에 들어왔을때 보여지는 디폴트 금액 */
	var total = 0;
	$('.tr').each(function(){
		total += parseInt($(this).find('.item-total').val());
	});
	var str = '상품금액 : '+ total +' + 배송비: 0 = '+ total;	/* 10000원 이상 배송비 무료 금액 */
	var str2 = '상품금액 : '+ total - parseInt(2500) +' + 배송비: 2500 = '+ total;	/* 10000원 이하 배송비 무료 금액 */
	if(total < 10000){
		total += parseInt(2500);
		str = str2;
	}
	$('.tt').val(total);
	$('.fin-price').html(str);


	/* 체크박스에 체크된 값만 계산하는 기능 */
	$('.check').change(function(){
		var total = 0;
		$('.tr').each(function(){
			if($(this).find('.check').prop('checked')){ /* tr의 값을 하나씩 꺼내서 check 된 값만 더하는 기능 */
			total += parseInt($(this).find('.item-total').val());
			}	
		});
		if(total < 10000){
			total += parseInt(2500);
		}
		$('.tt').val(total);
		
		if($(this).prop("checked")){ /* 주문페이지로 넘길때 조건 */
			alert("체크");
			$(this).parents('.tr').find('input[name=basket-check]').val(1);
		}else{
			alert("체크해제");
			$(this).parents('.tr').find('input[name=basket-check]').val(0);
		}
	})
	
	/* 전체 체크박스 값을 체크하는 기능 */
	$('.check-all').change(function(){
		var total = 0;
		$('.tr').each(function(){
			total += parseInt($(this).find('.item-total').val());
		});
		var str = '상품금액 : '+ total +' + 배송비: 0 = '+ total;	/* 10000원 이상 배송비 무료 금액 */
		var str2 = '상품금액 : '+ total - parseInt(2500) +' + 배송비: 2500 = '+ total;	/* 10000원 이하 배송비 무료 금액 */
		if($(this).prop("checked")){
			alert("체크");
			$('.check').prop("checked", true);
			if(total < 10000){
				total += parseInt(2500);
				str = str2;
			}
			$('.tt').val(total);
			$('input[name=basket-check]').val(1);
			$('.fin-price').html(str);
		}else{
			alert("체크 해제");
			$('.check').prop("checked", false);
			$('.tt').val(0);
			$('input[name=basket-check]').val(0);
			$('.fin-price').html(str3);
		}
	})
</script>
</body>
</html>