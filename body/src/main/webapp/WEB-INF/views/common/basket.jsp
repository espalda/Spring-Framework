<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
/* -- basket -- */
.bsk {
position: absolute;
left: 1200px;
width: 400px;
background: #fff;
border: 1px solid #d2d2d2;
border-radius: 5px;
z-index: 100;
padding: .75rem;
text-align: center;
}
.bsk-1 {
float: left;
width: 100%;
height: 70px;
border: 1px solid #d2d2d2;
}
</style>
<div class="bsk">
	<table class="table">
		<tr>
			<th colspan="2"><img src="https://img.icons8.com/small/16/000000/shopping-basket.png"/>장바구니</th>
		</tr>
		<tr>
			<th width="20%" style="padding: .75rem 0;"><div class="bsk-1"></div></th>
			<th width="80%" style="padding: .75rem 0 .75rem .75rem;"><div class="bsk-1"></div></th>
		</tr>
	</table>
	<input type="button" value="장바구니 보기"/>
	<input type="button" value="주문하기"/>
</div>