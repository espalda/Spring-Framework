<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container">
	  <h2>Seller</h2>
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li class="nav-item">
	      <a class="nav-link active" data-toggle="tab" href="#home">판매자 정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#menu1">판매자 등록</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#menu2">판매자 수정</a>
	    </li>
	  </ul>
	
	<!-- 판매자 정보 화면 -->
	<div class="tab-content">
		<div id="home" class="container tab-pane active">
			<table class="table table-hover">
	   		<tr>
	   			<th>사업자번호</th>
	   			<th>이름</th>
	   			<th>전화</th>
	   			<th>주소</th>
	   			<th>이메일</th>
	   		</tr>
	   		
	   		<c:forEach var="seller" items="${sellerList }">
		   		<tr>
		   			<td>${seller.num }</td>
		   			<td>${seller.name }</td>
		   			<td>${seller.phone }</td>
		   			<td>${seller.address }</td>
		   			<td>${seller.email }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<!-- 판매자 등록 화면 -->
	    <div id="menu1" class="container tab-pane fade">
	    <form action="<%=request.getContextPath()%>/admin/seller/register">
	    <input type="hidden" name="${login.id }">
				<table class="table table-borderless">
					<tr>
						<th>사업자번호</th>
						<td><input type="text" name="num"></td>
					</tr>
					<tr>
						<th>판매자이름</th>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" name="phone"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="address"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="email">${seller.email }</td>
					</tr>
				</table>
				<button class="btn-tree">판매자 등록</button>
			</form>					
	    </div>
	    
	    <!-- 판매자 수정 화면 -->
	    <div id="menu2" class="container tab-pane fade">
	    	판매자 수정 페이지 화면 구현
	    </div>
	  </div>
	</div>
</body>
</html>