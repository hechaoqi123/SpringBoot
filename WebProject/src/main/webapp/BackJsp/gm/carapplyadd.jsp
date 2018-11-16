<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'carapplyadd.jsp' starting page</title>
    
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
  <form id="form" action="carapply/carapplyAdd">
  <TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="required"><INPUT name="atheme" id=e.dbf.subject class=fieldEditable value="用车登记<%=new Date().toLocaleString() %>"></TD>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD>
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>使用人登记</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <SPAN id=mapping.dbf.responsorSource></SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD >
</TD></TR>
</TBODY></TABLE>
<DIV>&nbsp; 
<DIV style="TEXT-ALIGN: center"><SPAN style="FONT-SIZE: 20px"><STRONG>用车登记单</STRONG></SPAN></DIV></DIV>
<DIV>
<TABLE class=tableListBorder cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>登记人</TD>

<TD id=dbf.operator style="WIDTH: 302px" >
<INPUT  class=fieldEditable  name="aproposer">
</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division style="WIDTH: 313px" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
<DIV id=e.dbf.divisionSource>
<INPUT  class=fieldEditable  name="adept">
</DIV></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px" dbf.type="date,required" dbf.source="date">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>登记日期</TD>
<TD id=dbf.time2 style="WIDTH: 302px" dbf.type="date,required" dbf.source="date">
<INPUT  class=fieldEditable  name="aapplicadate">
</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">是否自驾</TD>
<TD style="WIDTH: 313px">&nbsp;
<INPUT id=是否需要自驾 CHECKED type=radio value="自驾" name="adriver">自驾（不需要安排司机） 
<INPUT id=是否需要自驾  type=radio value="非自驾" name="adriver">安排司机</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">乘车人信息</TD>
<TD id=乘车人 style="WIDTH: 302px"><INPUT id=e.乘车人 name="aselfdrive" class=fieldEditable></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px" dbf.type="" dbf.source="">乘车人数</TD>
<TD id=乘车人数 style="WIDTH: 313px" dbf.type="number"  dbf.source="">
<INPUT id=e.乘车人数  name="anumberbus" class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>出发时间</TD>
<TD id=dbf.time0 style="WIDTH: 302px" dbf.type="date,required" dbf.source="datetime,editable">
<INPUT id=e.乘车人数  name="astartdate" class=fieldEditable>
</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>返回时间</TD>
<TD id=dbf.time1 style="WIDTH: 313px" dbf.type="date,required" dbf.source="datetime,editable">
  <INPUT name="areturndate" class=fieldEditable>
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>用车事由</TD>
<TD id=用车事由 style="WIDTH: 765px" colSpan=3 dbf.type="required" dbf.source="">
  <TEXTAREA id=e.用车事由 name="athing" class=fieldEditable style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">备注</TD>
<TD id=备注 style="WIDTH: 765px" colSpan=3 dbf.type="" dbf.source="">
<TEXTAREA id=e.备注 class=fieldEditable  name="aremark" style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>指定车辆</TD>
<TD colspan="4"> <INPUT name="acar" class=fieldEditable></TD>
</TR>
</TBODY></TABLE></DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD style="TEXT-ALIGN: right">
<input style="margin-left:500px;padding:5px 20px " type="submit" value="确定" id="addCar">
<DIV id=e.attachments>&nbsp;</DIV></TD></TR></TBODY></TABLE>
</form></div>
<form method='post'><input type=hidden id=viewState name=viewState></form>
<table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;">
<col width=60%><col width=2%><col>
<tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;">
<div style="float:right;">
<a href="javaScript:" onclick="javaScript:windowOpen('../flow/view1.htm?655220');return false;"></a>
</div>【处理过程】</div>

</td><td></td><td>
<div class=boxBorder><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class=boxBorder>
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table>
</body>
</html>
