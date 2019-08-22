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
	  </ul>
	
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div id="home" class="container tab-pane active"><br>
		  	 <table class="table">
		     		<tr>
		     			<th>번호</th>
		     			<th>이름</th>
		     			<th>사업자번호</th>
		     			<th>전화</th>
		     			<th>주소</th>
		     			<th>이메일</th>
		     		</tr>
		     		<tr>
		     			<td>번호</td>
		     			<td>이름</td>
		     			<td>사업자번호</td>
		     			<td>전화</td>
		     			<td>주소</td>
		     			<td>이메일</td>
		     		</tr>
		     </table>
	    </div>
	    <div id="menu1" class="container tab-pane fade"><br>
				<table class="table">
					<tr>
						<th>판매자명</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>판매자이름</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>사업자번호</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text"></td>
					</tr>
				</table>
	    </div>
	  </div>
	</div>
</body>
</html>