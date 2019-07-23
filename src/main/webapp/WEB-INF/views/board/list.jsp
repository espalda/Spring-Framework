<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>게시글목록</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<h3 style="text-align:center">📜POST-LIST</h3>
	<div class="clearfix">
		<div class="btn float-right ">
			<a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-outline-success">목록</button></a>
			<a href="<%=request.getContextPath()%>/board/register"><button type="submit" class="btn btn-outline-success">글쓰기</button></a>
		</div>
	</div>
	<div class="container">
		<table class="table table-hover">
		<tr>
			<th width="5%">번호</th>
			<th width="30%">제목</th>
			<th width="10%">작성자</th>
			<th width="15%">등록일</th>
			<th width="5%">조회수</th>
		</tr>
		
		<c:forEach var="board" items="${list}">
		<tr>
			<td>${board.num}</td>
			<td><a href="<%=request.getContextPath()%>/board/display?num=${board.num}">${board.title}</a></td>
			<td>${board.writer}</td>
			<td>${board.registered}</td>
			<td>${board.views}</td>
		</tr>
		</c:forEach>
		
		</table>
	</div>
	
	<!-- 페이지네이션 -->
	<ul class="pagination" style="justify-content: center;">
		<c:if test="${pageMaker.prev}">	<!-- 이전가기 버튼은 true 이면 보이기 -->
			<li class="page-item">
			<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pageMaker.startPage-1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">Previous</a>
			</li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
		<!-- index는 begin부터 end까지 하나씩 증가한다 -->
		<c:if test="${pageMaker.criteria.page == index }">
			<li class="page-item active ">
			<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">${index}</a>
			</li>
		</c:if>
		<c:if test="${pageMaker.criteria.page != index }">
			<li class="page-item">
			<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">${index}</a>
			</li>
		</c:if>
		</c:forEach>
		
		<c:if test="${pageMaker.next}">
			<li class="page-item">
			<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pageMaker.endPage+1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}">Next</a>
			</li>
		</c:if>
	</ul>
	
	<!-- 검색창 -->
	<form class="float-right" method="get" action="<%=request.getContextPath()%>/board/list">
		<select name="type" class="float-left">
			<option value="0">선택</option>
			<option value="1" <c:if test="${pageMaker.criteria.type eq 1 }">selected</c:if>>제목</option>
			<option value="2" <c:if test="${pageMaker.criteria.type eq 2 }">selected</c:if>>내용</option>
			<option value="3" <c:if test="${pageMaker.criteria.type eq 3 }">selected</c:if>>작성자</option>
		</select>
		<input type="text" name="search" class="form-control col-5 float-left" value="${pageMaker.criteria.search }" placeholder="search" >
		<button class="btn btn-outline-success float-left">검색</button>
	</form>
	
</body>
</html>