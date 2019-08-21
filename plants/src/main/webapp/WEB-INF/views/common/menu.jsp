<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	body {
	  color: #5D5F63;
	  padding: 0;
	  margin: 0;
	}
	.sidebar-toggle {
	  margin-left: -240px;
	}
	.sidebar {
	  width: 240px;
	  height: 100%;
	  background: #293949;
	  position: absolute;
	}
	.sidebar #leftside-navigation ul,
	.sidebar #leftside-navigation ul ul {
	  margin: -2px 0 0;
	  padding: 0;
	}
	.sidebar #leftside-navigation ul li {
	  list-style-type: none;
	  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
	}
	.sidebar #leftside-navigation ul li.active > a {
	  color: #1abc9c;
	}
	.sidebar #leftside-navigation ul li.active ul {
	  display: block;
	}
	.sidebar #leftside-navigation ul li a {
	  color: #aeb2b7;
	  text-decoration: none;
	  display: block;
	  padding: 18px 0 18px 25px;
	  font-size: 12px;
	  outline: 0;
	}
	.sidebar #leftside-navigation ul li a:hover {
	  color: #1abc9c;
	}
	.sidebar #leftside-navigation ul li a span {
	  display: inline-block;
	}
	.sidebar #leftside-navigation ul li a i {
	  width: 20px;
	}
	.sidebar #leftside-navigation ul li a i .fa-angle-left,
	.sidebar #leftside-navigation ul li a i .fa-angle-right {
	  padding-top: 3px;
	}
	.sidebar #leftside-navigation ul ul {
	  display: none;
	}
	.sidebar #leftside-navigation ul ul li {
	  background: #23313f;
	  margin-bottom: 0;
	  margin-left: 0;
	  margin-right: 0;
	  border-bottom: none;
	}
	.sidebar #leftside-navigation ul ul li a {
	  font-size: 12px;
	  padding-top: 13px;
	  padding-bottom: 13px;
	  color: #aeb2b7;
	  border-bottom: 1px solid #b97f6d;
	}
	
	</style>
</head>
<body>
	<div class="">
	<aside class="sidebar">
	  <div id="leftside-navigation" class="nano">
	    <ul class="nano-content">
	      <li class="active">
	        <a href="<%=request.getContextPath()%>/admin/seller"><i class="fas fa-grin"></i><span>관리자 페이지</span></a>
	      </li>
	      <li class="sub-menu">
	        <a href="javascript:void(0);"><i class="fas fa-user"></i><span>회원 관리</span></a>
	        <ul>
	          <li><a href="<%=request.getContextPath()%>/admin/list">회원 검색</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">회원 관리</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">회원 등급</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">회원 쿠폰</a>
	          </li>
	        </ul>
	      </li>
	      <li class="sub-menu">
	        <a href="javascript:void(0);"><i class="fas fa-cube"></i><span>상품 관리</span></a>
	        <ul>
	          <li><a href="<%=request.getContextPath()%>/admin/list">상품 등록</a>
	          </li>
	
	          <li><a href="<%=request.getContextPath()%>/admin/list">상품 수정</a>
	          </li>
	
	          <li><a href="<%=request.getContextPath()%>/admin/list">상품 관리</a>
	          </li>
	        </ul>
	      </li>
	      <li class="sub-menu">
	        <a href="javascript:void(0);"><i class="fa fa fa-tasks"></i><span>주문 관리</span></a>
	        <ul>
	          <li><a href="<%=request.getContextPath()%>/admin/list">주문 현황</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">배송 관리</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">배송 수정</a>
	          </li>
	        </ul>
	      </li>
	      <li class="sub-menu">
	        <a href="javascript:void(0);"><i class="fa fa-file"></i><span>게시글 관리</span></a>
	        <ul>
	          <li><a href="<%=request.getContextPath()%>/admin/list">공지 사항</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">게시글 관리</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">게시글 수정</a>
	          </li>
	        </ul>
	      </li>
	      <li class="sub-menu">
	        <a href="javascript:void(0);"><i class="fa fa-envelope"></i><span>메일</span></a>
	        <ul>
	          <li><a href="<%=request.getContextPath()%>/admin/list">메일 보내기</a>
	          </li>
	        </ul>
	      </li>
	      <li class="sub-menu">
	        <a href="javascript:void(0);"><i class="fas fa-chart-pie"></i><span>통계</span></a>
	        <ul>
	          <li><a href="<%=request.getContextPath()%>/admin/list">금주 베스트</a>
	          </li>
	          <li><a href="<%=request.getContextPath()%>/admin/list">이달 베스트</a>
	          </li>
	        </ul>
	      </li>
	     
	   
	    </ul>
  </div>
</aside>

<script>
$("#leftside-navigation .sub-menu > a").click(function(e) {
  $("#leftside-navigation ul ul").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(),
  e.stopPropagation()
})
</script>
</div>
</body>
</html>