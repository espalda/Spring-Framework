<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container">
  <h2>Order</h2>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">주문 조회</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">주문 현황</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">배송 현황</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active">
    <!-- * 주문조회 -->
		<table class="table table-hover">
			<tr>
				<th>주문번호</th>
				<th>주문아이디</th>
				<th>이미지</th>
				<th>상품정보</th>
				<th>수량</th>
				<th>상품금액</th>
				<th>총주문금액</th>
				<th>주문상태</th>
			</tr>
			<c:forEach var="order" items="${orderList }">
			<tr>
				<td>${order.order_num }</td>
				<td>${order.member_id }</td>
				<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${order.file }" width="50px"></td>
				<td>${order.contents }</td>
				<td>${order.option_count }</td>
				<td>${order.option_price }</td>
				<td>${order.order_price }</td>
				<td>${order.status }</td>
			</tr>
			</c:forEach>
		</table>
    </div>
    <!-- * 회원 등급 -->
    <div id="menu1" class="container tab-pane fade">
		<ul class="list-group list-group-horizontal">
		  <li class="list-group-item">welcome</li>
		  <li class="list-group-item">gold</li>
		  <li class="list-group-item">diamond</li>
		</ul>
    </div>
    
  </div>
</div>

</body>
</html>