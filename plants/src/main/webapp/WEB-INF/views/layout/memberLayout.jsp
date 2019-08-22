<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/script.jsp"></jsp:include>
<script>
$(document).ready(function(){
	$('.o-1').each(function(){
		
		var link = $(this).attr('href');
		var index = link.lastIndexOf('/');
		var linkName = link.substring(index+1);
		var url = location.href;
		var urlIndex = url.lastIndexOf('/');
		var urlName = location.href.substring(urlIndex+1);
		if(urlName == linkName){
			$(this).addClass('active');
		}
	})
	$('.o-1').click(function(){
		console.log('test');
		$('.o-1').removeClass('active');
	   $(this).addClass('active');
	 });
})
</script>
<style>
	.box{
	max-width: 950px;
	margin: 0 auto;
	box-sizing: border-box;
	}
	.m-menu2{
	width: 750px;
	height: 75%;
	padding: 10px 0;
	}
	
	.main-box{
	height: 100%;
	border: 1px solid #b97f6d;
	box-sizing: border-box;
	}

/*--------------- m-menu */
.m-menu{
  width: 200px;
}

.o-1 {
  display: block;
	border-radius: 5px;
	position: relative;
	height: 36px;
	line-height: 36px;
	margin: 10px 10px 10px 0;
	padding: 0 15px;
	font-size: 11px;
	color: #123132;
	text-decoration: none;
	border: 1px solid #7f7f7f;
	letter-spacing: 3px;
	text-align: left;
}

.o-1:hover, .o-1.active {
	color: #ffffff;
	border: 1px solid #7f7f7f;
	background-color: #b97f6d;
}
.fa-angle-right {
  line-height: 35px;
  float: right;
}
.fas, .fa{
  padding-right: 5px;
}
</style>
</head>
<body>
<tiles:insertAttribute name="header"/>
	<div class="wrapper">
		<div class="gray">
			<div class="white"> 
				<div class="box clearfix">
					<div class="m-menu float-left">
						<a href="<%=request.getContextPath()%>/member/display"	class="">P R O F I L E</a>
					   <a href="<%=request.getContextPath()%>/member/modify" 	class="o-1">MODIFY</a>
					   <a href="<%=request.getContextPath()%>/member/order"		class="o-1">ORDER</a>
					   <a href="<%=request.getContextPath()%>/member/wishlist" 	class="o-1">WISHLIST</a>
						<a href="<%=request.getContextPath()%>/member/board" 		class="o-1">BOARD</a>
					   <a href="<%=request.getContextPath()%>/member/coupon" 	class="o-1">COUPON</a>
					   <a href="<%=request.getContextPath()%>/member/address" 	class="o-1">ADDRESS</a>
				  	</div>
  					<div class="m-menu2 float-left">
	  					<div class="main-box">
	  						<tiles:insertAttribute name="body" />
	  					</div>
 		 			</div>
				</div>
			</div>
		</div>
	</div>                                     
<tiles:insertAttribute name="footer" />
</body>
</html>