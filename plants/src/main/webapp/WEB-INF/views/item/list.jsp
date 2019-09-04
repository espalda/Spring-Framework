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
		<img src="<%=request.getContextPath()%>/resources/img/garlic-3.jpg" width="100%" height="300">
		<select name="category">
			<option value="1">등록순</option>
			<option value="2">가격순</option>
			<option value="3">인기순</option>
		</select>
	
	<div class="item-1 text-center">
		<ul class="item-2 clearfix">
		<c:forEach var="item" items="${itemList }">
			<li>
				<a href="<%=request.getContextPath()%>/item/display?num=${item.num}">
				<div class="img">
					<img class="scale" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="350px" height="auto">
				</div>
				<h1>${item.name }</h1>
				<h2>${item.price }</h2>
				</a>
			</li>
		</c:forEach>
		</ul>
	</div>
	</div>
</body>
</html>