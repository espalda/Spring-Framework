<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.item-1 li{
	float: left;
	padding: 10px;
	}
	
	item-2{
	width: 1120px;
	margin: 0 auto;
	}

</style>
</head>
<body>
	<div class="container">
		<img src="<%=request.getContextPath()%>/resources/img/garlic-1.jpg" width="100%" height="300">
		<select>
			<option>등록순</option>
			<option>가격순</option>
			<option>인기순</option>
		</select>

	<div class="item-1">
		<ul class="item-2 clearfix">
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-1.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-2.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-3.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
			<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-1.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-2.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-3.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
			<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-1.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-2.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		<li>
			<a href="<%=request.getContextPath()%>/item/display">
			<img src="<%=request.getContextPath()%>/resources/img/item-3.jpg" width="350px" height="auto">
			<h1>Succulents test</h1>
			<h2>5000 원</h2>
			</a>
		</ul>
	</div>
	</div>
</body>
</html>