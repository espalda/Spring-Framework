<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.item-2{
	width: 1120px;
	margin: 0 auto;
	}
	.item-list{
	float: left;
	padding: 10px;
	}
	.centered {
	font-size: 60px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<div class="container">
		<section style="position:relative;">
			<h1 class="centered">Succulents</h1>
			<img src="<%=request.getContextPath()%>/resources/img/back-6.jpg" width="100%">
		</section>
		
		<select name="category">
			<option value="등록순">등록순</option>
			<option value="가격순">가격순</option>
			<option value="인기순">인기순</option>
		</select>
		
		<section class="text-center">
			<div class="item-2 clearfix">
			<c:forEach var="item" items="${itemList }">
			<div class="item-list">
				<a href="<%=request.getContextPath()%>/item/display?num=${item.num}">
				<div class="img">
					<img class="scale" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="350px" height="auto">
				</div>
				<h2>${item.name }</h2>
				<h3>${item.price }</h3>
				</a>
			</div>
			</c:forEach>
			</div>
		</section>
		
	</div>
</body>
</html>