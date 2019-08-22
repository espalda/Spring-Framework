<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container">
  <h2>Item</h2>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">상품 리스트</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">상품 등록</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
    <!-- * 회원 정보 -->
		<table class="table">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>수량</th>
				<th>가격</th>
				<th>등록일</th>

			</tr>
			<tr>
				<td>번호</td>
				<td>아이디</td>
				<td>이름</td>
				<td>전화</td>
				<td>주소</td>

			</tr>
		</table>
    </div>
    <!-- * 상품 등록 -->
    <div id="menu1" class="container tab-pane fade"><br>
		<table class="table">
			<tr>
				<th>상품명</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>수량</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>상품설명</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><input type="text"></td>
			</tr>
		</table>
    </div>
  </div>
</div>

</body>
</html>