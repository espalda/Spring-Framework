<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	/** image-zoom-1 */
.scale {
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 1.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
}
.scale:hover {
  transform: scale(1.5);
  -webkit-transform: scale(1.5);
  -moz-transform: scale(1.5);
  -ms-transform: scale(1.5);
  -o-transform: scale(1.5);
}

	.img {
	width: 300px;
	height: 300px;
	overflow:hidden }   /* 부모를 벗어나지 않고 내부 이미지만 확대 */
	
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
<body class="text-center">
	<div class="container">
		<img src="<%=request.getContextPath()%>/resources/img/back-5.jpg">
		<h4>새로나온 신상품을 빠르게 만나보세요</h4>
	
		<div class="item-2 clearfix">
			<c:forEach var="item" items="${itemNewList }">
				<div class="item-list">
					<a href="<%=request.getContextPath()%>/item/display?num=${item.num}">
						<div class="img">
							<img class="scale" src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="300px" height="300px">
						</div>
						<h2>${item.name }</h2>
						<h3>${item.price }</h3>
					</a>
				</div>
			</c:forEach>
		</div>
		
	</div>

</body>
</html>