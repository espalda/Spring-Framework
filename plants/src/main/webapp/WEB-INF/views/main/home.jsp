<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<style>
/* ------------------bootstrap-image tag */
.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("resources/img/garlic-4.jpg");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  font-family: Consolas,monaco,monospace !important;
  font-size: 11px;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}

h1{
font-family: 'UhBeeDongKyung';
font-size: 100px;
}
</style>
</head>
<body>
	<!-- bootstrap -->
	<div class="hero-image">
	  <div class="hero-text">
	    <h1 style="font-size:50px">For your Atmosphere</h1>
	    <p>I'm Yours to protect your breath</p>
	    <button>click me</button>
	  </div>
	</div>
	<h2>Best</h2>
	<mark>판매 갯수가 높은 아이템 best3<br>
			주문시 주소록 저장, 수량 삭제<br>
			장바구니 주문시 리스트에서 삭제<br>
			삭제 delete를 valid로 변경하기<br>
			cri.search 검색 기능<br>
			등록순, 인기순, 최신순으로 정렬 기능 <br>
	</mark>
</body>
</html>
