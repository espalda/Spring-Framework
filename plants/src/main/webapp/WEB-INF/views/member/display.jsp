<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	
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

	.top label{
	display:inline-block;
	text-align: left;
	width: 100px;
	margin: 0 auto;
	}
</style>
</head>
<body class="text-center">
	<div class="py-3">
		<p>M Y  P A G E</p>
			<hr class="member-line">
		<div class="mb-3">
			<ul class="top">
				<li>adorable 님은 환영합니다.</li>
				<li><label>등급 : </label>		<label><a class="a-black" href="<%=request.getContextPath()%>/#">[ 환영 ]</a></label></li>
				<li><label>총적립금 : </label>	<label>3050 원<button class="btn-1">조회</button></label></li>
				<li><label>총주문 : </label>		<label>52900원</label></li>
				<li><label>쿠폰 : </label>		<label>3개<button class="btn-1">조회</button></label></li>
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