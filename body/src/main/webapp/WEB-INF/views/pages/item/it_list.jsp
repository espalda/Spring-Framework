<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.item-info {
border: 1px solid black;
width: 350px;
height: 475px;
float: left;
margin: 13px;
cursor: pointer;
}
.item-img {
border: 1px solid black;
height: 350px;
}
.item-des {
border: 1px solid black;
height: 50px;
}
.item-price {
border: 1px solid black;
height: 50px;
}
.content {
width: 1130px;
border: 1px solid black;
margin: 0 auto;
}
</style>
<body>
<div class="container">
	<img src="#" width="1130px" height="300px">
	<div class="item-info">
		<div class="item-img"></div>
		<div class="item-des"></div>
		<hr>
		<div class="item-price"></div>
	</div>
	<div class="item-info">
		<div class="item-img"></div>
		<div class="item-des"></div>
		<hr>
		<div class="item-price"></div>
	</div>
	<div class="item-info">
		<div class="item-img"></div>
		<div class="item-des"></div>
		<hr>
		<div class="item-price"></div>
	</div>
</div>
</body>
<script>
$('.item-info').click(function(){
	$(location).attr('href', '<c:url value="/pages/item/it_detail" />');
})
</script>