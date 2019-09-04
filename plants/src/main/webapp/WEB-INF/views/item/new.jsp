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
<body class="text-center">
	<div class="container">
		<h1>NEW ARRIVAL</h1>
		<div class="item-1">
		<ul class="item-2 clearfix">
		<c:forEach var="item" items="${itemNewList }">
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