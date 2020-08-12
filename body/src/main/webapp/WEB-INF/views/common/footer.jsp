<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
/* -- footer css --*/
.foot-detail h1 {
}
.foot-info {
width: 100%;
height: 40px;
padding: 5px 190px;
}
.foot-info li {
padding: 5px;
}
.foot-detail{
border: 1px solid #ddd;
width: 80%;
height: 200px;
margin: 0 auto;
}
.foot-detail hr {
width: 70px;
margin: 10px 0;
}
.foot-phone {
float: left;
padding: 10px;
width: 30%;
height: 200px;
border-right: 1px solid #ddd;
}
.foot-addr {
float: left;
padding: 10px;
width: 30%;
height: 200px;
border-right: 1px solid #ddd;
}
.foot-qna {
float: left;
padding: 10px;
width: 40%;
height: 200px;
}
.foot-detail i {
padding-right: 5px;
}
.qna-left {
float: left;
}
.qna-left div {
border: 1px solid #ddd;
padding: 5px;
margin: 5px 0;
text-align: center;
}
.qna-right {
width: 350px;
height: 130px;
float: right;
}
</style>
</head>
<body>
	<div class="foot-info">
		<ul>
			<li><a href="#">회사소개</a></li>
			<li>|</li>
			<li><a href="#">이용약관</a></li>
			<li>|</li>
			<li><a href="#">쇼핑몰 이용안내</a></li>
			<li>|</li>
			<li><a href="#">개인정보취급방침</a></li>
			<li>|</li>
			<li><a href="#">고객센터</a></li>
		</ul>
	</div>
	<div class="foot-detail">
		<div class="foot-phone">
			<b>고객만족센터</b>
			<hr>
			<h1>043-123-4568</h1>
			<div><b>평일</b> 오전 9:00 - 오후 17:00</div>
			<div><b>점심</b> 오전 12:00 - 오후 13:00</div>
			<div><b>휴무</b> 토/일/공휴일</div>
		</div>
		<div class="foot-addr">
			<b>회사정보안내</b>
			<hr>
			<div><i class="fas fa-building"></i><b>회사명</b> (주)에브리바디</div>
			<div><i class="fas fa-map-marker-alt"></i><b>주소</b> 충청북도 청주시 흥덕구 어디로 어디어디 어디어디호</div>
			<div><i class="fas fa-phone-square-alt"></i><b>사업자번호</b> 000-00-00000</div>
		</div>
		<div class="foot-qna">
			<b>자주묻는질문</b>
			<hr>
			<div class="qna-left">
				<div><a href="#">배송조회</a></div>
				<div><a href="#">자주묻는질문</a></div>
				<div><a href="#">고객만족센터</a></div>
				<div><a href="#">회원등급안내</a></div>
			</div>
			<div class="qna-right">
			</div>
		</div>
	</div>

</body>
</html>
