<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html>
<!-- saved from url=(0109)http://cloud.10oa.com/trial/view/formTaskflow.aspx?context=1021945&name=%e5%85%a5%e8%81%8c%e7%94%b3%e8%af%b7* -->
<html>
<head>
      <base href="<%=basePath%>">
    
    <title>调休资源更新</title>
    
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
  .cke{visibility:hidden;}
  </style>
</head>
<body id="colloaBody">
  <form enctype="multipart/form-data" action="/leaveResource/savePlay" id="subform" method="post">
<table  style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0">
  <tbody>
    <tr valign="top">
     <td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow">
     <table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
	<colgroup>
	  <col width="60">
	  <col>
      <col width="80">
	  <col width="150">
	</colgroup>
<tbody style="font-size:13px">
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">
  <input id="e.dbf.subject" name="theme" class="fieldEditable" value="调休资源????-????"></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td>
 </td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">
<input type="text" style="border:0px" readonly="true" value="信息录入" name="fiield2"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource">
  <input type="text" style="border:0px"  readonly="true" name="status"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>调休资源录入</strong></span></div></div>
<div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="150">
<col width="300">
<col width="150">
<col></colgroup>
<tbody style="font-size:13px">
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>上传人</td>
<td id="dbf.division" dbf.type="required!0,required" dbf.source="form.fieldSource.division" dbf.key="1000034">
   <input id="e.dbf.operatorSource" name="createpeople" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>上传时间</td>
<td id="dbf.positionX" dbf.type="required">
  <input id="e.dbf.positionX" name="uploaddate" value="<%=new Date().toLocaleString()%>" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center">上传附件</td>
<td id="出生日期" dbf.type="date" dbf.source="date">
   <input type="file" id="e.dbf.positionX" name="file" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center">附件说明</td>
<td dbf.type="" dbf.source="">
  <input id="e.dbf.positionX" name="field1" class="fieldEditable">
</td></tr>
</tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table></form></div>
<input type="hidden" id="viewState" name="viewState"></form>
 <div id="_vWorkflowActionsShow"style="font-size:15px" align="right"><br/>
<a id="sub" class="button" href="javascript:">提交</a>
<a id="ret" class="button" href="javascript:">取消</a></div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;font-size:13px" ><div style="float:right;"><a href="javaScript:" onclick="javaScript:"></a></div>【处理过程】</div>

</td><td></td><td>
<div class="boxBorder" style="font-size:13px"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder" style="font-size:13px">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body></html>
<script>
      $("#sub").click(function(){
         $("#subform").submit();
      
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/LeaveResources.jsp";
      })
</script>