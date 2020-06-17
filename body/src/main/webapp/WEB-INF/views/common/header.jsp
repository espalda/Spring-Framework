<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>  

<!DOCTYPE html>
<html>
<head>
<script>
    //alert("${contextPath}");
</script>
<style>
* {
box-sizing: border-box;
text-decoration: none;
font-family: "Nanum Gothic";
font-size: 12px;
color: #555;
}
a, a:hover, a:visited {
text-decoration: none;
color: #555;
}
a:active {
color: #96a5b7;
}
ul, ol{
padding-left:0px;
list-style:none;
}
li {
float: left;
}
.header-to {
border: 1px solid black;
width: 100%;
height: 40px;
padding: 5px 100px;
}
.head-left {
float: left;
position: relative;
}
.head-left li {
padding: 5px;
}
.head-left i {
padding-right: 5px;
color: red;
}
.head-right {
float: right;
position: relative;
}
.head-right li {
padding: 5px;
}
.head-search {
float: right;
border-radius: 5px;
width: 165px;
height: 30px;
padding: 5px;
background: #ddd;
}
.head-search input {
position: relative;
all: unset;
padding-left: 5px;
}
.head-search i {
font-size: 15px;
line-height: 22px;
}
.header-md {
border: 1px solid black;
width: 100%;
height: 180px;
padding: 5px 100px;
}
.header-btm {
border: 1px solid black;
width: 100%;
height: 40px;
padding: 5px 0;
}
.header-btm div {
width: 600px;
height: 30px;
margin: 0 auto;
}
.logo{
margin: 0 auto;
width: 341px;
}
.header-btm li {
padding: 0 20px;
font-weight: bold;
line-height: 10px;
}

</style>

</head>
<body>
	<div class="header-to">
		<div class="head-left">
			<ul>
				<li><i class="far fa-heart"></i><a href="#">즐겨찾기</a></li>
				<li><i class="far fa-bookmark"></i><a href="#">바로가기</a></li>
			</ul>
		</div>
		
		<div class="head-search">
			<input type="text">
			<span><i class="fas fa-search"></i></span>
		</div>
		<div class="head-right">
			<ul>
				<li><a href="#" title="로그인"><b>로그인</b></a></li>
				<li>|</li>
				<li><a href="#" title="회원가입">회원가입</a></li>
				<li>|</li>
				<li><a href="#" title="장바구니">장바구니</a></li>
				<li>|</li>
				<li><a href="#" title="관심상품">관심상품</a></li>
				<li>|</li>
				<li><a href="#" title="나의메뉴">나의메뉴<i class="fas fa-angle-down"></i></a></li>
			</ul>
		</div>
	</div>
	<div class="header-md">
	<!-- D:\github\Spring-Framework\body\src\main\webapp\img\main-logo.png -->
		<%-- <a class="logo" href="<c:url value="/img/main-logo.png"/>"></a> --%>
		<div class="logo">
			<img src="<c:url value='/resources/img/main-logo.png' />" />
		</div>
	</div>
	<div class="header-btm">
		<div>
		<ul>
			<li><a href="#" title="">FEATURED</a></li>
			<li><a href="#" title="">BABY</a></li>
			<li><a href="#" title="">STUDENT</a></li>
			<li><a href="#" title="">ADULT</a></li>
			<li><a href="#" title="">FAMILY</a></li>
			<li><a href="#" title="">SALE</a></li>
			<li><a href="#" title="">EVENT</a></li>
		</ul>
		</div>
	</div>
</body>
</html>