<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>转正管理</title>
    
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
  <form id="myForm" action="/Official/savePlay" method="post">
  <table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN:right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required"><input name="theme" id="e.dbf.subject" class="fieldEditable" value="转正申请-${CurrentUser.uname}"></td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">
  <input type="text" style="border:0px" readonly="true" value="填单" name="status"/>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">
  <input type="text"  style="border:0px" name="dutypeople" readonly="true" value="${superUser.username}" />
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
<div onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/&lt;\/?.+?&gt;/g,&#39;&#39;);" id="e.dbf.endTime" class="fieldEditable" contenteditable="true">&nbsp;</div></td></tr></tbody></table>
<div>
<div class="titlep" style="TEXT-ALIGN: center">&nbsp;</div>
<div class="titlep" style="TEXT-ALIGN: center"><strong><span style="FONT-SIZE: 20px">转正申请单</span></strong></div></div>
<div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="150">
<col width="300">
<col width="150">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请人</td>
<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX&gt;0 and name like &#39;%[!prompt]%&#39; order by name" dbf.key="1000071" dbf.value="李萌">
 <input name="proposer" id="e.dbf.positionX" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请日期</td>
<td id="dbf.time2" dbf.type="date,required" >
  <input name="filingdate" id="e.dbf.positionX" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR:rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required!0" dbf.source="form.fieldSource.division" dbf.key="1000034">
  <input id="e.dbf.positionX" name="department" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请岗位</td>
<td id="dbf.positionX" dbf.type="required" dbf.source="">
  <input id="e.dbf.positionX" name="post" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>入职日期</td>
<td id="入职日期" dbf.type="date,required" >
  <input id="e.dbf.positionX" name="entrydate" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>转正日期</td>
<td id="dbf.time0" dbf.type="date,required" >
  <input id="e.dbf.positionX" name="officialdate" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>试用期主要工作内容</td>
<td id="试用期主要工作内容" colspan="3" dbf.type="required" dbf.source=""><textarea id="e.试用期主要工作内容" name="试用期主要工作" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>试用期主要工作成绩</td>
<td id="试用期主要工作成绩" colspan="3" dbf.type="required" dbf.source=""><textarea name="workgrade" id="e.试用期主要工作成绩" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>试用期存在的问题</td>
<td id="试用期存在的问题" colspan="3" dbf.type="required" dbf.source=""><textarea name="issue" id="e.试用期存在的问题" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>领导评语</td>
<td id="领导评语" style="HEIGHT: 80px" colspan="3" dbf.type="required" dbf.source="">&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center">转正处理</td>
<td colspan="3" dbf.type="" dbf.source=""><input disabled="" id="转正处理" type="checkbox" name="转正处理">人事手续已经办理 <input disabled="" id="转正处理" type="checkbox" name="转正处理">信息系统已经变更（请人事专员或系统管理员在本系统的【员工管理】模块中变更员工信息）</td></tr></tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
<tr>
</tr></tbody></table></form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form><br><div id="_vWorkflowActionsShow" align="right">
<a class="button" id="sub" href="javascript:" >提交主管审批</a>
<a class="button" id="ret" href="javascript:">取消</a></div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?703150&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>

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
      $("#sub").click(function(){
         $("#myForm").submit();
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/official.jsp";
      })
</script>

