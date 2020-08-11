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
width: 500px;
}
.sign-01 h1 {
padding: 10px;
font-size: 30px;
text-align: center;
}

/* --- input --- */
.sign-01 input[type=text], input[type=password] {
all: unset;
width: 300px;
height: 30px;
padding-left: 10px;
letter-spacing: 2px;
border-bottom: 1px solid #e5e5e5;
}
.sign-01 input[name=phone] {
width: 80px;
height: 30px;
text-align-last:center;
border-bottom: 1px solid #e5e5e5;
line-height: 25px;
vertical-align: -19px;
}
.sign-01 span {
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
margin: 30px;
background: #51769e;
color: white;
font-size: 20px;
}
.sign-01 .desc {
width: 100px;
text-align: center;
font-size: 15px;
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
})
</script>