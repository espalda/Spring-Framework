<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/path.jsp"></jsp:include>
<style>
.sign{
width: 500px;
height: auto;
padding-bottom: 50px;
margin: 0 auto;
background-image: url("<%=request.getContextPath()%>/resources/img/bg-sign.jpg");
}
</style>
</head>
<body>
   <tiles:insertAttribute name="header"/>
		<div class="gray">
		<br>
			<div class="sign"> 
		     	<tiles:insertAttribute name="body" />
			</div>
		</div>                                   
	<tiles:insertAttribute name="footer" />
</body>
</html>