<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
	font-size: 11px;
	}
	
	.line{
	 color: #b97f6d;    /* IE */
    border-color: #b97f6d;  /* 사파리 */
    background-color: #b97f6d;   /* 크롬, 모질라 등, 기타 브라우저 */
	 width: 90%;
	 }
	
	ul{
	 list-style:none;
	 margin: 0;
	 padding: 0;
	}
	
	.bg-color{
	background-color:#b97f6d;
	color: #ffffff;
	padding: 10px;
	}
	
	.box-1{
	width: 90%;
	}
	
	.box-2{
	width: 100%;
	}
	
	
	.box-3>li, .ul-0{
	float: left;
	font-weight: bold;
	word-spacing: 2px;
	border-right: 1px dotted gray;
	width: calc( 100% / 5 );
	height: 60px;

	}
	

	
	.label-a, .label-a:hover{
	display: list-item;
	margin : 0 auto;
	text-decoration: none;
	color: black;
	}

</style>
</head>
<body class="text-center">
	<div class="py-3">
		<p>M Y  P A G E</p>
			<hr class="line">
		<div class="mb-3">
			<ul class="top">
				<li>adorable 님은 환영합니다.</li>
				<li><span>등급 : </span>		<a class="a-black" href="<%=request.getContextPath()%>/#">[ 환영 ]</a></li>
				<li><span>총적립금 : </span>	3050 원<button class="btn-1">조회</button></li>
				<li><span>총주문 : </span>		52900원</li>
				<li><span>쿠폰 : </span>		3개<button class="btn-1">조회</button></li>
			</ul>
		</div>
		
		<div class="box-1 mx-auto">
			<nav class="bg-color">나의 주문 처리 현황 (최근 3개월 기준)</nav>
				<div class="box-2 py-2 clearfix">
				<ul class="box-3">
					<li><label>입금전</label>		<a class="label-a" href="#">0</a></li>
					<li><label>배송준비중</label> <a class="label-a" href="#">0</a></li>
					<li><label>배송중</label>		<a class="label-a" href="#">0</a></li>
					<li><label>배송완료</label>	<a class="label-a" href="#">1</a></li>
				</ul>
			      <ul class="ul-0 border-0">
			      	<li>취소 : <a href="#">0</a></li>
			      	<li>교환 : <a href="#">0</a></li>
			      	<li>반품 : <a href="#">0</a></li>
			     	</ul>

			 	</div>
		</div>
	</div>
</body>
</html>