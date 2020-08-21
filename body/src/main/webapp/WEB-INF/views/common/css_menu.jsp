<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.content {
width: 800px;
height: 100%;
margin: 0 auto;
}
.sub-menu {
height: 300px;
padding: 6px;
border-radius: 5px;
background: #EDEDED;
}
.sub-menu li {
width: 15%;
height: 100px;
background: #fff;
margin: 0.83%;
border-radius: 5px;
}
.sub-menu a {
display: inline-block;
width: 120px;
padding: 8px 0;
font-size: 13px;
cursor: pointer;
text-align: center;
}
.sub-menu img {
display: block;
margin: 0 auto;
}
.sub-menu a:hover {
opacity: 0.5;
transition: 0.2s;
}
[data-nm] {
all: unset;
width: 80px;
height: 24px;
padding: 0 5px;
box-sizing: border-box;
border: 1px solid #C0C0C0;
border-radius: 5px;
}
</style>