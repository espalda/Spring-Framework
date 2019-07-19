<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<meta charset="UTF-8">
	<title>비밀번호를 찾기위한 아이디와 이메일 입력창</title>
	<script type="text/javascript">
	$(document).ready(function(){
		$('input[name=id]').focus();
		$('#findBtn').click(function(){
			var id = $('input[name=id]').val();
			var email = $('input[name=email]').val();
		$.ajax({
			async:true,
			type:'POST',
			data:{'id':id,'email':email},
			url:"<%=request.getContextPath()%>/checkemail",
			dataType:"json",
			contentType:"application/json; charset=UTF-8",
			success : function(data){
				if(data.isOk){
					$('findForm').submit();
				}else{
					alert('일치하는 정보가 없습니다');
				}
			}
		});
		});
	})
	
	</script>
	
	
	
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<form method="post" action="<%=request.getContextPath()%>/password/send" id="findForm">
		<div class="container offset-4 col-4">
			<h4 style="text-align: center;">비밀번호 찾기</h4>
				<div class="row">
					<label class="col-4">아이디</label>
					<input type="text" class="form-control col-7" placeholder="아이디" name="id">
				</div>
				<div class="row">
					<label class="col-4">이메일</label>
					<input type="email"class="form-control col-7" placeholder="이메일" id="email" name="email">
				</div>
				<div class="offset-7 col-4 clearfix p-0">
					<button type="button" class="btn btn-success float-right" id="findBtn">확인</button>
					<!-- 버튼 클릭시 ajax로 사용하려고 button 사용 -->
				</div>
		</div>
	</form>
</body>
</html>