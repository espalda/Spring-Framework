<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>everybody</title>
	<jsp:include page="/WEB-INF/views/layouts/path/include.jsp"></jsp:include>
	<tiles:insertAttribute name="css"/>
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="content">
        <tiles:insertAttribute name="body" />
    </div>                                                  
    <tiles:insertAttribute name="footer" />
</body>
</html>