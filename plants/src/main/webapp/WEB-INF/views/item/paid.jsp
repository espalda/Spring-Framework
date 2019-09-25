<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.paid{
margin: 0 auto;
width: 700px;
height: auto;
background-color: white;
border: 1px solid black;
}
</style>
</head>
<body class="text-center">
	<div class="container">
		<div class="paid">
		<h2>피클즈의 제품을 주문해주셔서 감사합니다.</h2>
		<p>주문번호 : ${order_num }</p>
		<p>최종결제금액 : ${total }</p>
		<p>주문내역확인은 마이페이지의 주문/배송조회에서 확인하실 수 있습니다.</p>
		</div>
	</div>
</body>
