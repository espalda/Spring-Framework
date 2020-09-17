<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
input[type=text], input[type=password] {
all: unset;
width: 280px;
height: 50px;
padding-left: 10px;
letter-spacing: 2px;
border-bottom: 1px solid #e5e5e5;
}
input[name=phone] {
width: 65px;
height: 30px;
padding: 0 5px;
text-align: center;
border-bottom: 1px solid #e5e5e5;
line-height: 25px;
vertical-align: -19px;
}
span[role="-"] {
vertical-align: -19px;
padding: 0 7px;
}
select {
width: 70px;
height: 30px;
text-align-last:center;
border: 1px solid black;
line-height: 25px;
vertical-align: -19px;
}
input[type=checkbox] {
vertical-align: middle;
margin-right: 5px;
}
input[type=button] {
width: 400px;
height: 50px;
border: 1px solid black;
background: #51769e;
color: white;
font-size: 20px;
margin: 30px 0;
}
.desc {
width: 80px;
text-align: center;
}
#search_addr {
all: unset;
width: 70px;
height: 30px;
border: 1px solid black;
text-align: center;
cursor: pointer;
margin-left: 20px;
}
.chk {
border: 1px solid black;
width: 400px;
background: #eee;
padding: 15px;
margin: 15px 0;
}
[role="chk-desc"] {
all: unset;
float: right;
color: #51769e;
}
[role="chk-desc"]:hover {
font-weight: bold;
}
.ui-datepicker{ font-size: 12px; width: 230px; }
.ui-datepicker select.ui-datepicker-month{ width:30%; font-size: 11px; }
.ui-datepicker select.ui-datepicker-year{ width:40%; font-size: 11px; }
</style>
<script>
$(document).ready(function() {
	$('input').keyup(function() {
		if($(this).val() != "") {
			console.log($(this).val());
			$(this).css({'border-bottom':'1px solid black', 'transition': '0.8s'});
		}
		if($(this).val() == "") {
			console.log($(this).val());
			$(this).css('border-bottom', '1px solid #e5e5e5');
		}
	})
	
	//validate plugin 사용 필요
	$('input[name=phone]').keyup(function() {
		var regex= /^[0-9]{4}/g;
		var nm = $(this).val();
		if(nm.length > 5) {
			if (nm.match(regex)) {
                nm = nm.subString(0,4);
			}
			$(this).val(nm);
		}
		$(this).val(nm.replace(regex, ""));
	})
	

	$(function() {
	    $("#datepicker").datepicker({
	    	 dateFormat: 'yy년 mm월 dd일',
	         prevText: '이전 달',
	         nextText: '다음 달',
	         monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	         monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	         dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	         dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	         showMonthAfterYear: true,
	         changeMonth: true,
	         changeYear: true,
	         yearRange: '-60:+0',
	    });
	});
}) /* document end */
</script>