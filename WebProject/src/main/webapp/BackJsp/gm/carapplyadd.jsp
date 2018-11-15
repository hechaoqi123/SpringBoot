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
  <form id="form" >
  <TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="required"><INPUT name="atheme" id=e.dbf.subject class=fieldEditable value=用车申请-李萌-1002028></TD>
<TD style="TEXT-ALIGN: right">&nbsp;优先级:</TD>
<TD><INPUT id=dbf.priority type=radio value=低 name="apriority" autocomplete="off">低
<INPUT id=dbf.priority CHECKED type=radio value=中 name="apriority" autocomplete="off">中
<INPUT id=dbf.priority type=radio value=高 name="apriority" autocomplete="off">高</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>申请人填单</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
责任人: <SPAN id=mapping.dbf.responsorSource>李萌,</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
参与人: <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;结束时间:</TD>
<TD id=dbf.endTime dbf.type="date" dbf.source="date,editable">
<IMG onclick="fieldGetValueBySource('dbf.endTime',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif"> 
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.endTime class=fieldEditable contentEditable=true>&nbsp;</DIV></TD></TR>
</TBODY></TABLE>
<DIV>&nbsp; 
<DIV style="TEXT-ALIGN: center"><SPAN style="FONT-SIZE: 20px"><STRONG>用车申请单</STRONG></SPAN></DIV></DIV>
<DIV>
<TABLE class=tableListBorder cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请人</TD>
<TD id=dbf.operator style="WIDTH: 302px" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="0">
<IMG onclick="fieldGetValueBySource('dbf.operator',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif"> 
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.operatorSource class=fieldEditable contentEditable=true>&nbsp;</DIV></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division style="WIDTH: 313px" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
<IMG onclick="fieldGetValueBySource('dbf.division',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif"> 
<DIV id=e.dbf.divisionSource>销售部</DIV></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px" dbf.type="date,required" dbf.source="date">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请日期</TD>
<TD id=dbf.time2 style="WIDTH: 302px" dbf.type="date,required" dbf.source="date">
<IMG onclick="fieldGetValueBySource('dbf.time2',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif"> 
<DIV id=e.dbf.time2>&nbsp;</DIV></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">是否自驾</TD>
<TD style="WIDTH: 313px">&nbsp;
<INPUT id=是否需要自驾 type=radio value=1 name=是否需要自驾>自驾（不需要安排司机） 
<INPUT id=是否需要自驾 CHECKED type=radio value=0 name=是否需要自驾>安排司机</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">乘车人信息</TD>
<TD id=乘车人 style="WIDTH: 302px"><INPUT id=e.乘车人 class=fieldEditable></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px" dbf.type="" dbf.source="">乘车人数</TD>
<TD id=乘车人数 style="WIDTH: 313px" dbf.type="number" dbf.source=""><INPUT id=e.乘车人数 class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>出发时间</TD>
<TD id=dbf.time0 style="WIDTH: 302px" dbf.type="date,required" dbf.source="datetime,editable">
<IMG onclick="fieldGetValueBySource('dbf.time0',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif"> 
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.time0 class=fieldEditable contentEditable=true>&nbsp;</DIV></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>返回时间</TD>
<TD id=dbf.time1 style="WIDTH: 313px" dbf.type="date,required" dbf.source="datetime,editable">
<IMG onclick="fieldGetValueBySource('dbf.time1',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif"> 
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.time1 class=fieldEditable contentEditable=true>&nbsp;</DIV></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>用车事由</TD>
<TD id=用车事由 style="WIDTH: 765px" colSpan=3 dbf.type="required" dbf.source=""><TEXTAREA id=e.用车事由 class=fieldEditable style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">备注</TD>
<TD id=备注 style="WIDTH: 765px" colSpan=3 dbf.type="" dbf.source="">
<TEXTAREA id=e.备注 class=fieldEditable style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>指定车辆</TD>
<TD id=dbf.text0 style="WIDTH: 302px" dbf.type="required!0" dbf.source="select sid,name from resourceX where modello='administration.vehicle' and statusX=1 order by name" dbf.key="">&nbsp;</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">驾驶员信息</TD>
<TD id=驾驶员 style="WIDTH: 313px" colSpan=3>&nbsp;</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">乘车时间和地点</TD>
<TD id=乘车时间和地点 style="WIDTH: 302px" dbf.type="" dbf.source="">&nbsp;</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">实际用车信息</TD>
<TD id=实际用车信息 style="WIDTH: 313px" dbf.type="" dbf.source="">&nbsp;</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 144px">用车油耗(L)</TD>
<TD id=用车油耗 style="WIDTH: 302px" dbf.type="" dbf.source="">&nbsp;</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 147px">用车费用(元)</TD>
<TD id=dbf.budget style="WIDTH: 313px" dbf.type="amount" dbf.source="">0</TD></TR></TBODY></TABLE></DIV>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;附件:</TD>
<TD id=attachments dbf.source="files">
<IMG onclick="fieldGetValueBySource('attachments',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif">
<DIV id=e.attachments>&nbsp;</DIV></TD></TR></TBODY></TABLE>
</form></div>
<form method='post'><input type=hidden id=viewState name=viewState></form>
<script language=javaScript>
workflowActionsShow("提交主管审核,转车辆管理员,");workflowActionShow(translate['saveDraft'],150,1,1);try{;
/*//*/
$('dbf.operator').value('李萌','1000071');
$('dbf.time2').value('2018/10/31');;
/*//*/
}catch(e){alert('[ '+translate['eventHandle']+' ] '+(typeof e=='object'?e.message:e));}
function onActionBefore(nActionId,sName,bPostForm){try{;
/*//*/
;
/*//*/
return 1;}catch(e){alert('[ '+translate['eventHandle']+' ] '+(typeof e=='object'?e.message:e));return 0;}}
function onActionAfter(nActionId,sName,bPostForm){try{;
/*//*/
;
/*//*/
return 1;}catch(e){alert('[ '+translate['eventHandle']+' ] '+(typeof e=='object'?e.message:e));return 0;}}formOnLoad();
</script>
<table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;">
<col width=60%><col width=2%><col>
<tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;">
<div style="float:right;">
<a href="javaScript:" onclick="javaScript:windowOpen('../flow/view1.htm?655220');return false;">&rsaquo; 显示流程图</a>
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
