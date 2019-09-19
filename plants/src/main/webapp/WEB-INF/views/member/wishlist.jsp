<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container-m">
		<h2>Wishlist</h2>
		<div>
			<table class="table">
				<tr>
					<th width="10%">이미지</th>
					<th width="15%">상품정보</th>
					<th width="10%">판매자명</th>
					<th width="10%">배송비</th>
					<th width="15%">상품금액</th>
					<th width="15%">상품금액</th>
				</tr>
				
				<c:forEach var="wish" items="${wishlist }">
				
				<tr>
					<td>
						<img src="<%=request.getContextPath()%>/resources/uploadfiles${wish.file}" width="50px">
						<input type="text" name="num" value="${wish.num }">
					</td>
					<td>
						<a href="<%=request.getContextPath()%>/item/display?num=${wish.item_num}">${wish.name } 아이템 페이지 바로가기 </a></td>
					<td>${wish.seller_member_id }</td>
					<td>${wish.delivery_charge }</td>
					<td>${wish.price }</td>
					<td>
						<button class="remove">삭제</button>
					</td>
				</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>
<script>
/* 위시리스트 제품 삭제 */
$('.remove').click(function(){
	var num = $('input[name=num]').val();
	$.ajax({
		async:true,
		type:'POST',
		data: {'num': num},
		url:"<%=request.getContextPath()%>/member/wish/remove",
		dataType:"json",
		//contentType:"application/json; charset=UTF-8",
		success : function(test){
		},
		error:function(request,status,error){
			console.log( request.responseText );
		}
	});
})/* ajax */
</script>
</body>
</html>