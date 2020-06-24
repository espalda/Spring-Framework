<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
table i {
color: red;
}
.text {
height: 200px;
padding: 10px;
overflow: auto;
}
.table-01 input[type=checkbox], .table-02 input[type=checkbox] {
vertical-align: middle;
margin-right: 5px;
}
h3 {
padding: 10px 0 0 10px;
}
.table-03 input {
width: 200px;
height: 30px;
}
.table-03 th {
padding: 20px;
}
</style>
<h1>SIGN-UP</h1>
<h3>약관동의</h3>
<table class="table table-bordered table-01" style="width: 565px; float: left; margin-right: -1px;">
	<tr>
		<th style="background: #eee;">
		<label for="chk_01"><input type="checkbox" id="chk_01">[필수] 이용약관 동의</label>
		</th>
	</tr>
	<tr>
		<td>
			<div class="text">
				<jsp:include page="/WEB-INF/views/pages/sign/private_doc.jsp"></jsp:include>
			</div>
		</td>
	</tr>
</table>
<table class="table table-bordered table-02" style="width: 564px; float: left;">
	<tr>
		<th style="background: #eee;">
		<label for="chk_02"><input type="checkbox" id="chk_02">[필수] 이용약관 동의</label>
		</th>
	</tr>
	<tr>
		<td>
		<div class="text">
			<jsp:include page="/WEB-INF/views/pages/sign/private_doc2.jsp"></jsp:include>
		</div>
		</td>
	</tr>
</table>
<hr>
<h3>정보입력</h3>
<table class="table table-bordered table-03">
<tr>
	<th width="15%">이메일<i>*</i></th>
	<td><input type="text"><span> @ </span><input type="text" id="sign_addr">
	<select id="kind_addr">
		<option value="">직접입력</option>
		<option value="naver.com">네이버</option>
		<option value="nate.com">네이트</option>
		<option value="gmail.com">지메일</option>
		<option value="daum.net">다음</option>
		<option value="kakao.com">카카오</option>
	</select></td>
</tr>
<tr>
	<th>비밀번호<i>*</i></th>
	<td><input type="password"><span> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</span></td>
</tr>
<tr>
	<th>비밀번호 확인<i>*</i></th>
	<td><input type="password"></td>
</tr>
<tr>
	<th>이름<i>*</i></th>
	<td><input type="text"></td>
</tr>
<tr>
	<th>휴대전화<i>*</i></th>
	<td>
		<select>
			<option>010</option>
			<option>011</option>
			<option>016</option>
			<option>017</option>
			<option>018</option>
			<option>019</option>
		</select>
		<span> - </span>
		<input type="text">
		<span> - </span>
		<input type="text">
	</td>
</tr>
<tr>
	<th>주소</th>
	<td>
		<input type="text"><input type="button" value="우편번호"><br>
		<input type="text"><span>기본주소</span><br>
		<input type="text"><span>상세주소</span>
	</td>
</tr>

</table>
<script>
	$('#kind_addr').change(function(){
		if($(this).val() == '') {
			$('#sign_addr').val('');
			$('#sign_addr').css('background', '#fff');
			$('#sign_addr').attr('readonly', false);
		} else {
			$('#sign_addr').val($('#kind_addr').val());
			$('#sign_addr').css('background', '#ddd');
			$('#sign_addr').attr('readonly', true);
		}
	})
</script>