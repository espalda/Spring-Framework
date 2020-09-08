<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
var searchResultColNames =  ['관리자 번호', '관리자 이름', '관리자 등급', '권한 설정'];
var searchResultColModel =         
                [{name:'bbsMgtNo',       index:'bbsMgtNo',      align:'center', hidden:true},
                {name:'bbsNum',         index:'bbsNum',        align:'left',   width:'12%'},
                {name:'bbsTitle',       index:'bbsTitle',      align:'center', width:'50%'},
                {name:'bbsHit',         index:'bbsHit',        align:'center', width:'12%'}];
$(function() {
        $("#grid").jqGrid({
            height: 261,
            width: 1019,
            colNames: searchResultColNames,
            colModel: searchResultColModel,
            rowNum : 10,
            pager: "pager" 
        });
    });
</script>
<table id="grid"></table>
<input type="button" value="관리자 등록" />