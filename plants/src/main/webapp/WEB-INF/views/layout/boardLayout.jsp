<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>plants</title>
<jsp:include page="/WEB-INF/views/include/path.jsp"></jsp:include>
<style>
.board{
width: 700px;
margin: 15px auto;
}
</style>
</head>
<body>
	<tiles:insertAttribute name="header"/>
		<div class="gray">
			<div class="board clearfix">
       		<tiles:insertAttribute name="body" />
       	</div>                                
      </div>
	<tiles:insertAttribute name="footer" />
</body>
</html>
