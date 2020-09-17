<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>회원가입</h1>
<div class="chk">
	<input type="checkbox" id="chk-all" data-chk="term"/><label for="chk-all">모두 동의합니다.</label><br/><hr/>
	<input type="checkbox" id="chk1" data-chk="term"/><label for="chk1">서비스이용약관</label><button role="chk-desc">[상세보기]</button><br/>
	<input type="checkbox" id="chk2" data-chk="term"/><label for="chk2">개인정보 취급방침 및 이용안내</label><button role="chk-desc">[상세보기]</button>
</div>
<div>
	<label class="desc">이름</label>
	<input type="text" id="name" />
</div>
<div>
	<label class="desc">이메일</label>
	<input type="text" id="email" />
</div>
<div>
	<label class="desc">비밀번호</label>
	<input type="password" id="pw1" />
</div>
<div>
	<label class="desc">비밀번호 확인</label>
	<input type="password" id="pw2" />
</div>
<div>
	<label class="desc" style="vertical-align: -19px;">연락처</label>
	<select>
		<option>010</option>
		<option>011</option>
		<option>012</option>
	</select>
	<span role="-">-</span>
	<input type="text" id="phone1" name="phone">
	<span role="-">-</span>
	<input type="text" id="phone2" name="phone">
</div>

<div>
	<p style="text-align: center; margin-top: 30px;">아래는 선택사항입니다.</p>
	<hr/>
	<label class="desc">생일</label>
	<input type="text" id="datepicker">
</div>
<div>
	<label class="desc">우편번호</label>
	<input type="text" name="addr" style="width: 184px;" /><button id="search_addr">주소검색</button>
</div>
<div>
	<label class="desc">기본주소</label>
	<input type="text" name="addr" />
</div>
<div>
	<label class="desc">상세주소</label>
	<input type="text" name="addr" />
</div>
<input type="button" value="click" />
<div>
<hr/>
	<a href="<c:url value="/pages/sign/find_id" />"><span>아이디 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
</div>