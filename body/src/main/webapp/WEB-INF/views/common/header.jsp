<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style>
* {
text-decoration: none;
font-family: "Nanum Gothic";
font-size: 12px;
color: #555;
box-sizing: border-box;

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
.header {
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
</style>
</head>
<body>
	<div class="header">
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
</body>
</html>