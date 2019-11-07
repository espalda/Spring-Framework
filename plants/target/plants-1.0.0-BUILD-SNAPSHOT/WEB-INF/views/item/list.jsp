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
	.centered{
	font-size: 60px;
	position: absolute;
	top: 50%;
	left: 50%;
 	transform: translate(-50%, -50%);
	color: white;
	}
	h1{
	font-family: 'Mansalva', cursive;
	font-size: 100px;
	}
</style>
</head>
<body>
	<div class="container">
		<section style="position:relative;">
		<c:if test="${cri.type eq 'Succulents'}">
			<h1 class="centered">Succulents</h1>
			<img src="<%=request.getContextPath()%>/resources/img/itembg-1.jpg" width="100%">
		</c:if>
		<c:if test="${cri.type eq 'Cactus'}">
			<h1 class="centered">Cactus</h1>
			<img src="<%=request.getContextPath()%>/resources/img/itembg-9.jpg" width="100%">
		</c:if>
		<c:if test="${cri.type eq 'Plant'}">
			<h1 class="centered">Plant</h1>
			<img src="<%=request.getContextPath()%>/resources/img/itembg-6.jpg" width="100%">
		</c:if>
		<c:if test="${cri.type eq 'Hanging plant'}">
			<h1 class="centered">Hanging plant</h1>
			<img src="<%=request.getContextPath()%>/resources/img/itembg-2.jpg" width="100%">
		</c:if>
		<c:if test="${cri.type eq 'Goods'}">
			<h1 class="centered">Goods</h1>
			<img src="<%=request.getContextPath()%>/resources/img/itembg-5.jpg" width="100%">
		</c:if>
		</section>
		
		<section class="text-center">
			<div class="item-2 clearfix">
			<c:forEach var="item" items="${itemList }">
			<div class="item-list">
				<a href="<%=request.getContextPath()%>/item/display?num=${item.num}">
				<div class="img">
					<img class="scale" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="350px" height="350px">
				</div>
				<h2>${item.name }</h2>
				<h3>${item.price }</h3>
				</a>
			</div>
			</c:forEach>
			</div>
		</section>
	</div>
	<!-- pagination code -->
		<div class="pagination" style="justify-content: center;">
			<c:if test="${pageMaker.prev}">
				<a href="<%=request.getContextPath()%>/item/list?page=${pageMaker.startPage-1}&type=${pageMaker.criteria.type}"><i class="fas fa-backward"></i></a>
		 	</c:if>
		 	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
				<c:if test="${pageMaker.criteria.page == index}">
					<a class="active" href="<%=request.getContextPath()%>/item/list?page=${index}&type=${pageMaker.criteria.type}">${index}</a>
				</c:if>
				<c:if test="${pageMaker.criteria.page != index}">
					<a href="<%=request.getContextPath()%>/item/list?page=${index}&type=${pageMaker.criteria.type}">${index}</a>
				</c:if>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<a href="<%=request.getContextPath()%>/item/list?page=${pageMaker.endPage+1}&type=${pageMaker.criteria.type}"><i class="fas fa-forward"></i></a>
			</c:if>
		</div>
</body>
</html>