<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<script type="text/javascript">
	$(document).ready(function(){
		$('select[name=aaa]').change(function(){
			location.href = '<%=request.getContextPath()%>/admin/user/update?'+$(this).val();
		});
	})
	</script>
	<title>회원 관리</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/adminnav.jsp"></jsp:include>
	<div class="container">
	<h4 class="text-center">🧡회원 리스트🧡</h4>
		<table class="table table-hover">
			<tr>
				<th>id</th>
				<th>email</th>
				<th>gender</th>
				<th>authority</th>
				<th>modify</th>
			</tr>
			<c:forEach var="member" items="${list}">
				<tr>
					<td>${member.id}</td>
					<td>${member.email}</td>
					<td>${member.gender}</td>
					<td>${member.authority}</td>
					<td>
						<select name="aaa">
							<option value="id=${member.id }&authority=user&page=${pageMaker.criteria.page}" <c:if test="${member.authority eq 'user'}">selected</c:if>>user</option>
							<option value="id=${member.id }&authority=admin&page=${pageMaker.criteria.page}" <c:if test="${member.authority eq 'admin'}">selected</c:if>>admin</option>
						</select>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
		<!-- 페이지네이션 -->
	<ul class="pagination" style="justify-content: center;">
		<c:if test="${pageMaker.prev}">	<!-- 이전가기 버튼은 true 이면 보이기 -->
			<li class="page-item">
			<a class="page-link" href="<%=request.getContextPath()%>/admin/user/list?page=${pageMaker.startPage-1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}&perPageNum=${pageMaker.criteria.perPageNum}">Previous</a>
			</li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
		<!-- index는 begin부터 end까지 하나씩 증가한다 -->
		<c:if test="${pageMaker.criteria.page == index }">
			<li class="page-item active">
			<a class="page-link" href="<%=request.getContextPath()%>/admin/user/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">${index}</a>
			</li>
		</c:if>
		<c:if test="${pageMaker.criteria.page != index }">
			<li class="page-item">
			<a class="page-link" href="<%=request.getContextPath()%>/admin/user/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">${index}</a>
			</li>
		</c:if>
		</c:forEach>
		
		<c:if test="${pageMaker.next}">
			<li class="page-item">
			<a class="page-link" href="<%=request.getContextPath()%>/admin/user/list?page=${pageMaker.endPage+1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">Next</a>
			</li>
		</c:if>
	</ul>
	
	<!-- 검색창 -->
	<form class="float-right" method="get" action="<%=request.getContextPath()%>/admin/user/list">
		<select name="type" class="float-left">
			<option value="0" <c:if test="${pageMaker.criteria.type eq 1 }">selected</c:if>>선택</option>
			<option value="1" <c:if test="${pageMaker.criteria.type eq 1 }">selected</c:if>>아이디</option>
			<option value="2" <c:if test="${pageMaker.criteria.type eq 2 }">selected</c:if>>성별</option>
			<option value="3" <c:if test="${pageMaker.criteria.type eq 3 }">selected</c:if>>권한</option>
		</select>
		<input type="text" name="search" class="form-control col-5 float-left" value="${pageMaker.criteria.search}" placeholder="search" >
		<button class="btn btn-outline-success float-left">검색</button>
	</form>
	
	
</body>
</html>