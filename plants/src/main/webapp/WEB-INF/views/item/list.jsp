<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	ul, li{
	text-decoration: none;
	list-style:none;
	padding-left:0px;
	}
	
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
			<div class="clearfix">
				<div class="dropdown float-right">
					<button type="button" class="dropdown-toggle" data-toggle="dropdown">정 렬</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">등록순</a>
					   <a class="dropdown-item" href="#">가격순</a>
					   <a class="dropdown-item" href="#">인기순</a>
					</div>
				</div>
			</div>

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