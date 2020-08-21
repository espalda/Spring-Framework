<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table">
	<tr>
		<th colspan="4">현재 발급 되어 있는 쿠폰 목록</th>
	</tr>
	<tr>
		<th>쿠폰발급번호</th>
		<th>쿠폰명</th>
		<th>사용기간</th>
		<th>할인상세</th>
	</tr>
	<tr>
		<td>p-00122</td>
		<td>신규가입쿠폰</td>
		<td>기간 2020-10-10 까지</td>
		<td>전상품 10%</td>
	</tr>
</table>
<table class="table">
	<tr>
		<th colspan="4">쿠폰 등록</th>
	</tr>
	<tr>
		<th width="50px">쿠폰명</th>
		<th width="40%">할인대상</th>
		<th width="10%">쿠폰할인률</th>
	</tr>
	<tr>	
		<td><input type="text" /></td>
		<td><input type="checkbox" id="1" /><label for="1">배송비</label>
			<input type="checkbox" id="2" /><label for="2">신상품</label>
			<input type="checkbox" id="3" /><label for="3">바디로션</label>
			<input type="checkbox" id="5" /><label for="5">비누</label>
			<input type="checkbox" id="4" /><label for="4">전상품</label>
		</td>
		<td><input type="text" /></td>
	</tr>
</table>