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
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/item/basket" method="post" id="item-form">

	<!-- input hidden -->
	<input type="hidden" name="member_id" value="${login.id }">
	<input type="hidden" name="num" value="${item.num }">
	
	<div class="container-11">
		<div class="clearfix mx-auto" style="width:710px;">
		<section class="float-left">
			<div class="img-l1 img-magnifier-container" style="width:350px;">
				
				<img id="myimage" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="350px" height="auto">
				
			</div>
		</section>
		
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
						<div></div>
						
					</li>
				</ul>
				
			<a href="<%=request.getContextPath()%>/item/basket">
			<button class="btn-raw basket">CART</button></a>
			<a href="<%=request.getContextPath()%>/item/order">
			<button type="button" class="btn-tree order">ORDER</button></a>
			
			
			</div>
		</section>

	</div>

	<div class="bottom mx-auto"><mark>함께 구매하시면 좋은 제품</mark></div>
	<div class="bottom mx-auto">${item.contents }</div>
</div>
</form>

<script>
/* ajax로 옵션 테이블 정보를 불러오는 기능 */
	$('#opt-select').change(function(){
		var num = $(this).val();
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
				$('.addition>.total-option>input').each(function(){
					//console.log('code:',$(this).attr('code'));
					//console.log('num:',num);
					if($(this).attr('code') == num){ /* 중복된 값이 존재하면 input 태그 생성 하지 않는다 */
						create = false;
					}
				})
				var str = '<div class="total-option"><input type="text" name="option" code="'+test.op.num+'" value="'+test.op.option_price+'">'+
				'<label>수량</label><span><input type="number" class="num" min="1" max="99" name="count" value="1">'+
				'<strong class="total"></strong></span>';
				
				if(create){
					$('.addition').append(str);
					var count = $('input[name=count]').val();
					var delivery = ${item.delivery_charge};
					var option = test.op.option_price;
					var total_price = ( parseInt(option) * count + parseInt(delivery) ); 
					$('.total').html(total_price+"원");
				}else{
					alert('이미 선택된 옵션 입니다.')
				}
				
				/* 수량이 변경되거나 옵션이 추가되었을 때 총 가격의 변동 */
				
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