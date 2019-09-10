<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.img-l1{
	width: 350px;
	}
	.img-r1{
	height: 350px;
	padding: 10px;
	}
	li label{
	width: 50px;
	}
	.bottom{
	width: 700px;
	height: 100px;
	}
	li p{
	padding-left: 55px;
	margin: 0 0 8px;
	}
	input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
	opacity: 1;
	}
	.option-box strong{
	padding-left: 10px;
	}
	.option-box label{
	padding-left: 10px;
	}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/item/basket" method="post" id="item-form">

	<!-- input hidden -->
	<input type="hidden" name="num" value="${item.num }">
	<input type="hidden" name="member_id" value="${login.id }">
	<input type="hidden" name="seller_member_id" value="${item.seller_member_id}">
	<input type="hidden" name="name" value="${item.name}">
	<input type="hidden" name="file" value="${item.file }">
	<input type="hidden" name="delivery_charge" value="${item.delivery_charge }">
	<input type="hidden" name="total_price" id="total_price">
	<input type="hidden" name="option_total_price" id="option_total_price">

		 
	<div class="container-11">
		<div class="clearfix mx-auto" style="width:710px;">
			<!-- image -->
			<section class="float-left">
				<div class="img-l1 img-magnifier-container" style="width:350px;">
					<img id="myimage" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="350px" height="auto">
				</div>
			</section>
			
			<!-- image info -->
			<section class="float-left">
				<div class="img-r1">
					<p><mark>클릭시 해당 카테고리 리스트로 돌아가는 기능</mark><br>${item.category }</p>
					<h4>${item.name }</h4>
					<hr>
					<ul>
						<li>
							<label>판매가</label>
							<span>${item.price }원</span>
						</li>
						<li>
							<label>배송비</label>
							<span>${item.delivery_charge }원</span>
							<p><mark>10,000원 이상 구매시 배송비 무료</mark></p>
						</li>
						<li>
							<label>옵션</label>
							<select id="opt-select">
									<option>--- 옵션 선택 ---</option>
								<c:forEach var="opt" items="${optionList }">
									<option id="optnum" value="${opt.num }">${opt.option }</option>
								</c:forEach>
							</select>
						</li>
						<li class="addition">
						</li>
						<li>
							<span>총 구매가격</span>	
							<div class="total-price"></div>
						</li>
					</ul>
				<a href="<%=request.getContextPath()%>/item/basket">
				<button class="btn-raw basket">CART</button></a>
				<a href="<%=request.getContextPath()%>/item/order">
				<button type="button" class="btn-tree order">ORDER</button></a>
				</div>
			</section>
		</div>
		<mark>함께 구매하시면 좋은 제품</mark>
		<div class="bottom mx-auto"></div>
		<div class="bottom mx-auto">${item.contents }</div>
	</div>
</form>

<script>
/* ajax로 옵션 테이블 정보를 불러오는 기능 */
	$('#opt-select').change(function(){
		var num = $(this).val();
		if(num == '--- 옵션 선택 ---')
			return;
		$.ajax({
			async:true,
			type:'POST',
			data: {'num':num},
			url:"<%=request.getContextPath()%>/item/option",
			dataType:"json",
			success : function(test){
				//console.log(test.op.num);
				//console.log(test.op.option_price);
				var create = true;
				$('.addition>.option-box>input').each(function(){
					//console.log('code:',$(this).attr('code'));
					//console.log('num:',num);
					if($(this).attr('code') == num){ /* 중복된 값이 존재하면 input 태그 생성 하지 않는다 */
						create = false;
					}
				})
				var str = '<div class="option-box">'+
				'<input type="hidden" name="option_price" value="'+test.op.option_price+'">'+
				'<input type="hidden" name="option_num" value="'+test.op.num+'">'+
				'<input type="text" name="option" code="'+test.op.num+'" value="'+test.op.option+'">'+
				'<label>수량</label>'+
				'<span><input type="number" class="num" min="1" max="99" name="option_count" value="1">'+
				'<strong class="total"></strong></span></div>';
				
				if(create){
					/* str 문자열 추가 */
					$('.addition').append(str);
					/* item 기본 선택시 금액 표시 */
					var option = test.op.option_price;
					$('.addition>.option-box').last().find('.total').html(option+"원");
					
					/* item total 기본 총 금액 구하기 */
					var option_total_price = 0;
					var totally = 0;
					var delivery = 2500;
					$('.option-box').each(function(){
						var op = parseInt($(this).find('input[name=option_price]').val());
						var cnt = parseInt($(this).find('.num').val());
						option_total_price += op * cnt;
					});
					totally = option_total_price + delivery
					$('.total-price').html('상품가격 '+ option_total_price+'원 + 배송비 '+ delivery +'원 = '+ totally + '원');
					$('#total_price').val(totally);
					$('#option_total_price').val(option_total_price);
					
					/* item option 총금액 구하기 */
					/* 옵션에 대한 수량을 클릭했을 때 해당 옵션에 대한 총 금액과 모든 옵션에 대한 총 금액을 변경*/
					$('.num').click(function(){
						var count = parseInt($(this).val());
						//var delivery = parseInt(${item.delivery_charge});
						var option = parseInt($(this).parents('.option-box').find('input[name=option_price]').val());
						var total_price = (option * count); 
						$(this).next().html(total_price+"원");
						
						/* item total 총 금액 구하기 */
						var option_total_price = 0;
						var totally = 0;
						var delivery = 2500;
						$('.option-box').each(function(){
							var op = parseInt($(this).find('input[name=option_price]').val());
							var cnt = parseInt($(this).find('.num').val());
							option_total_price += op * cnt;
							
						}); 
						totally = option_total_price + delivery;
						$('.total-price').html('상품가격 '+ option_total_price+'원 + 배송비 '+ delivery +'원 = '+ totally +'원');
					})
				}else{
					alert('이미 선택된 옵션 입니다.')
				}	
			},
			error:function(request,status,error){
				console.log( request.responseText );
			}
		}); /* ajax */
	}); /* opt-select */

/* magnify image function */
magnify("myimage", 3);

/* action 경로 2가지 설정 */
<%-- $('.basket').click(function(){
	$('#item-form').attr("action", "<%=request.getContextPath()%>/item/basket");
	$('#item-form').submit();
}) --%>
</script>
</body>
</html>