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
li {
float: left;
}
/* header-01 --------- */
.header-01 {
width: 100%;
height: 40px;
padding: 5px 100px;
background: #d0d3dc;
}
.h1-right {
float: right;
position: relative;
}
.h1-right li {
padding: 5px;
}
.h1-search {
float: right;
}
.h1-search input {
all: unset;
position: relative;
border-radius: 5px;
width: 130px;
height: 30px;
padding: 4px;
background: #eee;
padding-left: 10px;
height: 20px;
}
.h1-search input:hover {
background: #ddd;
}
.h1-search i {
font-size: 15px;
line-height: 22px;
}
/* header-02 --------- */
.header-02 {
width: 100%;
height: 180px;
padding: 5px 100px;
}
.h2-logo{
margin: 0 auto;
}
/* header-03 --------- */
.header-03 {
width: 100%;
height: 40px;
padding: 5px 0;
}
.header-03 .h3-menu {
width: 600px;
height: 30px;
margin: 0 auto;
}
.header-03 li {
padding: 0 20px;
font-weight: bold;
line-height: 10px;
}
.h3-menu {
margin: 0 auto;
padding: 10px;
}
.h3-hover {
position: absolute;
left: 34%;
margin-top: 5px;
border: 1px solid #eee;
width: 585px;
height: 240px;
background: white;
z-index: 10;
padding: 20px 10px;
}
.h3-hover-box {
float: left;
border: 1px solid #ddd;
width: 200px;
height: 200px;
margin: 0 10px;
}
.h3-hover-list {
float: left;
border: 1px solid #ddd;
height: 200px;
width: 100px;
margin: 0 10px;
}
.h3-hover-list li {
	width: 100px;
	padding: 20px;
	text-align: center;
	cursor: pointer;
}
.h3-hover-list .img-sm {
	float: right;
}
.h3-hover-list li:hover {
	background: #eee;
  	transition: 0.8s;
}
</style>

</head>
<body>
	<div class="header-01">
		<div class="h1-search">
			<input type="text">
			<span><i class="fas fa-search"></i></span>
		</div>
		<div class="h1-right">
			<ul>
				<li><a href="#" title="로그인"><b>로그인</b></a></li>
				<li>|</li>
				<li><a href="#" title="회원가입">회원가입</a></li>
				<li>|</li>
				<li><a href="#" title="장바구니">장바구니</a></li>
				<li>|</li>
				<li><a href="#" title="관심상품">관심상품</a></li>
				<li>|</li>
				<li><a href="#" title="나의메뉴">나의메뉴<img src="https://img.icons8.com/small/16/000000/expand-arrow.png"/ class="img-sm"></a></li>
				<li>|</li>
			</ul>
		</div>
	</div>
	
	
	<div class="header-02">
		<div class="h2-logo" style="width: 170px;">
			<a href="/body"><img src="<c:url value='/resources/img/logo-test.png' />" style="width: 170px;"/></a>
		</div>
	</div>
	
	<div class="header-03">
		<div class="h3-menu">
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
		
		<div class="h3-hover" style="display: none;">
			<div class="h3-hover-list">
				<ul>
					<li>바디로션<img src="https://img.icons8.com/small/16/000000/more-than.png" class="img-sm"></li>
					<li>바디워시<img src="https://img.icons8.com/small/16/000000/more-than.png" class="img-sm"></li>
					<li>바디세트<img src="https://img.icons8.com/small/16/000000/more-than.png" class="img-sm"></li>
					<li>컨디셔너<img src="https://img.icons8.com/small/16/000000/more-than.png" class="img-sm"></li>
				</ul>
			</div>
			<div class="h3-hover-box">
				<img>
			</div>
			<div class="h3-hover-box">
				<img>
			</div>
		</div>
		
	</div>
<script>
$('.h3-menu').hover(function(){
	$('.h3-hover').css('display', 'block');
	//$('.h3-hover').attr('style', 'display:block');
})
</script>
</body>
</html>