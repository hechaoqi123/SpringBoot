<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reserveselect.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body id=colloaBody>
  <table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0>
  <tr valign=top><td>&nbsp;</td><td id=colloaForm>
  <TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="requeired">会议室预定-李萌-1000758</TD>
<TD style="TEXT-ALIGN: right">&nbsp;优先级:</TD>
<TD><INPUT id=dbf.priority type=radio value=低 name=dbf.priority autocomplete="off">低
<INPUT id=dbf.priority CHECKED type=radio value=中 name=dbf.priority autocomplete="off">中
<INPUT id=dbf.priority type=radio value=高 name=dbf.priority autocomplete="off">高</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>管理员安排</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
责任人: <SPAN id=mapping.dbf.responsorSource>王刚,</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
参与人: <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;结束时间:</TD>
<TD id=dbf.endTime dbf.type="date" dbf.source="date,editable">&nbsp;</TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>
<DIV style="TEXT-ALIGN: center"><SPAN style="FONT-SIZE: 20px"><STRONG>会议室预定</STRONG></SPAN></DIV>
<TABLE class=tableListBorder style="WIDTH: 100%" cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY>
<TR>
<TD style="WIDTH: 137px; TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请人</TD>
<TD id=dbf.operator style="WIDTH: 317px" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="1000071">李萌</TD>
<TD style="WIDTH: 136px; TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division style="WIDTH: 308px" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">销售部</TD></TR>
<TR>
<TD style="WIDTH: 137px; TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请日期</TD>
<TD id=dbf.time2 style="WIDTH: 317px" dbf.type="date,required" dbf.source="date">2016/4/27</TD>
<TD style="WIDTH: 136px; TEXT-ALIGN: center" dbf.type="" dbf.source=""><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>预定会议室</TD>
<TD id=dbf.text0 style="WIDTH: 308px" dbf.type="required!0" dbf.source="select sid,name from resourceX where modello='administration.meetingRoom' and statusX=1 order by name" dbf.key="1000002">二号会议室</TD></TR>
<TR>
<TD style="WIDTH: 137px; TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>开始时间</TD>
<TD id=dbf.time0 style="WIDTH: 317px" dbf.type="date,required" dbf.source="datetime">2016/4/29 09:30:00</TD>
<TD style="WIDTH: 136px; TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>结束时间</TD>
<TD id=dbf.time1 style="WIDTH: 308px" dbf.type="date,required" dbf.source="datetime">2016/4/29 11:00:00</TD></TR>
<TR>
<TD style="WIDTH: 137px; TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>使用事由</TD>
<TD id=使用事由 style="HEIGHT: 80px; WIDTH: 769px" colSpan=3 dbf.type="required" dbf.source="">部门月末总结会议</TD></TR>
<TR>
<TD style="WIDTH: 137px; TEXT-ALIGN: center">备注</TD>
<TD id=备注 style="HEIGHT: 80px; WIDTH: 769px" colSpan=3 dbf.type="" dbf.source="">&nbsp;</TD></TR>
<TR>
<TD style="WIDTH: 137px; TEXT-ALIGN: center">实际使用情况</TD>
<TD id=实际使用情况 style="WIDTH: 769px" colSpan=3 dbf.type="" dbf.source="">&nbsp;</TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;附件:</TD>
<TD id=attachments dbf.source="files">&nbsp;</TD></TR></TBODY></TABLE>
<div style="margin:20px 0px;" align=right><script language=javaScript>
workflowListInit();
workflowListOne("javaScript:location.href='print.aspx'+location.search;","打印表单");
workflowListOne("javaScript:window.print();","打印本页面");
var ecPrint = document.getElementsByTagName("INPUT");
for(var i=0; i<ecPrint.length; i++) {if(ecPrint[i].id&&ecPrint[i].id.indexOf("...")<0) ecPrint[i].disabled=true;}

</script></div>
<table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;"><col width=60%><col width=2%><col><tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen('../flow/view.htm?1000004,1000758');return false;">&rsaquo; 显示流程图</a></div>【处理过程】</div>
<div style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;"><img src='../images/userX0.gif'> 李萌 <span class=textGray>(2016/4/27 16:27)</span></div>
<div style='padding:0px 10px 5px 30px;'>[<b>转会议室管理员</b>] </div>
</td><td></td><td>
<div class=boxBorder><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class=boxBorder>
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table></body></html>
