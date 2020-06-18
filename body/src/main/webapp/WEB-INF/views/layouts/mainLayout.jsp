<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>스프링</title>
<jsp:include page="/WEB-INF/views/layouts/path/include.jsp"></jsp:include>
<style>
.content {
width: 1130px;
height: 100%;
border: 1px solid black;
margin: 0 auto;
}
.dot2 {
position: absolute;
z-index: 2;
height: 10px;
width: 10px;
margin: 0 2px;
background-color: #bbb;
border-radius: 20px;
display: inline-block;
transition: background-color 0.6s ease;
cursor: pointer;
}
</style>

</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div>
	    <div class="dot2"></div>
	    <div class="dot2"></div>
	    <div class="dot2"></div>
    </div>
    <div class="content">
            
        <tiles:insertAttribute name="body" />
    </div>                                                  
    <tiles:insertAttribute name="footer" />
</body>
</html>