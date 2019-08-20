<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/script.jsp"></jsp:include>
<style>
	.menu-1{
	width: 250px;
	height: 100%;
	}
	.menu-2{
	width: 900px;
	height: 100%;
	border:1px solid black;
</style>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<div class="wrapper">
		<div class="gray">
			<div class="white clearfix">
				<div class="menu-1 float-left">
					<tiles:insertAttribute name="menu" />
				</div>
				<div class="menu-2 float-left">
       		<tiles:insertAttribute name="body" />
       	</div>
			</div>
		</div>
	</div>                                     
	<tiles:insertAttribute name="footer" />
</body>
</html>
