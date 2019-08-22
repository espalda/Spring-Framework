<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div class="container">
  <h2>Member</h2>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">회원 정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">회원 등급</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">회원 쿠폰</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
    <!-- * 회원 정보 -->
		<table class="table">
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>전화</th>
				<th>주소</th>
				<th>이메일</th>
				<th>등급</th>
				<th>권한</th>
			</tr>
			<tr>
				<td>번호</td>
				<td>아이디</td>
				<td>이름</td>
				<td>전화</td>
				<td>주소</td>
				<td>이메일</td>
				<td>등급</td>
				<td>권한</td>
			</tr>
		</table>
    </div>
    
    <!-- * 회원 등급 -->
    <div id="menu1" class="container tab-pane fade"><br>
		<select>
			<option>환영</option>
			<option>골드</option>
			<option>다이아</option>
		</select>
    </div>
    
    <!-- * 회원 쿠폰 -->
    <div id="menu2" class="container tab-pane fade"><br>
		<table class="table">
     		<tr>
     			<th>번호</th>
     			<th>쿠폰명</th>
     			<th>할인금액</th>
     			<th>유효기간</th>
     		</tr>
     		<tr>
     			<td>번호</td>
     			<td>쿠폰명</td>
     			<td>할인금액</td>
     			<td>유효기간</td>
     		</tr>
	     </table>
    </div>
  </div>
</div>

</body>
</html>