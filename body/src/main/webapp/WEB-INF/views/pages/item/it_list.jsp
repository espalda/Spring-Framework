<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.container {
display: flex;
justify-content: space-between;
flex-direction: row;
}
.item-info {
border: 1px solid black;
cursor: pointer;
width: 360px;
height: 400px;
}
</style>
<body>
<img src="#" height="300px" width="1000px">
<div class="container">
	<div class="item-info"></div>
	<div class="item-info"></div>
	<div class="item-info"></div>
</div>
</body>
<script>
$('.item-info').click(function(){
	$(location).attr('href', '<c:url value="/pages/item/it_detail" />');
})
</script>