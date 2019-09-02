<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="container">
	<h2>Board</h2>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link active" data-toggle="tab" href="#home">게시글관리</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" data-toggle="tab" href="#menu1">댓글관리</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" data-toggle="tab" href="#menu2">#</a>
		  </li>
		</ul>
		
		<!-- Tab panes -->
		<div class="tab-content">
		  <div id="home" class="container tab-pane active">
				<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
						<th>설정</th>
					</tr>
					<c:forEach var="board" items="${boardList }">
					<tr>
						<td>${board.num}</td>
						<td><a href="<%=request.getContextPath()%>/board/display?num=${board.num}">${board.title}</a></td>
						<td>${board.member_id}</td>
						<td>${board.registered}</td>
						<td>${board.views}</td>
						<td>
							<select name="aaa">
								<option value="num=${board.num }&valid=D&page=${pageMaker.criteria.page}" <c:if test="${board.valid eq 'D'}">selected</c:if>>Delete</option>
								<option value="num=${board.num }&valid=I&page=${pageMaker.criteria.page}" <c:if test="${board.valid eq 'I'}">selected</c:if>>valid</option>
							</select>
						</td>
					</tr>
					</c:forEach>
				</table>		
		  </div>
		  
		  <div id="menu1" class="container tab-pane fade">
		  		<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
						<th>설정</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
		  </div>
		</div>
	</div>
</body>
</html>