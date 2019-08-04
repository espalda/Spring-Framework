<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
	<meta charset="UTF-8">
	<script type="text/javascript">
	$(document).ready(function(){
		$('#aaa').change(function(){
			var search = $('input[name=search]').val();
			var type = $('select[name=type]').val();
			location.href='<%=request.getContextPath()%>/board/list?perPageNum='+$(this).val()+'&type='+ type +'&search='+ search;
		})
	})	
	
	</script>
	<title>게시판 리스트</title>
	<style>
	.container-table{
	margin: 0 150px;
	}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
	<span style="font-size:30px">📜POST-LIST</span>
	<div class="btn float-right">
		<a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-outline-secondary">목록</button></a>
		<a href="<%=request.getContextPath()%>/board/register"><button type="submit" class="btn btn-outline-secondary">글쓰기</button></a>
	</div>
	<div class="form-group">
		<select class="form-control col-2 float-right" id="aaa">
			<option <c:if test="${pageMaker.criteria.perPageNum == 5}">selected</c:if>>5</option>
			<option <c:if test="${pageMaker.criteria.perPageNum == 10}">selected</c:if>>10</option>
			<option <c:if test="${pageMaker.criteria.perPageNum == 15}">selected</c:if>>15</option>
			<option <c:if test="${pageMaker.criteria.perPageNum == 20}">selected</c:if>>20</option>
		</select>
	</div>
	<div class="container-table">
	 <table class="table">
		<tr>
			<td width="5%">번호</td>
			<td width="30%">제목</td>
			<td width="10%">작성자</td>
			<td width="15%">작성일</td>
			<td width="5%">조회수</td>
		</tr>
		<c:forEach var="tmp" items="${list }">
		<!-- 서버에서 보내준 모델 정보에 이름이 list인 객체정보를 가져오는 것 
		c:forEach는 var와 items가 필수적으로 필요하다. 최소한의 문법 암기 해야 하는 것
		list는 모든 게시판
		board는 하나씩 꺼낼때 사용하는것
		%=request.getContextPath()%는 경로를 /test/를 생략하게 해주는 주소 -->
		<tr>
			<td>${tmp.num }</td>
			<td><a href="<%=request.getContextPath()%>/board/display?num=${tmp.num }&page=${pageMaker.criteria.page}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}&perPageNum=${pageMaker.criteria.perPageNum}">${tmp.title }</a></td>
			<td>${tmp.writer }</td>
			<td>${tmp.registered }</td>
			<td>${tmp.views }</td>
		</tr>
		</c:forEach>
	</table>
	</div>
	
	<!-- 페이지네이션 -->
	<ul class="pagination" style="justify-content: center;">
	<!-- 이전 버튼 prev -->
    <c:if test="${pageMaker.prev}">
        <li class="page-item">
        <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pageMaker.startPage-1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}&perPageNum=${pageMaker.criteria.perPageNum}">Previous</a>
        </li>
    </c:if>
    <!-- 페이지네이션 목록  -->
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="index">
    	<c:if test="${pageMaker.criteria.page == index }">
        <li class="page-item active">
        <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}&perPageNum=${pageMaker.criteria.perPageNum}">${index}</a>
        </li>
      </c:if>
      <c:if test="${pageMaker.criteria.page != index }">
        <li class="page-item">
        <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}&perPageNum=${pageMaker.criteria.perPageNum}">${index}</a>
        </li>
      </c:if>
    </c:forEach>
    <!-- 다음 버튼 next -->
    <c:if test="${pageMaker.next}">
        <li class="page-item">
        <a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pageMaker.endPage+1}&type=${pageMaker.criteria.type}&search=${pageMaker.criteria.search}&perPageNum=${pageMaker.criteria.perPageNum}">Next</a>
        </li>
    </c:if>
	</ul>

	<!-- 검색창 -->
	<form class="float-right" method="get" action="<%=request.getContextPath()%>/board/list">
		<select name="type" class="float-left">
			<option value="0">전체</option>
			<option value="1" <c:if test="${pageMaker.criteria.type eq 1 }">selected</c:if>>제목</option>
			<option value="2" <c:if test="${pageMaker.criteria.type eq 2 }">selected</c:if>>내용</option>
			<option value="3" <c:if test="${pageMaker.criteria.type eq 3 }">selected</c:if>>작성자</option>
		</select>
		<input type="text" name="search" class="form-control col-5 float-left" value="${pageMaker.criteria.search }" placeholder="search" >
		<button class="btn btn-outline-success float-left">검색</button>
	</form>
</body>
</html>