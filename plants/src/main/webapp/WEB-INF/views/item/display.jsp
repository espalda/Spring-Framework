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
</style>

</head>
<body>
<div class="container-11">
	<div class="clearfix mx-auto" style="width:710px;">
	
	<section class="float-left">
		<div class="img-l1 img-magnifier-container" style="width:350px;">
			
			<img id="myimage" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="350px" height="auto">
			
		</div>
	</section>
	
	<section class="float-left">
		<div class="img-r1">
			<p><mark>클릭시 해당 카테고리 리스트로 돌아가는 기능</mark>${item.category }</p>
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
					<select>
						<option>선택</option>
						<option value="${item.option}">${item.option}</option>
					</select>
				</li>
				<li>
					<label>수량</label>
					<span><input type="number" value="${item.count}"></span>
				</li>
				<li>
					<label>총합계</label> 
					<span><mark>판매가 * 수량 + 배송비</mark></span>
				</li>
			</ul>
		
		
		<button class="btn-tree">ORDER</button>
		<button class="btn-raw">CART</button>
		
		</div>
	</section>
</div>

	<div class="bottom mx-auto"><mark>함께 구매하시면 좋은 제품</mark></div>
	<div class="bottom mx-auto">${item.contents }</div>
</div>

<script>
/* Execute the magnify function: */
magnify("myimage", 2);
/* Specify the id of the image, and the strength of the magnifier glass: */ 
</script>
</body>
</html>