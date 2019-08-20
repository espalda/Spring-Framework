<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<style>
	
			ul, li, a{
			list-style: none;
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
		left: -50px;
		z-index: 101;
		}
		.shop-1{
		position: relative;
		}
	
	
	
	
	.top-nav a{
	color: #b97f6d;
	letter-spacing: 3px;
	}
	
	.top-nav a:hover{
	text-decoration: none;
	color: #b97f6d;
	}
	
	.top-header{
	border: 1px solid #7f7f7f;
	background-color:#ededed;
	font-size: 10px;
	height: 25px;
	}
	
	.second-nav a{
	color: #123132;
	font-size: 15px;
	letter-spacing: 3px;
	}
	
	.nav-link{
	padding-right: 10px;
	line-height: 5px;
	}
	
	.menu-bar{
	border: 1px solid #7f7f7f;
	background-color:#ededed;
	color: #123132;
	}
	
	.nav-item{
	float: right;
	}
	
	.shop-list a{
			width: 150px;
			color: black;
			background-color: #ededed;
			text-decoration: none;
			display: block;
			padding: 12px;
			font-size: 12px;
			border: 1px solid #b97f6d;
			border-top: 0 !important;
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
			border: 1px solid #b97f6d;
			border-top: 0 !important;
			font-family: Consolas,monaco,monospace;
		}
	</style>
</head>
<body>
	<div class="top-nav">
		<ul class="nav top-header clearfix border-bottom-0 d-block" >
		  <li class="nav-item mr-5">
		    <a class="nav-link" href="<%=request.getContextPath()%>/help">HELP</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/admin/list">ADMIN</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/order">ORDER</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/basket">BASKET</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/member/display">MYPAGE</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/signup">SIGNUP</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/signin">SIGNIN</a>
		  </li>
		</ul>
	</div>
	
	
	<nav class="navbar navbar-expand-sm menu-bar">
	<!-- * menubar -->
 	<a class="navbar-brand" href="#">
	<img alt="" src="<%=request.getContextPath()%>/resources/img/logo-tmp.png" width="200px">
	</a>

	<!-- Links -->
	<div class="second-nav">
		<ul class="navbar-nav">
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/">Home</a>
			</li>
	
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/item/new">New</a>
			</li>

		<div>
		<div class="shop-1">
			<a>shop</a>
				<ul class="shop-list">
					<li><a href="#">Succulents</a></li>
					<li><a href="#">Cactus</a></li>
					<li><a href="#">Plant</a></li>
					<li><a href="#">Hanging plant</a></li>
					<li><a href="#">Goods</a></li>
				</ul>
		</div>
	</div>


	
	
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/item/event">Event</a>
			</li> 
	
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/board/list">Board</a>
			</li>
		</ul>
	</div>
</nav>

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