<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
	body{
	background-color: #ededed;
	}	
	.shop-1 a{
	width: 150px;
	text-decoration: none;
	}
			
	.shop-list{
	display: none;
	position: absolute;
	border: 1px solid #b97f6d;
	border-top: none;
	left: -30px;
	top: 35px;
	z-index: 999;
  	}
	
	.shop-1{
	position: relative;
	}
/* ---------------------------- navigation-1 */
	.nav-1{
	border-bottom: 0px;
	background-color:#ededed;
	font-size: 11px;
	height: 25px;
	font-family: Consolas,monaco,monospace !important;
	}
	
	.nav-1 a{
	color: #b97f6d;
	line-height: 10px;
	letter-spacing: 1px;
	}
	
	.nav-1 ul{
	margin-right: 70px;
	}


/* ---------------------------- navigation-2 */
	.nav-2{
	width: 90%;
	background-color: white;
	color: #123132;
	margin: 0 auto;
	font-family: 'Titillium Web', sans-serif;
	}
	
	.nav-2 a{
	color: #123132;
	font-size: 18px;
	}
	
/* ---------------------------- dropbox-shop */
	.shop-list a{
	width: 150px;
	color: black;
	background-color: #ededed;
	text-decoration: none;
	display: block;
	padding: 10px;
	font-size: 13px;
	border-top: 1px solid #b97f6d;
	font-family: 'Titillium Web', sans-serif;
	text-align: left;
	}

	.shop-list a:hover{
	width: 150px;
	color: #ffffff;
	background-color: #123132;
	text-decoration: none;
	display: block;
	padding: 10px;
	font-size: 13px;
	border-top: 1px solid #b97f6d;
	text-align: left;
	}
	
</style>
</head>
<body>
<div class="navigation">
	<div class="nav-1">
		<ul class="nav justify-content-end" >
			<c:if test="${login eq null }">
				<li class="nav-item">
			   	<a class="nav-link" href="<%=request.getContextPath()%>/signin">SIGNIN</a>
			  	</li>
			  	<li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/signup">SIGNUP</a>
				</li>
			</c:if>
			
			<c:if test="${login ne null }">
				<li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/signout">SIGNOUT</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/member/profile">MYPAGE</a>
				<li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/item/basket">BASKET</a>
				</li>
				<%-- <li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/item/order">ORDER</a>
				</li> --%>
			</c:if>
				
			<c:if test="${login.authority eq 'admin' ||  login.authority eq 'seller'}">
				<li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/admin/seller">ADMIN</a>
				</li>
			</c:if>
			
				<li class="nav-item">
					<a class="nav-link" href="<%=request.getContextPath()%>/help">HELP</a>
				</li>
		</ul>
	</div>
	

		<!-- Links -->
	<div class="nav-2">
		<div class="text-center">
			<img alt="" src="<%=request.getContextPath()%>/resources/img/logo-tmp.png" width="200px;">
		</div>
		<ul class="nav justify-content-center">
			<li class="nav-item">
				<a class="menu-img" href="#"><img alt="" src="<%=request.getContextPath()%>/"></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/">home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath()%>/item/new">new</a>
			</li>
			
			<!-- dropbox-tab -->
			<li class="nav-link">
				<div class="shop-1 clearfix" style="cursor:pointer;">
					<a>product<i class="fas fa-caret-down ml-2"></i></a>
					<ul class="shop-list">
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list?type=Succulents">Succulents</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list?type=Cactus">Cactus</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list?type=Plant">Plant</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list?type=Hanging plant">Hanging plant</a></li>
						<li><a class="nav-link" href="<%=request.getContextPath()%>/item/list?type=Goods">Goods</a></li>
					</ul>
				</div>
			</li>	
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/item/event">event</a>
			</li> 
			<li class="nav-item">
			  <a class="nav-link" href="<%=request.getContextPath()%>/board/list">board</a>
			</li>
		</ul>
	</div>
</div>


<script>
$(".shop-1 > a").mouseenter(function(aaa) {
  $(".shop-list").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(), aaa.stopPropagation()
})

$(".shop-1 .shop-list").mouseleave(function(aaa) {
  $(".shop-list").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(), aaa.stopPropagation()
})
</script>	
</body>
</html>