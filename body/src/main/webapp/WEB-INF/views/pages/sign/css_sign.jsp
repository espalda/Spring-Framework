<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
/* -- sign css -- */
.content {
padding-top: 30px;
width: 1130px;
height: 100%;
margin: 0 auto;
}
.sign-01 {
margin: 0 auto;
width: 400px;
}
.sign-01 h1 {
padding: 10px;
}
.sign-01 img {
vertical-align: text-bottom;
margin: 0 3px;
}
/* --- input --- */
.sign-01 input[type=text], input[type=password] {
all: unset;
width: 286px;
height: 50px;
padding-left: 10px;
letter-spacing: 2px;
border-bottom: 1px solid #e5e5e5;
}
.sign-01 input[name=phone] {
width: 63px;
height: 30px;
padding: 0 10px;
text-align: center;
border-bottom: 1px solid #e5e5e5;
line-height: 25px;
vertical-align: -19px;
}
.sign-01 span[role="-"] {
vertical-align: -19px;
padding: 0 7px;
}
.sign-01 select {
width: 80px;
height: 30px;
text-align-last:center;
border: 1px solid black;
line-height: 25px;
vertical-align: -19px;
}
.sign-01 input[type=checkbox] {
vertical-align: middle;
margin-right: 5px;
}
.sign-01 input[type=button] {
width: 400px;
height: 50px;
border: 1px solid black;
background: #51769e;
color: white;
font-size: 20px;
margin: 30px 0;
}
.sign-01 .desc {
width: 100px;
text-align: center;
}
.sign-01 #search_addr {
all: unset;
width: 80px;
height: 30px;
border: 1px solid black;
text-align: center;
cursor: pointer;
margin-left: 20px;
}
.sign-01 .chk {
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