<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.table th{
width: 100px;
}
.table input{
width: 621px;
}
</style>
</head>
<body>
<div class="container">
  <h2>Item</h2>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">상품 정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">상품 등록</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
    <!-- * 상품 정보 -->
		<table class="table table-hover">
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
    <div id="menu1" class="container tab-pane fade">
    	<form action="<%=request.getContextPath()%>/admin/item/register" enctype="multipart/form-data">
			<table class="table table-borderless">
				<tr>
					<th>상품명</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<th>수량</th>
					<td><input type="text" name="count"></td>
				</tr>
				<tr>
					<th>상품설명</th>
					<td><textarea cols="100" rows="5" name="contents"></textarea></td>
				</tr>
				<tr>
					<th>옵션</th>
					<td><input type="text" name="option"></td>
				</tr>
				<tr>
					<th>이미지</th>
					<td><input type="file" name="file2">
						<i class="fas fa-trash-alt"></i>
					</td>
				</tr>			
			</table>
			<button class="btn-tree">상품 등록</button>
		</form>
    </div>

  </div> <!-- Tab panes -->
</div>	<!-- container -->
<script type="text/javascript">
		$(document).ready(function(){
			addInputEvent();
		})
		function addInputEvent(){
			$('input[name=file2]').change(function(){
				var str = '<input type="file" class="form-control" name="file2" value="">'
				$(this).after(str);
				addInputEvent();
			})
		}
	</script>
</body>
</html>