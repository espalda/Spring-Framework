<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="sign-01">
	<h1>회원가입</h1>
	<div class="chk">
		<input type="checkbox" id="chk-all" data-chk="term"/><label for="chk-all">모두 동의합니다.</label><br/><hr/>
		<input type="checkbox" id="chk1" data-chk="term"/><label for="chk1">서비스이용약관</label><button role="chk-desc">[상세보기]</button><br/>
		<input type="checkbox" id="chk2" data-chk="term"/><label for="chk2">개인정보 취급방침 및 이용안내</label><button role="chk-desc">[상세보기]</button>
	</div>
	
	<label class="desc">name</label>
	<input type="text" id="name" placeholder="please, enter your name"><br/>
	
	<label class="desc">e-mail</label>
	<input type="text" id="email" placeholder="please, enter your e-mail"><br/>
	
	<label class="desc">password</label>
	<input type="password" id="pw1" placeholder="please, enter your password"><br/>
	
	<label class="desc">re-password</label>
	<input type="password" id="pw2" placeholder="please, re-enter your password"><br/>
	
	<label class="desc" style="vertical-align: -19px;">phone</label>
	<select>
		<option>010</option>
		<option>011</option>
		<option>012</option>
	</select>
	<span role="-">-</span>
	<input type="text" id="phone1" name="phone">
	<span role="-">-</span>
	<input type="text" id="phone2" name="phone"><br/>
	
	<p style="text-align: center; margin-top: 30px;">아래는 선택사항입니다.</p>
	<label class="desc">birthday</label>
	<input type="text" value="datepicker"><br/>
	
	<label class="desc">address</label>
	<input type="text" name="addr" style="width: 184px;"><button id="search_addr">주소검색</button><br/>
	<input type="text" name="addr" style="margin-left: 100px;"><br>
	<input type="text" name="addr" style="margin-left: 100px;" placeholder="please, enter your datail address"/><br>
	
	<input type="button" value="sign up">
	<hr>
	<a href="<c:url value="/pages/sign/find_id" />"><span>아이디 찾기</span></a>
	<span>|</span>
	<a href="<c:url value="/pages/sign/find_pw" />"><span>비밀번호 찾기</span></a>
</div>
