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
      <a class="nav-link" data-toggle="tab" href="#menu2">회원 권한</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active">
    <!-- * 회원 정보 -->
		<table class="table table-hover">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>전화</th>
				<th>이메일</th>
				<th>등급</th>
				<th>권한</th>
			</tr>
			<c:forEach var="member" items="${memberList }">
			<tr>
				<td>${member.id }</td>
				<td>${member.name }</td>
				<td>${member.phone }</td>
				<td>${member.email }</td>
				<td>${member.grade}</td>
				<td>${member.authority }</td>
			</tr>
			</c:forEach>
		</table>
    </div>
    
    <!-- * 회원 등급 -->
    <div id="menu1" class="container tab-pane fade">
		<select>
			<option>환영</option>
			<option>골드</option>
			<option>다이아</option>
		</select>
    </div>
    
    <!-- * 회원 권한 -->
    <div id="menu2" class="container tab-pane fade">
		<select>
			<option>seller</option>
			<option>admin</option>
			<option>member</option>
		</select>
    </div>
  </div>
</div>

</body>
</html>