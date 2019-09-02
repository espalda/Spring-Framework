<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.pagination a, i {
  color: black;
  float: left;
  padding: 5px 10px;
  text-decoration: none;
  transition: background-color .3s;
}

.pagination a:hover, a.active {
  background-color: #b97f6d;
  color: white;
}

label{
width: 50px;
}

textarea, input, input:hover, input.active{
outline: none;
border: 1px solid #b97f6d;
}
</style>
</head>
<body>
	<div class="container-11">
		<h2>Help</h2>
		<div class="pagination">
		  <i class="fas fa-backward"></i>
		  <a href="#">1</a>
		  <a href="#">2</a>
		  <a href="#">3</a>
		  <i class="fas fa-forward"></i>
		</div>
	</div>
	<form action="<%= request.getContextPath()%>/mail/mailSending">
		<div class="container">
			<h2>Mail</h2>
			<p>FOR SPECIAL REQUESTS ORDERS</p>
				<table>
					<tr>
						<td>receiver</td>
						<td><input type="text" size="40" name="tomail"></td>
					</tr>
					<tr>
						<td>title</td>
						<td><input type="text" size="40" name="title"></td>
					</tr>
					<tr>
						<td>contents</td>
						<td><textarea rows="5" cols="78" name="contents"></textarea></td>
					</tr>
				</table>
				<button class="btn-raw">S E N D</button>
		</div>
	</form>
</body>
</html>