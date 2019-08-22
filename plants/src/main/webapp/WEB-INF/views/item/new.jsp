<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>

.scale {
  transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 1.5s ease-in-out;   /* 부드러운 모션을 위해 추가*/
}
.scale:hover {
  transform: scale(1.2);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);
}
.img {width: 300px;
	overflow:hidden }   /* 부모를 벗어나지 않고 내부 이미지만 확대 */
</style>
</head>
<body class="text-center">
	<div class="container">
		<h1>NEW ARRIVAL</h1>
		<div class="img">
   		<div class="scale"><img src="<%=request.getContextPath()%>/resources/img/item-1.jpg" width="300px"></div>
		</div>
	</div>
</body>
</html>