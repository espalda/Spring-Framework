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
table th{
font-family: 'GyeonggiBatang';
}
</style>
</head>
<body>
<div class="help mx-auto"><br>
 <i class="far fa-envelope mr-2"></i><h4>문의 메일</h4>
    <!-- * 메일 보내기 -->
	      <form action="<%= request.getContextPath()%>/mail/mailSending"><br>
			<div class="text-center">
				<table>
					<tr>
						<th>보내는 사람</th>
						<td><input type="text" size="40" name="tomail" class="input"></td>
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
</body>
</html>