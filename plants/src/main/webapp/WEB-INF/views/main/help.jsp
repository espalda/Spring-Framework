<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
* Pagination links */
.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
}

/* Style the active/current link */
.pagination a.active {
  background-color: dodgerblue;
  color: white;
}

/* Add a grey background color on mouse-over */
.pagination a:hover:not(.active) {background-color: #ddd;}

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
					<button class="btn-raw">보내기</button>
			</div>
	</form>
	
	
	<div class="pagination">
  <a href="#">&laquo;</a>
  <a href="#">1</a>
  <a class="active" href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <a href="#">&raquo;</a>
  
</div>
</body>
</html>