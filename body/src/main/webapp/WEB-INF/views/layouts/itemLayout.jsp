<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>everybody</title>
	<jsp:include page="/WEB-INF/views/layouts/path/include.jsp"></jsp:include>
	<tiles:insertAttribute name="css" />
	<style>
	html, body {
	height: 100%;
	}
	.wrapper {
	display: flex;
	flex-direction: column;
	}
	section {
	flex: 1;
	}
	footer {
	margin-top: auto;
	}
	</style>
</head>
<body>
	<div class="wrapper">
		<header>
			<tiles:insertAttribute name="header"/>
		</header>
	    <section>
	    	<div class="container">
	        	<tiles:insertAttribute name="body" />
	        </div>
	    </section>
	    <footer>                                       
	    	<tiles:insertAttribute name="footer" />
	    </footer>
	</div>
</body>
</html>