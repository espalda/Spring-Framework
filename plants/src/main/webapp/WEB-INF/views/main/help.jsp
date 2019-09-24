<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.container{
width: 600px;
	background-image: url("<%=request.getContextPath()%>/resources/img/back-2.jpg");
}
th{
width: 100px;
}
h4{
display: inline-block;
margin-right: 50px;
}
</style>
</head>
<body>
<div class="container">
  <h2>Toggleable Pills</h2>
  <br>
  <!-- Nav pills -->
  <ul class="nav nav-pills" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="pill" href="#home">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu1">Menu 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu2">Menu 2</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
  </div>
</div>

	<form action="<%= request.getContextPath()%>/mail/mailSending"><br>
		<div class="container text-center">
			<h4>자주 묻는 질문</h4>
			<h4>교환 환불 문의</h4>
			<h4>문의 메일</h4>
			<table>
				<tr>
					<th>받는 사람</th>
					<td><input type="text" size="40" name="tomail" value="espalda@naver.com" class="input"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="40" name="title" class="input"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="5" cols="50" name="contents" class="input"></textarea></td>
				</tr>
			</table>
			<button class="butt my-2">보내기</button>
		</div>
	</form>
</body>
</html>