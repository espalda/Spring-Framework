<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>register</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<form action="<%=request.getContextPath()%>/board/register" method="post" enctype="multipart/form-data">
	<div class="container-fluid">
		<div class="form-group col-8">
		  <label for="title">제목</label>
		  <input type="text" class="form-control" name="title">
		</div>
		<div class="form-group col-3">
		  <label>작성자</label>
		  <input type="text" class="form-control" name="writer" value="${user.id }" readonly>
		</div>
		<div class="form-group col-1">
		  <label>작성일</label>
		  <input type="text" class="form-control" readonly>
		</div>
		<div class="form-group col-1">
		  <label>조회수</label>
		  <input type="text" class="form-control" readonly>
		</div>
		<div class="form-group col-8">
		  <label>내용</label>
		  <textarea rows="10" class="form-control" name="contents"></textarea>
		</div>
		<div class="form-group col-8">
		  <label>첨부파일</label>
		  <input type="file" class="form-control-file" name="file2">
		</div>
	
		<div class="btn-group">
		  <a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-primary">목록</button></a>
		  <button type="submit" class="btn btn-primary">등록</button>
		</div>
	</div>
	</form>
</body>
</html>