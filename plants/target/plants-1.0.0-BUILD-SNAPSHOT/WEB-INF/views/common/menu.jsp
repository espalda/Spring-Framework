<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.menubar {
  width: 200px;
  height: 100%;
  background: #293949; 
}

.menubar a {
  color: #aeb2b7;
  text-decoration: none;
  display: block;
  padding: 18px 0 18px 25px;
  font-size: 12px;
  outline: 0;
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}
.menubar a:hover{
  color: #1abc9c;
}
.menubar a:active{
  color: #1abc9c;
}
.fas, .fa{
  width: 20px;
}
.fa-angle-right {
  width: 20px;
  float: right;
}



</style>
</head>

<body>

  
  <div class="menubar">
      <ul class="nano-content">
        <li>
          <a href="#"><i class="fas fa-grin"></i><span>관리자 페이지</span><i class="fas fa-angle-right"></i></a>
        </li>
        <li>
          <a href="#"><i class="fas fa-user"></i><span>회원 관리</span><i class="fas fa-angle-right"></i></a>
        </li>
        <li>
          <a href="#"><i class="fas fa-cube"></i><span>상품 관리</span><i class="fas fa-angle-right"></i></a>
        </li>
        <li>
          <a href="#"><i class="fa fa fa-tasks"></i><span>주문 관리</span><i class="fas fa-angle-right"></i></a>
        </li>
        <li>
          <a href="#"><i class="fa fa-file"></i><span>게시글 관리</span><i class="fas fa-angle-right"></i></a>
        </li>
      </ul>
</div>
<script>
  $('.nano-content a').click(function(){
    $(this).addClass('active');

  })
</script>
</body>
</html>