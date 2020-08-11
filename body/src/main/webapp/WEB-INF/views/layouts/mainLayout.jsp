<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>everybody</title>
<jsp:include page="/WEB-INF/views/layouts/path/include.jsp"></jsp:include>
<style>
.content {
width: 1130px;
height: 100%;
border: 1px solid black;
margin: 0 auto;
}
.swiper {
width: 100%;
height: 500px;
border: 1px solid #eee;
margin: 0 auto;
}
.swiper img {
z-index: 0;
}
</style>

</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="swiper">
    	<img src="<c:url value='/resources/img/main-img2.png' />" width="100%" height="100%;">
    </div>
    <div class="content">
        <tiles:insertAttribute name="body" />
    </div>                                                  
    <tiles:insertAttribute name="footer" />
</body>
</html>