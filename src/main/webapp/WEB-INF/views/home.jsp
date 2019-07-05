<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<a href="<%=request.getContextPath()%>/signup">회원가입</a>
<a href="<%=request.getContextPath()%>/signin">로그인</a>
<a href="<%=request.getContextPath()%>/member/modify">회원수정</a>
<%--
<h1>
 	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}.${name} </P>
<form method="get" action="<%=request.getContextPath()%>/">
	<input name="id" value="${name}"><br>
	<input name="num1" value="${a}">
	<input name="num2" value="${b}">
	<input name="res" value="${c}" readonly>
	<button>button</button><br>

<form method="get" action="<%=request.getContextPath()%>/">
	<input name="count" value="${cnt}">
	<button>button</button>
</form> --%>

</body>
</html>
