<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/img/favicon.ico">
	<style>
	
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
	
	
	</style>
</head>
<body>
	<div class="top-nav">
		<ul class="nav top-header clearfix border-bottom-0 d-block" >
		  <li class="nav-item mr-5">
		    <a class="nav-link" href="<%=request.getContextPath()%>/help">HELP</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/order/list">ORDER</a>
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

		<li class="nav-item">
		  <a class="nav-link" data-toggle="dropdown" href="<%=request.getContextPath()%>/item/list">Shop</a>
	<div class="dropdown-menu">
    <a class="dropdown-item" href="<%=request.getContextPath()%>/item/display">Succulents</a>
    <a class="dropdown-item" href="<%=request.getContextPath()%>/item/display">Cactus</a>
    <a class="dropdown-item" href="<%=request.getContextPath()%>/item/display">Plant</a>
    <a class="dropdown-item" href="<%=request.getContextPath()%>/item/display">Hanging plant</a>
    <a class="dropdown-item" href="<%=request.getContextPath()%>/item/display">Goods</a>
  </div>
		</li>

		<li class="nav-item">
		  <a class="nav-link" href="<%=request.getContextPath()%>/item/envent">Event</a>
		</li> 

		<li class="nav-item">
		  <a class="nav-link" href="<%=request.getContextPath()%>/board/list">Board</a>
		</li>
	</ul>
	</div>
	</nav>
	
	
</body>
</html>