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
		    <a class="nav-link active" data-toggle="tab" href="#home">공지사항 등록</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" data-toggle="tab" href="#menu1">게시글관리</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" data-toggle="tab" href="#menu2">댓글관리</a>
		  </li>
		</ul>
		
		<!-- Tab panes -->
		<div class="tab-content">
		  <div class="container tab-pane active" id="home"><br>
		  		<select>
						<option>공지</option>
						<option>건의</option>
						<option>질문</option>
						<option>교환</option>
						<option>환불</option>
					</select>
					<a href="<%=request.getContextPath()%>/board/register">
					<button class="btn float-right">W R I T E</button></a>
		  		<table class="table">
		<thead>
			<tr>
				<td width="60%">제목</td>
				<td width="10%">작성자</td>
				<td width="20%">작성일</td>
				<td width="10%">조회수</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
		
	</table>
		  </div>
		  <div class="container tab-pane fade" id="menu1"><br>
				<table class="table">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
						<th>설정</th>
					</tr>
					
					<tr>
						<td>${board.num}</td>
						<td><a href="<%=request.getContextPath()%>/board/display?num=${board.num}">${board.title}</a></td>
						<td>${board.writer}</td>
						<td>${board.registered}</td>
						<td>${board.views}</td>
						<td width="10%">
							<select name="aaa">
								<option value="num=${board.num }&valid=D&page=${pageMaker.criteria.page}" <c:if test="${board.valid eq 'D'}">selected</c:if>>Delete</option>
								<option value="num=${board.num }&valid=I&page=${pageMaker.criteria.page}" <c:if test="${board.valid eq 'I'}">selected</c:if>>valid</option>
							</select>
						</td>
					</tr>
				</table>		
		  </div>
		  <div class="container tab-pane fade" id="menu2"><br>
		  		<table class="table">
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