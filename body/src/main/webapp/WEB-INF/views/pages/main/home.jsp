<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.container {
display: flex;
flex-direction: row;
}
.item {
flex: 1;
border: 1px solid black;
height: 450px;
cursor: pointer;
}
</style>
<div class="container">
	<div class="item">
	</div>

	<div class="item">
	</div>

	<div class="item">
	</div>
</div>
<script>
$('.main-01').click(function(){
	$(location).attr('href', '<c:url value="/pages/item/it_detail" />');
})
</script>