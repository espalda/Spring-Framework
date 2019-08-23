<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/path.jsp"></jsp:include>
</head>
<body>
	<tiles:insertAttribute name="header"/>
		<div class="gray">
			<div class="white"> 
				<div class="volume clearfix">
					<div class="mlbx float-left">
					   <a href="<%=request.getContextPath()%>/member/display" 	class="mm-1">PROFILE</a>
					   <a href="<%=request.getContextPath()%>/member/order"		class="mm-1">ORDER</a>
					   <a href="<%=request.getContextPath()%>/member/wishlist" 	class="mm-1">WISHLIST</a>
						<a href="<%=request.getContextPath()%>/member/board" 		class="mm-1">BOARD</a>
					   <a href="<%=request.getContextPath()%>/member/coupon" 	class="mm-1">COUPON</a>
					   <a href="<%=request.getContextPath()%>/member/address" 	class="mm-1">ADDRESS</a>
				  	</div>
  					<div class="mrbx float-left">
	  					<tiles:insertAttribute name="body"/>
 		 			</div>
				</div>
			</div>
		</div>                                  
	<tiles:insertAttribute name="footer"/>
</body>
</html>