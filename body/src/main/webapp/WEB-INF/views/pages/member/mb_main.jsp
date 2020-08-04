<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.profile {
width: 150px;
height: 150px;
border: 1px solid black;
}
.mb-01 {
width: 800px;
margin: 0 auto;
}
</style>
<table class="table table-bordered mb-01">
<tr>
	<td>나의 프로필</td>
</tr>
<tr>
	<td>등 급 : n 등급<button>혜택보기</button></td>
</tr>
<tr>
	<td>보유 적립금 : n 원<button>사용내역</button></td>
</tr>
<tr>
	<td>쿠 폰 : n 장<button>보유 쿠폰</button></td>
</tr>
<tr>
	<td>
		<ul>
			<li>입금대기</li>
			<li><img src="https://img.icons8.com/ios-glyphs/32/000000/forward.png"/></li>
			<li>결제완료</li>
			<li><img src="https://img.icons8.com/ios-glyphs/32/000000/forward.png"/></li>
			<li>상품준비중</li>
			<li><img src="https://img.icons8.com/ios-glyphs/32/000000/forward.png"/></li>
			<li>배송중</li>
			<li><img src="https://img.icons8.com/ios-glyphs/32/000000/forward.png"/></li>
			<li>배송완료</li>
		</ul>
	</td>
</tr>
</table>