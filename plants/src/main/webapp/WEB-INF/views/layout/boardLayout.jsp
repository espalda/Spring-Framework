<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/script.jsp"></jsp:include>
<style>
	.box{
	max-width: 950px;
	margin: 0 auto;
	padding: 10px 0;
	}
</style>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<div class="wrapper">
		<div class="gray">
			<div class="white">
				<div class="box">
       			<tiles:insertAttribute name="body" />
       		</div>
			</div>
		</div>
	</div>                                     
	<tiles:insertAttribute name="footer" />
</body>
</html>
