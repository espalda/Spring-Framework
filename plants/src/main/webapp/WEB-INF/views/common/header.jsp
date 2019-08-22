<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<style>

	body{
	background-color: #ededed;
	box-sizing: border-box;
	}

	ul, li, a{
	list-style: none;
	text-decoration: none;
	padding-left:0px;
	}
		
	.shop-1 a{
	width: 150px;
	text-decoration: none;
	font-size: 12px;
	}
			
	.shop-list{
	display: none;
	position: absolute;
	border: 1px solid #b97f6d;
	border-top: none;
	left: -50px;
	top: 30px;
	z-index: 999;
  	}
	
	.shop-1{
	position: relative;
	}


/* ---------------------------- navigation-1 */
	.navigation-1{
	border-bottom: 0px;
	background-color:#ededed;
	font-size: 11px;
	height: 25px;
	}
	.navigation-1 a{
	color: #b97f6d;
	line-height: 10px;
	letter-spacing: 1px;
	}
	.navigation-1 ul{
	margin-right: 70px;
	}


/* ---------------------------- navigation-2 */
	.navigation-2{
	width: 90%;
	border-bottom: 1px solid rgba(185, 127, 109, 0.5);
	background-color: white;
	color: #123132;
	margin: 0 auto;
	}
	.navigation-2 a{
	color: #123132;
	font-size: 15px;
	}
	
/* ---------------------------- dropbox-shop */
	.shop-list a{
	width: 150px;
	color: black;
	background-color: #ededed;
	text-decoration: none;
	display: block;
	padding: 12px;
	font-size: 12px;
	border-top: 1px solid #b97f6d;
	font-family: Consolas,monaco,monospace;
	
	}

	.shop-list a:hover{
	width: 150px;
	color: #ffffff;
	background-color: #123132;
	text-decoration: none;
	display: block;
	padding: 12px;
	font-size: 12px;
	border-top: 1px solid #b97f6d;
	font-family: Consolas,monaco,monospace;
	}
	
</style>
</head>
<body>

	<div class="navigation-1">
		<ul class="nav justify-content-end" >
			<li class="nav-item">
		   	<a class="nav-link" href="<%=request.getContextPath()%>/signin">SIGNIN</a>
		  	</li>
		  	<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/signup">SIGNUP</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/member/display">MYPAGE</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/basket">BASKET</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/order">ORDER</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/admin/seller">ADMIN</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/help">HELP</a>
			</li>
		</ul>
	</div>
	

		<!-- Links -->
	<div class="navigation-2">
		<ul class="nav">
			<li class="nav-item">
				<a class="menu-img" href="#"><img alt="" src="<%=request.getContextPath()%>/"></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/">home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/item/new">new</a>
			</li>
			
			<!-- dropbox-tab -->
			<li class="nav-link">
				<div class="shop-1 clearfix">
					<a>product</a>
					<ul class="shop-list">
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list">Succulents</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list">Cactus</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list">Plant</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list">Hanging plant</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list">Goods</a></li>
					</ul>
				</div>
			</li>	
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/item/event">event</a>
			</li> 
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/board/list">board</a>
			</li>
		</ul>
	</div>



<script>
$(".shop-1 > a").mouseenter(function(aaa) {
  $(".shop-list").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(), aaa.stopPropagation()
})

$(".shop-1 .shop-list").mouseleave(function(aaa) {
  $(".shop-list").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(), aaa.stopPropagation()
})
</script>	
</body>
</html>