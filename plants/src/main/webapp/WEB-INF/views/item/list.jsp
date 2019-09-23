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
		
		<select name="type">
			<option value="등록순" <c:if test="${pageMaker.criteria.type eq '등록순'}">selected</c:if> >등록순</option>
			<option value="가격순" <c:if test="${pageMaker.criteria.type eq '가격순'}">selected</c:if> >가격순</option>
			<option value="인기순" <c:if test="${pageMaker.criteria.type eq '인기순'}">selected</c:if> >인기순</option>
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
	<!-- pagination code -->
		<div class="pagination">
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