<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.help{
width: 500px;
margin: 0 auto;
}
th{
width: 100px;
}
h4{
margin: 0;
display: inline-block;
}
.nav-pills .nav-link.active, .nav-pills .show>.nav-link{
background-color: #123132;
color: white;
}
</style>
</head>
<body>
<div class="help mx-auto"><br>
  <!-- Nav pills -->
  <ul class="nav nav-pills" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="pill" href="#home"><h4>자주 묻는 질문</h4></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu1"><h4>교환 환불 문의</h4></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="pill" href="#menu2"><h4>문의 메일</h4></a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
	 <!-- * 자주 묻는 질문 -->
    <div id="home" class="container tab-pane active"><br>
      <p>질문1 : </p>
    </div>
    
    <!-- * 교환 환불 문의 -->
    <div id="menu1" class="container tab-pane fade"><br>
      <p>게시판의 교환 카테고리에 아래 교환 양식을 적어주시면 처리해드리겠습니다.</p>
      <p>교환, 환불 양식</p>
    </div>
    
    <!-- * 메일 보내기 -->
    <div id="menu2" class="container tab-pane fade"><br>
	      <form action="<%= request.getContextPath()%>/mail/mailSending"><br>
			<div class="text-center">
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
    </div>
  </div><!-- Tab panes -->
</div>

	
</body>
</html>