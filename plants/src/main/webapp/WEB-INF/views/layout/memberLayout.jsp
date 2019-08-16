<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/script.jsp"></jsp:include>
	<style>
	.gray{
	background-color: #ededed;
	}
	
	.white{
	background-color: #ffffff;
	width: 90% !important;
	}
	
	.main-box{
	border: 1px solid #b97f6d;
	box-sizing: border-box;
	}
	
	.box{
	width: 950px;
	margin: 0 auto;
	}
	
	.member-menu {
	width: 200px;
	}

	.member-btn, .member-btn:hover {
	display: block;
	position: relative;
	height: 36px;
	line-height: 36px;
	margin: 10px 10px 10px 0;
	padding: 0 15px;
	font-size: 11px;
	color: #123132;
	text-decoration: none;
	border: 1px solid #7f7f7f;
	background-color: #ffffff;
	letter-spacing: 3px;
	text-align: left;
	}

	.member-btn:active, .active{
	display: block;
	position: relative;
	height: 36px;
	line-height: 36px;
	margin: 10px 10px 10px 0;
	padding: 0 15px;
	font-size: 11px;
	color: #ffffff;
	text-decoration: none;
	border: 1px solid #7f7f7f;
	background-color: #b97f6d;
	letter-spacing: 3px;
	text-align: left;
	}

	.member-main{
	width: 750px;
	height: 75%;
	padding: 10px 0;
	}
	
	.main-box{
	height: 100%;
	border: 1px solid #b97f6d;
	box-sizing: border-box;
	}
	
	</style>
</head>
<body>
    <tiles:insertAttribute name="header"/>
       
    <div class="gray h-100">
    	<div class="white mx-auto h-100">
    		<div class="box clearfix">
				<nav class="member-menu float-left">
					<div class="border h-25" style="margin: 10px 10px 0 0;"></div>
					<a href="<%=request.getContextPath()%>/member/display" class="">P R O F I L E</a>
				   <a href="<%=request.getContextPath()%>/member/modify" class="member-btn">MODIFY</a>
				   <a href="<%=request.getContextPath()%>/member/order" class="member-btn">ORDER</a>
				   <a href="<%=request.getContextPath()%>/member/wishlist" class="member-btn">WISHLIST</a>
					<a href="<%=request.getContextPath()%>/member/board" class="member-btn">BOARD</a>
				   <a href="<%=request.getContextPath()%>/member/coupon" class="member-btn">COUPON</a>
				   <a href="<%=request.getContextPath()%>/member/address" class="member-btn">ADDRESS</a>
			  	</nav>
  				<div class="member-main float-left">
  					<div class="main-box">
  						<tiles:insertAttribute name="body" />
  					</div>
 		 		</div>
			</div>
    	</div>
    </div>
                                           
    <tiles:insertAttribute name="footer" />
</body>
</html>
