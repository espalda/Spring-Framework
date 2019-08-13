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
	</style>
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="gray h-100">
    	<div class="white mx-auto h-100">      
       	<tiles:insertAttribute name="body" />
       </div>
    </div>                                        
    <tiles:insertAttribute name="footer" />
</body>
</html>
