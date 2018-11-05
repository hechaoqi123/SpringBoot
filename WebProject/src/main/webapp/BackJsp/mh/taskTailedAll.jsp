<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <base href="<%=basePath%>">
<head>	
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>新增工作任务* - Colloa</title>
  <link rel="shortcut icon" href="http://cloud.10oa.com/trial/images/colloa.ico">
  <link rel="stylesheet" href="<%=basePath%>BackJsp/wsq/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=basePath%>BackJsp/wsq/css/view.css">
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/viewCn.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/view.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/utility.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
</head>
<body id="colloaBody">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody>
<tr valign="top"><td>&nbsp;</td><td id="colloaForm">
<div class="formTaskflowContainer">
<form action="/task/insert" method="post" class="formTaskflow" id="formflow">
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">查询任务</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">${list[0].username},</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td>&nbsp;优先级: <input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr></tbody></table>
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td id="dbf.subject" style="FONT-SIZE: 20px; FONT-WEIGHT: bold; TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type="required">
 <!-- 标题 --><input name="tname" id="tname" value="${list[0].tname}" class="pname"  style="height:40px;width:1000px; font-size: 20px; font-weight: bold; text-align: center;" readonly="readonly"></input>
</td>
</tr></tbody></table>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="100">
<col width="350">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center">任务分类</td>
<td>
<input id="dbf.psid2"  type="radio" value="0" name="rwfl" autocomplete="off">常规 
<input id="dbf.psid2" type="radio" value="10" name="rwfl" autocomplete="off">行政
 <input id="dbf.psid2" type="radio" value="20" name="rwfl" autocomplete="off">人事
  <input id="dbf.psid2" type="radio" value="30" name="rwfl" autocomplete="off">财务 
  <input id="dbf.psid2" type="radio" value="40" name="rwfl" autocomplete="off">业务 
  <input id="dbf.psid2" checked type="radio" value="项目" name="rwfl	" autocomplete="off">项目</td>
<td style="TEXT-ALIGN: center">从属于</td>
<td>${list[0].itemname}</td></tr>
<tr>
<td style="TEXT-ALIGN: center">创建人</td>
<td>${list[0].username}</td>
<td style="TEXT-ALIGN: center">所属部门</td>
<td>${list[0].deptName}</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>开始时间</td>
<td>${list[0].ksdeta}</td>
<td style="TEXT-ALIGN: center">结束时间</td>
<td>${list[0].jsdeta}</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>执行人</td>
<td >${list[0].username}</td>
<td style="TEXT-ALIGN: center">工作量</td>
<td>${list[0].workload}</td>
</tr>
<tr>
<td style="TEXT-ALIGN: center">任务说明</td>
<td id="任务说明" style="VERTICAL-ALIGN: top ;height:150px;" colspan="3" dbf.source="" dbf.type="">
${list[0].rwsm}
</td>
</tr>

<tr>
<td style="TEXT-ALIGN: center">执行结果</td>
<td id="执行结果" style="HEIGHT: 150px; VERTICAL-ALIGN: top" colspan="3" dbf.source="" dbf.type="">
<c:if test="${list[0].rwfl==1}">
完成
</c:if>
<c:if test="${list[0].rwfl==2}">
因某种原因取消任务
</c:if>
</td>
</tr>
</tbody></table>
</form></div>
<form method="post"><input type="hidden" id="viewState" name="viewState"></form>
 <c:if test="${list[0].rwfl==0}">

 <div id="_vWorkflowActionsShow" align="right">
  <a class="button" href="task/updateTaskAll?tid=${list[0].tid}">完成任务</a>
<a class="button" href="task/updateTaskOneAll?tid=${list[0].tid}">取消任务</a>
</div> 
</c:if>	<br>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
<colgroup>
</colgroup><tbody>
<tr valign="top">
</tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</body></html>
<script type="text/javascript" src="BackJsp/wsq/js/jquery-1.8.3.min.js"></script>
<script language="javaScript">
 
  </script>