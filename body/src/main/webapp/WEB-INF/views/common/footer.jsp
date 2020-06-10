<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
@font-face { font-family: 'TmonMonsori'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') format('woff'); font-weight: normal; font-style: normal; }
h1 {
font-family: 'TmonMonsori';
}
.foot-info {
border: 1px solid black;
width: 100%;
height: 40px;
padding: 5px 160px;
}
.foot-info li {
padding: 5px;
}
.foot-detail{
border: 1px solid black;
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
border: 1px solid black;
padding: 10px;
width: 30%;
height: 200px;
}
.foot-addr {
float: left;
border: 1px solid black;
padding: 10px;
width: 30%;
height: 200px;
}
.foot-qna {
float: left;
border: 1px solid black;
padding: 10px;
width: 40%;
height: 200px;
}
.foot-detail i {
padding-right: 5px;
}
</style>
</head>
<body>
	<div class="foot-info">
		<ul>
			<li>회사소개</li>
			<li>|</li>
			<li>이용약관</li>
			<li>|</li>
			<li>쇼핑몰 이용안내</li>
			<li>|</li>
			<li>개인정보취급방침</li>
			<li>|</li>
			<li>고객센터</li>
		</ul>
	</div>
	<div class="foot-detail">
		<div class="foot-phone">
		
			<div><b>고객만족센터</b></div>
			<hr>
			<h1>043-123-4568</h1>
			<div><b>평일</b> 오전 9:00 - 오후 17:00</div>
			<div><b>점심</b> 오전 12:00 - 오후 13:00</div>
			<div><b>휴무</b> 토/일/공휴일</div>
		</div>
		<div class="foot-addr">
			<div><b>회사정보안내</b></div>
			<hr>
			<div><i class="fas fa-building"></i><b>회사명</b><br>(주)에브리바디</div>
			<div><i class="fas fa-map-marker-alt"></i><b>주소</b><br>충청북도 청주시 흥덕구 어디로 어디어디 어디어디호</div>
			<div><i class="fas fa-phone-square-alt"></i><b>사업자번호</b><br>000-00-00000</div>
		</div>
		<div class="foot-qna">
			<div><b>자주묻는질문</b></div>
			<hr>
			<div>배송조회</div>
			<div>반품&교환</div>
			<div>자주묻는질문</div>
			<div>고객만족센터</div>
			<div>회원등급안내</div>
		</div>
	</div>

</body>
</html>
