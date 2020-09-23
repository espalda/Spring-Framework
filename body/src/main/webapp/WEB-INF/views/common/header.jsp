<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>  

<!DOCTYPE html>
<html>
<head>
<style>
.hd { display: flex; flex-direction: column; height: 270px; }
.h-item { flex: none; }
.h-item:nth-child(1) { height: 40px; display:flex; justify-content: flex-end; background: #d0d3dc; }
.h-test2 { display: flex; justify-content: flex-end; }
.h-test2 a { text-align: center; flex-basis: 60px }
.h-item:nth-child(2) { height: 180px; display:flex; justify-content: center; }

.h-item:nth-child(3) { height: 50px; display:flex; justify-content: center; border: 1px solid black;}
.h-item:nth-child(3) a { flex: 0 100px; text-align: center; font-size: 15px; }


</style>

</head>
<body>
	<div class="hd">
		<div class="h-item">
			<div class="h-test2">
			<a href="<c:url value="/pages/sign/sign_in" />" title="로그인"><b>로그인</b></a>
			<a href="<c:url value="/pages/sign/sign_up" />" title="회원가입">회원가입</a>
			<a href="<c:url value="#" />" id="basket">장바구니</a>
			<a href="<c:url value="#" />" title="관심상품">관심상품</a>
			<a href="<c:url value="/pages/admin/ad_main" />" title="관리자">관리자</a>
			<a href="<c:url value="/pages/member/mb_main" />" title="나의메뉴">나의메뉴 <img src="https://img.icons8.com/small/16/000000/expand-arrow.png" class="img-sm"></a>
			</div>
		</div>
		
		<div class="h-item">
			<a href="<c:url value="/" />"><img src="<c:url value='/resources/img/logo-test.png' />" width="180px"/></a>
		</div>
		
		<div class="h-item">
			<a href="#" title="">Featured</a>
			<a href="#" title="">Lotion</a>
			<a href="#" title="">Wash</a>
			<a href="#" title="">Soap</a>
			<a href="#" title="">Mist</a>
			<a href="#" title="">Scrup</a>
			<a href="#" title="">Event</a>
		</div>
	</div>
</body>
</html>