<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.pagination a {
  color: black;
  float: left;
  padding: 10px;
  text-decoration: none;
  transition: background-color .3s;
}

.pagination a:hover, a.active {
  background-color: #b97f6d;
  color: white;
}
</style>
</head>
<body>
	<div class="container-11">
		<h2>Help</h2>
		<div class="pagination">
		  <a href="#"><i class="fas fa-backward"></i></a>
		  <a href="#">1</a>
		  <a href="#">2</a>
		  <a href="#">3</a>
		  <a href="#"><i class="fas fa-forward"></i></a>
		</div>
	</div>
</body>
</html>