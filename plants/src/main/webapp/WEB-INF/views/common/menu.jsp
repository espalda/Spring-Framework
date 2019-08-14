<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  .box{
  margin: 0 auto;
  width: 800px;
  
  }
	.member-menu {
	  width: 200px;
	}

	.member-btn, .member-btn:hover {
	  display: block;
	  position: relative;
	  height: 36px;
	  line-height: 36px;
	  margin: 10px;
	  padding: 0 15px;
	  font-size: 11px;
	  color: #123132;
	  text-decoration: none;
	  border: 1px solid #7f7f7f;
	  background-color: #ffffff;
	  letter-spacing: 3px;
	}

	 .member-btn:active .active{
	  display: block;
	  position: relative;
	  height: 36px;
	  line-height: 36px;
	  margin: 10px;
	  padding: 0 15px;
	  font-size: 11px;
	  color: #ffffff;
	  text-decoration: none;
	  border: 1px solid #7f7f7f;
	  background-color: #b97f6d;
	  letter-spacing: 3px;
	 }

	.member-main{
	width: 600px;
	height: 75%;

	padding: 10px;
	}
	
	.main-box{
	height: 100%;
	border: 1px solid #b97f6d;
	box-sizing: border-box;
	}
  </style>
</head>
<body>
<div class="box clearfix">
	<nav class="member-menu float-left">
   <a href="#" class="member-btn">PROFILE</a>
   <a href="#" class="member-btn">ORDER</a>
   <a href="#" class="member-btn">WISHLIST</a>
	<a href="#" class="member-btn">BOARD</a>
   <a href="#" class="member-btn">COUPON</a>
   <a href="#" class="member-btn">ADDRESS</a>
  	</nav>
  <div class="member-main float-left">
  		<div class="main-box"></div>
  </div>
</div>


</body>
</html>
