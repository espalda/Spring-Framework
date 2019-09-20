<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	input[type=number]::-webkit-outer-spin-button,
	input[type=number]::-webkit-inner-spin-button {
	opacity: 1;
	}
	input[type=text]{
	all: unset;
	}
	input[name=option_count]{
	width: 50px;
	margin-bottom: 5px;
	}
	td>a{
	font-size: 20px;
	letter-spacing: 2px;
	margin-bottom: 10px;
	}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/item/basket/order" method="post">
	<div class="container-11">
	<h4>장바구니</h4>
		<table class="table">
			<tr>
				<th width="3%"><input type="checkbox" class="check-all" checked></th>
				<th width="10%">이미지</th>
				<th width="20%">상품정보</th>
				<th width="10%">상품금액</th>
				<th width="15%">수량</th>
				<th width="10%">판매자명*배송비</th>
			</tr>
			
			<!-- c:foreach -->
			<c:forEach var="bas" items="${basketList }" varStatus="s">
			<tr class="tr">
				<td>
					<input type="checkbox" name="check" value="1" checked>
				</td>
				<td>
					<img src="<%=request.getContextPath()%>/resources/uploadfiles${bas.file }" width="50px">
				</td>
				<td>
					<a href="<%=request.getContextPath()%>/item/display?num=${bas.item_num}">${bas.name}</a>
					<br>옵션 : ${bas.option }
					<input type="hidden" name="basket_num" value="${bas.num }">
					<input type="hidden" name="option_num" value="${bas.option_num }">
					<input type="hidden" name="num" value="${bas.item_num }">
				</td>
				
				<td>
					<input type="text" value="${bas.option_price }">
					
				</td>
				<td>
					<input type="number" name="option_count" value="${bas.option_count }" width="50px">
					<button type="button" class="modify">변경</button>
					<button type="button" class="remove">삭제</button>
					
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
					<input type="hidden" name="total">
				</td>
			</tr>
		</table>
		
		<button class="btn-tree">주문하기</button>
		
	</div>
</form>

<script>
/* 장바구니 수량 변경 */
$('.modify').click(function(){
	var num = $(this).parents('tr').find('input[name=basket_num]').val();
	var option_count = $(this).parents('tr').find('input[name=option_count]').val();
	$.ajax({
		async:true,
		type:'POST',
		data: {'num':num, 'option_count':option_count},
		url:"<%=request.getContextPath()%>/item/basket/modify",
		dataType:"json",
		//contentType:"application/json; charset=UTF-8",
		success : function(test){
			alert('상품 수량이 변경되었습니다.');
			 location.reload();
		},
		error:function(request,status,error){
			console.log( request.responseText );
		}
	});
})/* ajax */

/* 장바구니 제품 삭제 */
$('.remove').click(function(){
	var num = $(this).parents('tr').find('input[name=basket_num]').val();
	$.ajax({
		async:true,
		type:'POST',
		data: {'num': num},
		url:"<%=request.getContextPath()%>/item/basket/remove",
		dataType:"json",
		//contentType:"application/json; charset=UTF-8",
		success : function(test){
			location.reload();
		},
		error:function(request,status,error){
			console.log( request.responseText );
		}
	});
})/* ajax */

	var str3 = '상품금액 : '+ 0 +' + 배송비: 0 = '+ 0; /* 전체 해제시 금액 */
	/* 장바구니 페이지에 들어왔을때 보여지는 디폴트 금액 */
	var total = 0;
	$('.tr').each(function(){
		total += parseInt($(this).find('.item-total').val());
	});
	var str = '상품금액 : '+ total +' + 배송비: 0 = '+ total;	/* 10000원 이상 배송비 무료 금액 */
	var str2 = '상품금액 : '+ total +' + 배송비: 2500 = '+ (total + parseInt(2500));	/* 10000원 이하 배송비 무료 금액 */
	if(total < 10000 && total > 0){
		total += parseInt(2500);
		str = str2;
	}
	$('input[name=total]').val(total);
	$('.fin-price').html(str);


	/* 체크박스에 체크된 값만 계산하는 기능 */
	$('input[name=check]').change(function(){
		var total = 0;
		$('.tr').each(function(){
			if($(this).find('input[name=check]').prop('checked')){ /* tr의 값을 하나씩 꺼내서 check 된 값만 더하는 기능 */
			total += parseInt($(this).find('.item-total').val());
			}
		});
		var str = '상품금액 : '+ total +' + 배송비: 0 = '+ total;	/* 10000원 이상 배송비 무료 금액 */
		var str2 = '상품금액 : '+ total +' + 배송비: 2500 = '+ (total + parseInt(2500));	/* 10000원 이하 배송비 무료 금액 */
		if(total < 10000 && total > 0){
			total += parseInt(2500);
			str = str2;
		}
		$('input[name=total]').val(total);
		$('.fin-price').html(str);
		
		if($(this).prop("checked")){ /* 주문페이지로 넘길때 조건 */
			alert("체크");
			$(this).parents('.tr').find('input[name=check]').val(1);
			if($('input[name=check]').prop('checked')){		/* 체크박스가 전부 체크되었을때 check-all이 체크되는 기능 */  
			}
		}else{
			alert("체크해제");
			$(this).parents('.tr').find('input[name=check]').val(0);
			$('.check-all').prop("checked", false);	/* 체크박스가 전부 체크해제 되었을때 check-all이 체크해제 되는 기능 */
		}
	})
	
	/* 전체 체크박스 값을 체크하는 기능 */
	$('.check-all').change(function(){
		var total = 0;
		$('.tr').each(function(){
			total += parseInt($(this).find('.item-total').val());
		});
		var str = '상품금액 : '+ total +' + 배송비: 0 = '+ total;	/* 10000원 이상 배송비 무료 금액 */
		var str2 = '상품금액 : '+ total +' + 배송비: 2500 = '+ (total + parseInt(2500));	/* 10000원 이하 배송비 무료 금액 */
		if($(this).prop("checked")){
			alert("체크");
			$('input[name=check]').prop("checked", true);
			if(total < 10000 && total > 0){
				total += parseInt(2500);
				str = str2;
			}
			$('input[name=total]').val(total);
			$('input[name=check]').val(1);
			$('.fin-price').html(str);
		}else{
			alert("체크 해제");
			$('input[name=check]').prop("checked", false);
			$('input[name=total]').val(0);
			$('input[name=check]').val(0);
			$('.fin-price').html(str3);
		}
	})
</script>
</body>
</html>