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
						<a href="<%=request.getContextPath()%>/admin/seller"	class="am-1">SELLER</a>
					   <a href="<%=request.getContextPath()%>/admin/member" 	class="am-1">MEMBER</a>
					   <a href="<%=request.getContextPath()%>/admin/item"		class="am-1">ITEM</a>
					   <a href="<%=request.getContextPath()%>/admin/order" 	class="am-1">ORDER</a>
						<a href="<%=request.getContextPath()%>/admin/board" 	class="am-1">BOARD</a>
				  	</div>
  					<div class="mrbx float-right">
	  					<tiles:insertAttribute name="body"/>
 		 			</div>
				</div>
			</div>
		</div>                                 
	<tiles:insertAttribute name="footer"/>
</body>
</html>