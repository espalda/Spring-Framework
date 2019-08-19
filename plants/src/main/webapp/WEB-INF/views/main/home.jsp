<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<style>
	.carousel-item{
	padding: 0 150px;
	}
	
	.carousel-control-prev-icon, .carousel-control-next-icon{
	background-color: gray;
	}
</style>
</head>
<body>
	<div id="demo" class="carousel slide" data-ride="carousel">
	
	  <!-- Indicators -->
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	  </ul>
	  
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="<%=request.getContextPath()%>/resources/img/garlic-1.jpg" width="100%" height="300">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/resources/img/garlic-2.jpg" width="100%" height="300">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/resources/img/garlic-3.jpg" width="100%" height="300">
	    </div>
	  </div>
	  
	  <!-- Left and right controls -->
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	</div>
	
</body>
</html>
