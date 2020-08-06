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
.mb-menu {
height: 70px;
padding: 5px;
background: #EDEDED;
}
.mb-menu li {
width: 130px;
height: 50px;
border: 1px solid black;
background: #fff;
margin: 5px;
letter-spacing: 5px;
cursor: pointer;
text-align: center;
line-height: 48px;
}
.mb-menu a {
display: inline-block;
width: 130px;
height: 50px;
}
</style>
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="content">
		<div class="mb-menu">
			<ul>
				<li><a href='<c:url value="/pages/member/mb_main" />'>나의 정보</a></li>
				<li><a href='<c:url value="/pages/member/mb_order" />'>주문 목록</a></li>
				<li><a href='<c:url value="/pages/member/mb_deliver" />'>배송 현황</a></li>
				<li><a href='<c:url value="/pages/member/mb_board" />'>문의 내용</a></li>
				<li><a href='#'>관심 상품</a></li>
			</ul>
		</div>     
        <tiles:insertAttribute name="body" />

    </div>                                                  
    <tiles:insertAttribute name="footer" />
</body>
</html>