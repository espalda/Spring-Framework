<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
input[type=text], input[type=password] {
all: unset;
width: 286px;
height: 50px;
padding-left: 10px;
letter-spacing: 2px;
border-bottom: 1px solid #e5e5e5;
}
input[name=phone] {
width: 63px;
height: 30px;
padding: 0 10px;
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
width: 80px;
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
width: 100px;
text-align: center;
}
#search_addr {
all: unset;
width: 80px;
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

</style>
<script>
$(document).ready(function() {
	$('.sign-01 input').keyup(function() {
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
		if(nm.length > 4) {
			if (nm.match(regex)) {
                nm = nm.subString(0,3);
			}
			$(this).val(nm);
		}
		$(this).val(nm.replace(regex, ""));
	})
})
</script>