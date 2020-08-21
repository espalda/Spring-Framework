<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>everybody</title>
	<jsp:include page="/WEB-INF/views/layouts/path/include.jsp"></jsp:include>
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="css" />
	</head>
<body>
    <tiles:insertAttribute name="header" />
    <div class="content">
        <div class="sub-menu">
			<h1>관리자 메뉴</h1>
			<ul>
				<li><a href='<c:url value="/pages/admin/ad_main" />'><img src="https://img.icons8.com/cotton/64/000000/conference-call.png"/>관리자 정보</a></li>
				<li><a href='<c:url value="/pages/admin/ad_customer" />'><img src="https://img.icons8.com/cotton/64/000000/groups--v1.png"/>고객 정보</a></li>
				<li><a href='<c:url value="/pages/admin/ad_item" />'><img src="https://img.icons8.com/cotton/64/000000/circled-chevron-down.png"/>상품 등록</a></li>
				<li><a href='<c:url value="/pages/admin/ad_itemList" />'><img src="https://img.icons8.com/cotton/64/000000/bulleted-list.png"/>상품 목록</a></li>
				<li><a href='<c:url value="/pages/admin/ad_cupon" />'><img src="https://img.icons8.com/cotton/64/000000/treatment-list.png"/>쿠폰 등록</a></li>
				<li><a href='<c:url value="/pages/admin/ad_event" />'><img src="https://img.icons8.com/cotton/64/000000/calendar.png"/>이벤트 등록</a></li>
				
				<li><a href='<c:url value="/pages/admin/ad_order" />'><img src="https://img.icons8.com/cotton/64/000000/transaction-list--v1.png"/>주문 목록</a></li>
				<li><a href='<c:url value="#" />'><img src="https://img.icons8.com/cotton/64/000000/handle-with-care--v1.png"/>배송 목록</a></li>
				<li><a href='<c:url value="#" />'><img src="https://img.icons8.com/cotton/64/000000/bill--v1.png"/>매출 기록</a></li>
				<li><a href='<c:url value="#" />'><img src="https://img.icons8.com/cotton/64/000000/mailing.png"/>메일 보내기</a></li>
				<li><a href='<c:url value="/pages/admin/ad_notice" />'><img src="https://img.icons8.com/cotton/64/000000/quill-pen.png"/>공지 등록</a></li>
			</ul>
		</div>
		<tiles:insertAttribute name="body" />
    </div>                                                  
    <tiles:insertAttribute name="footer" />
</body>
</html>