<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
	box-sizing: border-box;	
	}
	
	ul, li{
	text-decoration: none;
	list-style:none;
	padding-left:0px;
	}

	.img-l1{
	width: 350px;

	box-sizing: border-box;
	}
	.img-l2{
	width: 350px;
	}
	
	.img-r1{
	height: 350px;
	}
	
	li label{
	width: 50px;
	}
	
	.bottom{
	width: 700px;
	height: 100px;
	}

</style>
</head>
<body>
<div class="container">
	<div class="clearfix mx-auto" style="width: 700px;" >
	<section class="float-left">
		<div class="img-l1 border-raw">
			<img src="<%=request.getContextPath()%>/resources/img/item-1.jpg" width="350px" height="auto">
		</div>
		<div class="img-l2 border-raw">제품 상세 설명
		제품 상세 설명제품 상세 설명제품 상세 설명제품 상세 설명제품 상세 설명
		</div>
	</section>
	
	<section class="float-left">
		<div class="img-r1 border-raw">
			<p>Succulents</p>
			<p>Succulents item name</p>
			<hr>
			<ul>
				<li>
					<label>판매가</label>
					<span>5200원</span>
				</li>
				<li>
					<label>배송비</label>
					<span>무료</span>
				</li>
				<li>
					<label>할인정보</label>
					<span><button class="btn-1">쿠폰</button></span>
				</li>
				<li>
					<label>수량</label>
					<span><input type="number"></span>
				</li>
				<li>
					<label>총합계</label>
					<span>5200원</span>
				</li>
			</ul>
		</div>
		
		<button class="btn-tree">O R D E R</button>
		<button class="btn-raw">A D D T O C A R T</button>
	</section>
</div>

	<div class="bottom border-raw mx-auto">RELATED PRODUCT</div>
	<div class="bottom border-raw mx-auto">CONTENTS</div>
</div>
</body>
</html>