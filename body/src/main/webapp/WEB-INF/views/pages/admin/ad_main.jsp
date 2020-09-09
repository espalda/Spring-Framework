<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(document).ready(function(){
	$("#list1").jqGrid({
	    url:'server.php?q=1',
	    datatype: "xml",
	    colNames:['관리자 번호','관리자 이름', '관리자 등급', '권한 설정','수정','관리','테스트'],
	    colModel:[
	        {name:'id',index:'id', width:70},
	        {name:'invdate',index:'invdate', width:70},
	        {name:'name',index:'name', width:100},
	        {name:'amount',index:'amount', width:50, align:"right"},
	        {name:'tax',index:'tax', width:50, align:"right"},		
	        {name:'total',index:'total', width:50,align:"right"},		
	        {name:'note',index:'note', width:100, sortable:false}		
	    ],
	    autowidth: true,
	    rowNum:10,
	    rowList:[10,20,30],
	    pager: jQuery('#pager1'),
	    sortname: 'id',
	    viewrecords: true,
	    sortorder: "desc"
	}).navGrid('#pager1',{edit:false,add:false,del:false});
});
</script>
<table id="list1"></table>
<div id="pager1"></div>
<input type="button" value="관리자 등록" />