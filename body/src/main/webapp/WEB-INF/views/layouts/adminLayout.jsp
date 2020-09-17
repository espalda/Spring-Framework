<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>everybody</title>
	<jsp:include page="/WEB-INF/views/layouts/path/include.jsp"></jsp:include>
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
	.ad-menu {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: center;
	}
	.ad-menu a {
	flex: 0 160px;
	width: 250px;
	text-align: center;
	}
	</style>
</head>
<body>
	<div class="wrapper">
		<header>
			<tiles:insertAttribute name="header" />
		</header>
	    <section>
	    	<div class="container">
	    		<div class="ad-menu">
					<a href='<c:url value="/pages/admin/ad_main" />'><img src="https://img.icons8.com/cotton/64/000000/conference-call.png"/><br/>관리자 정보</a>
					<a href='<c:url value="/pages/admin/ad_customer" />'><img src="https://img.icons8.com/cotton/64/000000/groups--v1.png"/><br/>고객 정보</a>
					<a href='<c:url value="/pages/admin/ad_item" />'><img src="https://img.icons8.com/cotton/64/000000/circled-chevron-down.png"/><br/>상품 등록</a>
					<a href='<c:url value="/pages/admin/ad_itemList" />'><img src="https://img.icons8.com/cotton/64/000000/bulleted-list.png"/><br/>상품 목록</a>
					<a href='<c:url value="/pages/admin/ad_cupon" />'><img src="https://img.icons8.com/cotton/64/000000/treatment-list.png"/><br/>쿠폰 등록</a>
					<a href='<c:url value="/pages/admin/ad_event" />'><img src="https://img.icons8.com/cotton/64/000000/calendar.png"/><br/>이벤트 등록</a>
					
					<a href='<c:url value="/pages/admin/ad_order" />'><img src="https://img.icons8.com/cotton/64/000000/transaction-list--v1.png"/><br/>주문 목록</a>
					<a href='<c:url value="#" />'><img src="https://img.icons8.com/cotton/64/000000/handle-with-care--v1.png"/><br/>배송 목록</a>
					<a href='<c:url value="#" />'><img src="https://img.icons8.com/cotton/64/000000/bill--v1.png"/><br/>매출 기록</a>
					<a href='<c:url value="#" />'><img src="https://img.icons8.com/cotton/64/000000/mailing.png"/><br/>메일 보내기</a>
					<a href='<c:url value="/pages/admin/ad_notice" />'><img src="https://img.icons8.com/cotton/64/000000/quill-pen.png"/><br/>공지 등록</a>
					<a href='<c:url value="/pages/admin/ad_notice" />'><img src="https://img.icons8.com/cotton/64/000000/quill-pen.png"/><br/>공지 등록</a>
				</div>
				<tiles:insertAttribute name="body" />
			</div>
	    </section>
	    <footer>                                       
	    	<tiles:insertAttribute name="footer" />
	    </footer>
	</div>
</body>
</html>