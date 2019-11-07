<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<style>
body{
text-align: center;
}
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
font-family: 'Mansalva', cursive;
font-size: 100px;
}
	
.img {
width: 300px;
height: 300px;
overflow: hidden;
}   /* 부모를 벗어나지 않고 내부 이미지만 확대 */

.item-2{
width: 960px;
margin: 0 auto;
}

.item-list{
float: left;
padding: 10px;
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
	</div><!-- bootstrap -->
	
	<!-- main -->
	<br>
	<h2>베스트 아이템</h2>
	 <h4> 인기 상품들을 만나보세요</h4>
	
		<div class="item-2 clearfix">
			<c:forEach var="best" items="${bestList }">
				<div class="item-list">
					<a href="<%=request.getContextPath()%>/item/display?num=${best.item_num}">
						<div class="img">
							<img class="scale" src="<%=request.getContextPath()%>/resources/uploadfiles${best.file}" width="300px" height="auto">
						</div>
						<h2>${best.name }</h2>
						<h3>${best.price }</h3>
					</a>
				</div>
			</c:forEach>
		</div>
</body>
</html>
