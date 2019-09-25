<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
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
<body class=" text-center">
<div class="container">
		<p>미세먼지로 부터 집안의 공기를 보호해요.</p>
		<mark>함께 구매하세요. 원예용품 식물영양제</mark>
	</div>
	
			<div class="item-2 clearfix">
			<c:forEach var="event" items="${eventList }">
				<div class="item-list">
					<a href="<%=request.getContextPath()%>/item/display?num=${event.num}">
						<div class="img">
							<img class="scale" src="<%=request.getContextPath()%>/resources/uploadfiles${event.file}" width="300px" height="300px">
						</div>
						<h2>${event.name }</h2>
						<h3>${event.price }</h3>
					</a>
				</div>
			</c:forEach>
		</div>
	
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
</body>
