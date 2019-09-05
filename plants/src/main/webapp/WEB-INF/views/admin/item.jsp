<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.option-box input{
margin-bottom: 10px;
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
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">상품 수정</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active">
    <!-- 상품 정보 -->
    <mark> option ajax로 정보 가져오기 </mark>
		<table class="table table-hover">
			<tr>
			 	<th>이미지</th>
			 	<th>카테고리</th>
				<th>상품명</th>
				<th>가격</th>
				<th>수량</th>
				<th>상품설명</th>
				<th>옵션</th>
			</tr>
			<c:forEach var="item" items="${itemList }">
				<tr>  
					<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="50px;"></td>
					<td>${item.category }</td>
					<td>${item.name }</td>
					<td>${item.price }</td>
					<td>${item.count }</td>
					<td>${item.contents }</td>
					<td >
						<select class="option">
						<c:forEach var="option" items="${optionList }">
							<c:if test="${item.name eq option.item_name}">
								<option>${option.option }</option>
							</c:if>
							<c:if test="${option.item_name eq null}">
								<option>없음</option>
							</c:if>
						</c:forEach>
						</select>
					</td>
				</tr> 
			</c:forEach>
		</table>
		
    </div>
    
    <!-- 상품 등록 --> 
    <div id="menu1" class="container tab-pane fade">
    	<form action="<%=request.getContextPath()%>/admin/item/register" enctype="multipart/form-data" method="post">
    		<input type="hidden" value="${login.id }" name="seller_member_id">
			<table class="table table-borderless">
				<tr>
					<th>카테고리</th>
					<td>
						<select name="category">
							<option value="Succulents">Succulents</option>
							<option value="Cactus">Cactus</option>
							<option value="Plant">Plant</option>
							<option value="Hanging Plant">Hanging Plant</option>
							<option value="Goods">Goods</option>
						</select>
					</td>
				</tr>
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
					<td class="option-box">
						<input type="text" name="option"><button type="button" class="add">추가</button><br>
					</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td><input type="file" name="file2"><i class="fas fa-trash-alt del">삭제</i>
					</td>
				</tr>		
					
			</table>

			<button class="btn-tree">상품 등록</button>
		</form>
    </div>
    
   <!-- tab2 내용 -->
	<div id="menu2" class="container tab-pane fade">
			<mark>상품 수정 구현 later</mark>
	</div>	<!-- tab2 end -->
	
  </div> <!-- Tab panes end -->
</div>	<!-- container end -->
<script>
$('.del').click(function(){	/* 파일 값 없애기 */
	  $('input[type=file]').val('');
});

$('.add').click(function(){
	var str = '<input type="text" name="option"><br>';
	$('.option-box').append(str);
})

$('.option').each(function(){
	if($(this).find('option').length == 0){
		$(this).html('<option>없음</option>');
	}
})
</script>
</body>
</html>