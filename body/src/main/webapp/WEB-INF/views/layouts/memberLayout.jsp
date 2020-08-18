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
		<div class="mb-menu">
			<h1>나의 메뉴</h1>
			<ul>
				<li><a href='<c:url value="/pages/member/mb_main" />'><img src="https://img.icons8.com/cotton/64/000000/gender-neutral-user--v1.png"/>나의 정보</a></li>
				<li><a href='<c:url value="/pages/member/mb_order" />'><img src="https://img.icons8.com/cotton/64/000000/bill--v1.png"/>주문 목록</a></li>
				<li><a href='<c:url value="/pages/member/mb_deliver" />'><img src="https://img.icons8.com/cotton/64/000000/delivery-person.png"/>배송 현황</a></li>
				<li><a href='<c:url value="/pages/member/mb_board" />'><img src="https://img.icons8.com/cotton/64/000000/talk.png"/>문의 내용</a></li>
				<li><a href='#'><img src="https://img.icons8.com/cotton/64/000000/worldwide-delivery.png"/>관심 상품</a></li>
				<li><a href='<c:url value="/test/it_wish" />'><img src="https://img.icons8.com/cotton/64/000000/hearts--v3.png"/>위시리스트</a></li>
			</ul>
		</div>     
        <tiles:insertAttribute name="body" />

    </div>                                                  
    <tiles:insertAttribute name="footer" />
</body>
</html>