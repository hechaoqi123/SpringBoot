<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>车辆保险登记* - Colloa</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/gm/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/gm/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/gm/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/gm/js/view.js" type="text/javascript"></SCRIPT>
    <script src="BackJsp/gm/js/Vue.js"></script>
    <script src="BackJsp/gm/js/vue-resource.min.js"></script>
    <script src="../../assets/js/jquery-2.0.3.min.js"></script>

  </head>
  
  <body id=colloaBody>
  <table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0>
  <tr valign=top><td>&nbsp;</td><td id=colloaForm><div class=formTaskflowContainer>
  <form class=formTaskflow action="carinsurance/save">
  <TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="required">
<INPUT id=e.dbf.subject name="itheme" class=fieldEditable value="车辆保险登记<%=new Date().toLocaleString() %>" name="carinsurance.itheme"></TD>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD>
</TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>登记</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <SPAN id=mapping.dbf.responsorSource></SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
</TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>
<DIV style="TEXT-ALIGN: center"><SPAN style="FONT-SIZE: 20px"><STRONG>车辆保险登记单</STRONG></SPAN></DIV>
<DIV>
<TABLE class=tableListBorder style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width="25%">
<COL width="25%">
<COL width="25%">
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请人</TD>
<TD >
   <INPUT name="iproposer" class=fieldEditable>
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请日期</TD>
<TD> 
     <INPUT name="iapplydate" class=fieldEditable>
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD>
     <INPUT name="idept" class=fieldEditable>
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>车牌号</TD>
<TD >
    <INPUT name="icar" class=fieldEditable>
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center">险种</TD>
<TD style="TEXT-ALIGN: center">保费</TD>
<TD style="TEXT-ALIGN: center">保额</TD>
<TD style="TEXT-ALIGN: center">备注</TD></TR>
<TR>
<TD>交强险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center"><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>车辆损失险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center"><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>第三者责任人险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>车上人员责任保险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>盗抢险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>划痕险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>玻璃单独破碎险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>自燃险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>指定专修厂</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD>不计免赔(责任免除)</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>投保公司</TD>
<TD id=dbf.text2 style="TEXT-ALIGN: center" dbf.type="required">
<INPUT id=e.dbf.text2 name="icpli" class=fieldEditable></TD>
<TD style="TEXT-ALIGN: center">投保电话</TD>
<TD id=投保电话 style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><INPUT id=e.投保电话 class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>保险有效期</TD>
<TD id=dbf.time0 style="TEXT-ALIGN: center" dbf.type="date,required" dbf.source="date">
    <INPUT name="igbs" class=fieldEditable></TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>至</TD>
<TD id=dbf.time1 style="TEXT-ALIGN: center" dbf.type="date,required" dbf.source="date">
   <INPUT name="irosc" class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center">经办人</TD>
<TD  colspan="3" id=dbf.text1 style="TEXT-ALIGN: center" dbf.type="" dbf.source="">
    <INPUT id=e.dbf.text1 name="isdew" class=fieldEditable>
</TD></TR></TBODY></TABLE></DIV>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD id=attachments dbf.source="files">
<input style="margin-left:800px;padding:5px 20px " type="submit" value="确定" id="addCar">
<DIV id=e.attachments>&nbsp;</DIV></TD></TR></TBODY></TABLE></form></div><form method='post'><input type=hidden id=viewState name=viewState></form>
<table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;"><col width=60%><col width=2%><col><tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen('../flow/view1.htm?655230');return false;">&rsaquo; 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class=boxBorder><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class=boxBorder>
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table></body></html>