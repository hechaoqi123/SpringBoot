<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>离职申请</title>
    
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
  <body id="colloaBody" style="margin-top:-10px;">
   <form id="subform" action="Dimission/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0><tr valign=top><td>&nbsp;</td><td id=colloaForm><div class=formTaskflowContainer><form class=formTaskflow><TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="required">
  <INPUT id=e.dbf.subject name="theme" class=fieldEditable value=离职申请-李萌-1002042></TD>
<TD style="TEXT-ALIGN: right">&nbsp;优先级:</TD>
<TD><INPUT id=dbf.priority type=radio value=-1 name=dbf.priority autocomplete="off">低<INPUT id=dbf.priority CHECKED type=radio value=0 name=dbf.priority autocomplete="off">中<INPUT id=dbf.priority type=radio value=1 name=dbf.priority autocomplete="off">高</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>填单</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <SPAN id=mapping.dbf.responsorSource>李萌,</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;结束时间:</TD>
<TD id=dbf.endTime dbf.type="date" dbf.source="date,editable">
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.endTime class=fieldEditable contentEditable=true>&nbsp;</DIV></TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>
<DIV style="TEXT-ALIGN: center"><SPAN style="FONT-SIZE: 20px"><STRONG>离职申请单</STRONG></SPAN></DIV>
<DIV>
<TABLE class=tableListBorder style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=150>
<COL width=300>
<COL width=150>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请人</TD>
<TD id=dbf.operator dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="0">
    <INPUT id=e.dbf.subject name="dimissionname" class=fieldEditable ></TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请日期</TD>
<TD id=dbf.time2 dbf.type="date,required" dbf.source="date">
    <INPUT id=e.dbf.subject name="applydate" class=fieldEditable ></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
   <INPUT id=e.dbf.subject name="part" class=fieldEditable >
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>工作岗位</TD>
<TD id=dbf.positionX dbf.type="required" dbf.source="" dbf.key="">
  <INPUT id=e.dbf.subject name="post" class=fieldEditable >
 </TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>入职日期</TD>
<TD id=入职日期 dbf.type="date,required" dbf.source="date">
  <INPUT id=e.dbf.subject  class=fieldEditable >
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>预计离职日期</TD>
<TD id=dbf.time0 dbf.type="date,required" dbf.source="date">
  <INPUT id=e.dbf.subject name="dimissiondate" class=fieldEditable ></TD></TR>
<TR>
<TD style="HEIGHT: 80px; TEXT-ALIGN: center" dbf.type="" dbf.source=""><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>离职类型</TD>
<TD style="HEIGHT: 80px" colSpan=3 dbf.type="" dbf.source="">
  <INPUT id=离职类型 type=radio value=0 name="type">合同到期，公司要求不续签劳动合同&nbsp; 
  <INPUT id=离职类型 type=radio value=1 name="type">合同期满，个人要求不续签劳动合同<BR>
  <INPUT id=离职类型 type=radio value=2 name="type">合同未到期，公司要求解除劳动关系&nbsp; 
  <INPUT id=离职类型 type=radio value=3 name="type">合同未到期，个人要求解除劳动关系<BR>
  <INPUT id=离职类型 type=radio value=4 name="type">试用期内，公司要求解除劳动关系&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <INPUT id=离职类型 type=radio value=5 name="type">试用期内，个人要求解除劳动关系</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>离职原因</TD>
<TD id=离职原因 colSpan=3 dbf.type="required" >
  <TEXTAREA id=e.离职原因 class=fieldEditable name="entrydate" style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主管意见</TD>
<TD id=主管意见 style="HEIGHT: 80px" colSpan=3 dbf.type="required" dbf.source="">
 <TEXTAREA  class=fieldEditable name="supperremark" style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TD style="TEXT-ALIGN: center">离职处理</TD>
<TD colSpan=3 dbf.type="" dbf.source=""><INPUT disabled id=离职处理 type=checkbox name=离职处理>人事手续已经办理 <INPUT disabled id=离职处理 type=checkbox name=离职处理>信息系统已经变更（请人事专员或系统管理员在本系统的【员工管理】模块中变更员工信息）</TD></TR></TBODY></TABLE></DIV>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD id=attachments dbf.source="files">
<DIV id=e.attachments>&nbsp;</DIV></TD></TR></TBODY></TABLE></form></div><form method='post'><input type=hidden id=viewState name=viewState></form>
<span style="margin-left:700px"><a id="sub" class="button" href="javascript:">提交主管审批</a>
<a id="ret" class="button" href="javascript:">取消</a></span>
<table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;"><col width=60%><col width=2%><col><tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;">

<div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen('../flow/view1.htm?703190');return false;">&rsaquo; 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class=boxBorder><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class=boxBorder>
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table>
</form>
</body></html>

<script>
      $("#sub").click(function(){
         $("#subform").submit();
      
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/dimission.jsp";
      })
</script>
