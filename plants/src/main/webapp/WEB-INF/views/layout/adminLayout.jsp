<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/script.jsp"></jsp:include>
<style>
	.menu{
	height: 100%;
	}
</style>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<div class="wrapper">
		<div class="gray">
			<div class="white">
				<tiles:insertAttribute name="menu" />
				<div class="menu"></div>
       		<tiles:insertAttribute name="body" />
       		
			</div>
		</div>
	</div>                                     
	<tiles:insertAttribute name="footer" />
</body>
</html>
