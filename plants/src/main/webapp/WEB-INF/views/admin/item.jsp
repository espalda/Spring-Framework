<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.option-box input, input:focus{
border:none;
outline: none;
width: 100px;
margin: 0 auto;
padding: 5px;
background-color: #ededed;
font-size: 21px;
font-family: 'GyeonggiBatang';
border-radius: 5px;
}
	
.input::placeholder {
color: #123132;
text-align: center;
}
.table-borderless th{
width: 100px;
}
.input, .input:hover, .input:focus{
margin: 0;
}
i span{
font-family: 'Iropke Batang' !important;
}
</style>
</head>
<body>
<h2>상품 관리</h2>
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
    <div id="home" class="container tab-pane active">
    <!-- 상품 정보 -->
		<table class="table table-hover">
			<tr>
				<th width="8%">상품번호</th>
			 	<th width="10%">이미지</th>
			 	<th width="10%">카테고리</th>
				<th width="10%">상품명</th>
				<th width="5%">가격</th>
				<th width="20%">상품설명</th>
				<th width="10%">옵션</th>
			</tr>
			<c:forEach var="item" items="${itemList }">
				<tr>
					<td>${item.num }</td>
					<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${item.file}" width="50px;"></td>
					<td>${item.category }</td>
					<td>${item.name }</td>
					<td>${item.price }</td>
					<td>${item.contents }</td>
					<td>
						<select class="option">
						<c:forEach var="option" items="${optionList }">
							<c:if test="${item.num eq option.item_num}">
								<option>${option.option } 재고 : ${option.option_count }</option>
							</c:if>
							<c:if test="${option.item_num eq null}">
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
							<option value="Hanging plant">Hanging Plant</option>
							<option value="Goods">Goods</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="name" class="input"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="price" class="input"></td>
				</tr>
				<tr>
					<th>상품설명</th>
					<td><textarea cols="50" rows="5" name="contents" class="input"></textarea></td>
				</tr>
				<tr>
					<th>옵션</th>
					
					<td class="option-box">
					<div class="opt my-2">
						<input type="text" placeholder="옵션명" name="option">
						<input type="text" placeholder="옵션금액" name="option_price">
						<input type="text" placeholder="옵션수량" name="option_count">
						<button type="button" class="btn-sm add">추가</button><br>
					</div>
					</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td><input type="file" name="file2"><i class="fas fa-trash-alt del"><span class="btn-sm ml-2">삭제</span></i>
					</td>
				</tr>		
					
			</table>

			<button class="butt">상품 등록</button>
		</form>
  </div> <!-- Tab panes end -->
</div>	<!-- container end -->
<script>
$('.del').click(function(){	/* 파일 값 없애기 */
	  $('input[type=file]').val('');
});

$('.add').click(function(){
	var str = '<div class="opt my-2"><input type="text" placeholder="옵션명" name="option"> '+
				 '<input type="text" placeholder="옵션금액" name="option_price"> '+
				 '<input type="text" placeholder="옵션수량" name="option_count"></div>';
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