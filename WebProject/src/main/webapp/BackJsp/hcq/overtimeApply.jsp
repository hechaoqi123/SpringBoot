<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>加班申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">  
    <script src="BackJsp/hcq/js/viewCn.js"></script>
    <script src="BackJsp/hcq/js/utility.js"></script> 
    <script src="BackJsp/hcq/js/view.js"></script>  
    <script src="BackJsp/hcq/js/jquery-2.0.3.min.js"></script>  
    <style>
       *{
         font-size:14px;
       }
    </style>
  </head>
<body id="colloaBody">
 <form id="myForm" action="Overtime/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">
  <input id="e.dbf.subject" class="fieldEditable" name="theme" value="加班申请-李萌-1002015"></td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td>
   <input id="dbf.priority" type="radio" value="-1"  autocomplete="off">低
   <input id="dbf.priority" checked="" type="radio" value="0"  autocomplete="off">中
   <input id="dbf.priority" type="radio" value="1" autocomplete="off">高</td>
</tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">填单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;结束时间:</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>加班申请单</strong></span></div>
<div>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col width="200">
<col width="120">
<col width="200">
<col width="120">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请人</td>
<td >
  <input name="applypeople" id="e.dbf.positionX" class="fieldEditable">
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td>
  <input name="dept" id="e.dbf.positionX" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请时间</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
  <input name="applydate" id="currentDate" class="fieldEditable">
</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>加班时间</td>
<td id="dbf.time0" >
  <input name="begindate" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center">～</td>
<td id="dbf.time1" dbf.type="date,required" dbf.source="datetime,editable">
   <input name="enddate" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center" dbf.type="date,required" dbf.source="datetime,editable">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>共计时长</td>
<td dbf.type="date,required" dbf.source="datetime,editable">
  <input id="dbf.number3" style="WIDTH: 40px" value="0" name="field1" dbf.type="number,required"> 天</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>加班事由</td>
<td id="加班事由" colspan="5" dbf.type="required" dbf.source="">
  <textarea id="e.加班事由" name="cause" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr></tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table></form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form>
<br><div id="_vWorkflowActionsShow" align="right">
  <a id="sub" class="button" href="javascript:" >提交审批</a>
  <a id="ret" class="button" href="javascript:">取消</a>
</div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?703230&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body></html>

<script>
     $(function(){
       $("#currentDate").val(new Date().toLocaleDateString())
     })
      $("#sub").click(function(){
         $("#myForm").submit();
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/overtime.jsp";
      })
      
</script>

