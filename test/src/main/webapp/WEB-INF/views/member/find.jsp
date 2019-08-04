<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="/WEB-INF/views/common/bootstrap.jsp"></jsp:include>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#pwFind').click(function(){
			var id = $('input[name=id]').val();
			var email = $('input[name=email]').val();
			if(id.length == 0 || email.length == 0){	
				alert('아이디와 이메일을 입력해주세요');
				return false;	//버튼 타입인 submit으로 가는것을 막아주기 위해서 */
			}
			var send = false;
			$.ajax({
				async:false,	//동기 true 비동기 false 방식 설정
				type:'POST',
				data:{'id':id, 'email':email},	//항상 중괄호에 넣어준다
				url:"<%=request.getContextPath()%>/checkemail",
				dataType:"json",
				contentType:"application/json; charset=UTF-8",
				success : function(aaa){
					send = aaa.isMember;
					if(!aaa.isMember){
						alert('회원정보가 일치하지 않습니다');
					}else{
						alert('임시 비밀번호를 해당 메일로 전송했습니다.');
					}
				}
			});
			return send;
		});
	})
	</script>
	<title>test-비밀번호 찾기</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
	<br>
	<form method="post" action="<%=request.getContextPath()%>/password/send">
		<div class="container offset-4 col-4">
			<div class="row">
				<label class="col-4"></label>
				<input type="text"class="form-control col-7" placeholder="아이디" name="id">
			</div>
			<div class="row">
				<label class="col-4"></label>
				<input type="email"class="form-control col-7" placeholder="이메일"  name="email">
			</div>
			<div class="offset-8 col-3 clearfix p-0">
				<button class="btn btn btn-outline-dark float-right" id="pwFind">확인</button>
			</div>
	</div>
	</form>
</body>
</html>