<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.basket-item {
position: absolute;
left: 1200px;
width: 400px;
background: #fff;
border: 1px solid black;
z-index: 100;
text-align: center;
padding: 20px;
}
.box {
float: left;
width: 100px;
height: 100px;
border: 1px solid black;
}
.it_detail2 {
float: left;
width: 240px;
height: 100px;
border: 1px solid black;
margin-left: 18px;
}
</style>

<div class="basket-item" style="display: none;">
<h1>장바구니</h1> 
<div>담은 상품이 없습니다.</div>
<div class="box"></div>
<div class="it_detail2"></div>
<div class="btn-3">장바구니 보기</div>
</div>