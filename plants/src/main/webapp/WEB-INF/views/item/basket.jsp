<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container-11">
		<h2>Basket</h2>
		<table class="table">
			<tr>
				<th width="3%"><input type="checkbox" class="check-all"></th>
				<th width="10%">이미지</th>
				<th width="35%">상품정보</th>
				
				<th width="10%">상품금액</th>
				<th width="8%">수량</th>
				<th width="10%">판매자명*배송비</th>
				
			</tr>
			<c:forEach var="bas" items="${basketList }" varStatus="s">
				<tr>
					<td><input type="checkbox" checked></td>
					<td><img src="<%=request.getContextPath()%>/resources/uploadfiles${bas.file }" width="50px"></td>
					<td>${bas.name}<br>${bas.option }</td>
					<td>${bas.option_price }</td>
					<td>${bas.option_count }</td>
					<c:if test="${s.count == 1 }">
					<td rowspan="${basketList.size()}">${bas.seller_member_id }<br>${bas.delivery_charge } 원</td>
					</c:if>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="10" class="background-raw text-right">
					<span class="tt"></span>
				</td>
			</tr>
		</table>
		<button class="btn-tree">ORDER</button>
		<a href="<%=request.getContextPath()%>/basket/delete">
		<button class="btn-tree">DELETE</button></a>
	</div>
	
<script>
	$('.check-all').change(function(){
		var isChecked = $(this).prop('checked');
		console.log(isChecked);
		$('input[type="checkbox"]').each(function(){
			$(this).prop('checked', isChecked);
		});
	})
</script>
</body>
</html>