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
    
    <title>入职申请</title>
    
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
  <form  action="entry/savePlay" id="subform" method="post">
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
<td id="dbf.subject" dbf.type="required"><input id="e.dbf.subject" name="theme" class="fieldEditable" value="入职申请-李萌-1002006"></td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">人事填单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;结束时间:</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
<input id="e.dbf.operatorSource" name="enddate" class="fieldEditable"></td></tr></tbody></table>
<div>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>入职申请单</strong></span></div></div>
<div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="150">
<col width="300">
<col width="150">
<col></colgroup>
<tbody style="font-size:13px">
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>入职人</td>
<td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
  <input id="e.dbf.operatorSource" name="applypeople" class="fieldEditable"></td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>入职日期</td>
<td id="dbf.time0" dbf.type="date,required" dbf.source="date">
   <input id="e.dbf.operatorSource" name="entrydate" class="fieldEditable">
</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>入职部门</td>
<td id="dbf.division" dbf.type="required!0,required" dbf.source="form.fieldSource.division" dbf.key="1000034">
   <input id="e.dbf.operatorSource" name="entrypart" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>入职岗位</td>
<td id="dbf.positionX" dbf.type="required">
  <input id="e.dbf.positionX" name="entrypost" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center">出生日期</td>
<td id="出生日期" dbf.type="date" dbf.source="date">
 <input id="e.dbf.positionX" name="birthdate" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center">性别</td>
<td dbf.type="" dbf.source="">
  <input id="性别" checked="" type="radio" value="男" name="sex">男 <input id="性别" type="radio" value="女" name="sex">女</td></tr>
<tr>
<td style="TEXT-ALIGN: center">毕业院校</td>
<td id="毕业院校" dbf.type="" dbf.source="">
  <input id="e.毕业院校" name="school" class="fieldEditable"></td>
<td style="TEXT-ALIGN: center">最高学历</td>
<td id="最高学历" dbf.type="">
  <input id="e.最高学历" name="background" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center">专业方向</td>
<td id="专业方向">
  <input id="e.专业方向" name="major" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center">工作年限</td>
<td id="工作年限" dbf.type="" dbf.source="">
   <input id="e.工作年限" name="workage" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center">备注</td>
<td id="备注" colspan="3" dbf.type="" dbf.source=""><textarea name="remark" id="e.备注" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center">入职处理</td>
<td colspan="3" dbf.type="" dbf.source="" style="font-size:12px;">
  <input disabled="" id="入职处理" type="checkbox" name="入职处理">人事手续已经办理 
  <input disabled="" id="入职处理" type="checkbox" name="入职处理">行政资源已经发放&nbsp;
  <input disabled="" id="入职处理" type="checkbox" name="入职处理">信息系统已经开通（请人事专员或系统管理员在本系统的【员工管理】模块中新增员工信息）</td></tr></tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table></form></div>
<input type="hidden" id="viewState" name="viewState"></form>
 <div id="_vWorkflowActionsShow"style="font-size:15px" align="right"><br/>
<a id="sub" class="button" href="javascript:">提交主管审批</a>
<a id="ret" class="button" href="javascript:">取消</a></div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;font-size:13px" ><div style="float:right;"><a href="javaScript:" onclick="javaScript:">› 显示流程图</a></div>【处理过程】</div>

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
        window.location.href="BackJsp/hcq/entryPosition.jsp";
      })
</script>