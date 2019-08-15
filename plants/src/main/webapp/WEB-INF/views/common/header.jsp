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
		    <a class="nav-link" href="#">HELP</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">ORDER</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">BASKET</a>
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
		  <a class="nav-link" href="#">New</a>
		</li>

		<li class="nav-item">
		  <a class="nav-link" data-toggle="dropdown" href="#">Shop</a>
	<div class="dropdown-menu">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
		</li>

		<li class="nav-item">
		  <a class="nav-link" href="#">Event</a>
		</li>

		<li class="nav-item">
		  <a class="nav-link" href="#">Board</a>
		</li>
	</ul>
	</div>
	</nav>
	
	
</body>
</html>