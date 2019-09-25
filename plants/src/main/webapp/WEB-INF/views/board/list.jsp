<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.table{
background-color: white;
}
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/board/list" method="post">
	<span>카테고리</span>
		<select name="type">
			<option>전체</option>
			<option value="공지" <c:if test="${pageMaker.criteria.type eq '공지'}">selected</c:if> >공지</option>
			<option value="건의" <c:if test="${pageMaker.criteria.type eq '건의'}">selected</c:if> >건의</option>
			<option value="질문" <c:if test="${pageMaker.criteria.type eq '질문'}">selected</c:if> >질문</option>
			<option value="교환" <c:if test="${pageMaker.criteria.type eq '교환'}">selected</c:if> >교환</option>
			<option value="환불" <c:if test="${pageMaker.criteria.type eq '환불'}">selected</c:if> >환불</option>
		</select>
					
		<table class="table table-hover">
			<tr>
				<th width="10%">번호</th>
				<th width="50%">제목</th>
				<th width="10%">작성자</th>
				<th width="20%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
			
			<c:forEach var="board" items="${boardList }">
			<tr>
				<td>${board.num }</td>
				<td><a href="<%=request.getContextPath()%>/board/display?num=${board.num}">${board.title }</a></td>
				<td>${board.member_id }</td>
				<td>${board.registered }</td>
				<td>${board.views }</td>
			</tr>
			</c:forEach>
			
			<c:if test="${list.size() eq 0 }">
		 	<tr>
		   	<td colspan="5">게시글이 존재하지 않습니다</td>
		  	</tr>
			</c:if>
		</table>
		<a href="<%=request.getContextPath()%>/board/register">
		<button type="button" class="btn-raw float-right">게시글 작성</button></a>
</form>
		
		
		<!-- pagination code -->
		<div class="pagination" style="justify-content: center;">
			<c:if test="${pageMaker.prev}">
				<a href="<%=request.getContextPath()%>/board/list?page=${pageMaker.startPage-1}&type=${pageMaker.criteria.type}"><i class="fas fa-backward"></i></a>
		 	</c:if>
		 	<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
				<c:if test="${pageMaker.criteria.page == index}">
					<a class="active" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}">${index}</a>
				</c:if>
				<c:if test="${pageMaker.criteria.page != index}">	
					<a href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}">${index}</a>
				</c:if>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<a href="<%=request.getContextPath()%>/board/list?page=${pageMaker.endPage+1}&type=${pageMaker.criteria.type}"><i class="fas fa-forward"></i></a>
			</c:if>
		</div> <!-- pagination -->
<script>
	$('select[name=type]').change(function(){
		location.href='<%=request.getContextPath()%>/board/list?type='+$(this).val();
	})
</script>
</body>
</html>