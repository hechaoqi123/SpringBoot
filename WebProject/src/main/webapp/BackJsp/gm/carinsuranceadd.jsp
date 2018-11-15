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
  <form class=formTaskflow>
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
<INPUT id=e.dbf.subject class=fieldEditable value=车辆保险登记-李萌-1002006 name="carinsurance.itheme"></TD>
<TD style="TEXT-ALIGN: right">&nbsp;优先级:</TD>
<TD><INPUT id=dbf.priority type=radio value=-1 name="ipriority" autocomplete="off">低
<INPUT id=dbf.priority CHECKED type=radio value=0 name="ipriority" autocomplete="off">中
<INPUT id=dbf.priority type=radio value=1 name="ipriority" autocomplete="off">高</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>登记</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
责任人: <SPAN id=mapping.dbf.responsorSource>李萌,</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
参与人: <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;结束时间:</TD>
<TD name="iendtime" id=dbf.endTime dbf.type="date" dbf.source="date,editable">
<input type="date"/></TD></TR></TBODY></TABLE>
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
<TD id=dbf.operator dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="0"><IMG onclick="fieldGetValueBySource('dbf.operator',this);" class=fieldGetValueBySource src="../images/fieldSource.gif"> 
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.operatorSource class=fieldEditable contentEditable=true>&nbsp;</DIV></TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请日期</TD>
<TD id=dbf.time2 dbf.type="date,required" dbf.source="date"><IMG onclick="fieldGetValueBySource('dbf.time2',this);" class=fieldGetValueBySource src="../images/fieldSource.gif"> 
<DIV id=e.dbf.time2>&nbsp;</DIV></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034"><IMG onclick="fieldGetValueBySource('dbf.division',this);" class=fieldGetValueBySource src="../images/fieldSource.gif"> 
<DIV id=e.dbf.divisionSource>销售部</DIV></TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>车牌号</TD>
<TD id=dbf.text0 dbf.type="required!0" dbf.source="select sid,sno from resourceX where modello='administration.vehicle' and statusX=1 order by sno" dbf.key=""><IMG onclick="fieldGetValueBySource('dbf.text0',this);" class=fieldGetValueBySource src="../images/fieldSource.gif"> 
<DIV id=e.dbf.text0Source>&nbsp;</DIV></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center">险种</TD>
<TD style="TEXT-ALIGN: center">保费</TD>
<TD style="TEXT-ALIGN: center">保额</TD>
<TD style="TEXT-ALIGN: center">备注</TD></TR>
<TR>
<TD><INPUT id=险种1 type=checkbox value=1 name=险种>交强险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center"><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种1 type=checkbox value=1 name=险种>车辆损失险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center"><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种1 type=checkbox value=1 name=险种>第三者责任人险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种1 type=checkbox value=1 name=险种>车上人员责任保险</TD>
<TD id=保费 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center" dbf.type=""><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种 type=checkbox value=1 name=险种>盗抢险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种 type=checkbox value=1 name=险种>划痕险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种 type=checkbox value=1 name=险种>玻璃单独破碎险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种 type=checkbox value=1 name=险种>自燃险</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种 type=checkbox value=1 name=险种>指定专修厂</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD><INPUT id=险种 type=checkbox value=1 name=险种>不计免赔(责任免除)</TD>
<TD id=保费 style="TEXT-ALIGN: center"><INPUT id=e.保费 class=fieldEditable></TD>
<TD id=保额 style="TEXT-ALIGN: center"><INPUT id=e.保额 class=fieldEditable></TD>
<TD id=备注 style="TEXT-ALIGN: center" dbf.source=""><INPUT id=e.备注 class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>投保公司</TD>
<TD id=dbf.text2 style="TEXT-ALIGN: center" dbf.type="required"><INPUT id=e.dbf.text2 class=fieldEditable></TD>
<TD style="TEXT-ALIGN: center">投保电话</TD>
<TD id=投保电话 style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><INPUT id=e.投保电话 class=fieldEditable></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>保险有效期</TD>
<TD id=dbf.time0 style="TEXT-ALIGN: center" dbf.type="date,required" dbf.source="date"><IMG onclick="fieldGetValueBySource('dbf.time0',this);" class=fieldGetValueBySource src="../images/fieldSource.gif"> 
<DIV id=e.dbf.time0>&nbsp;</DIV></TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>至</TD>
<TD id=dbf.time1 style="TEXT-ALIGN: center" dbf.type="date,required" dbf.source="date"><IMG onclick="fieldGetValueBySource('dbf.time1',this);" class=fieldGetValueBySource src="../images/fieldSource.gif"> 
<DIV id=e.dbf.time1>&nbsp;</DIV></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>投保总费用(元)<INPUT onclick="$('dbf.budget').value($amountSum('保费'));" id== type=button value== name==></TD>
<TD id=dbf.budget style="TEXT-ALIGN: center" dbf.type="amount,required" dbf.source=""><INPUT id=e.dbf.budget class="fieldEditable textAmount" value=0></TD>
<TD style="TEXT-ALIGN: center">经办人</TD>
<TD id=dbf.text1 style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><INPUT id=e.dbf.text1 class=fieldEditable></TD></TR></TBODY></TABLE></DIV>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;附件:</TD>
<TD id=attachments dbf.source="files"><IMG onclick="fieldGetValueBySource('attachments',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV id=e.attachments>&nbsp;</DIV></TD></TR></TBODY></TABLE></form></div><form method='post'><input type=hidden id=viewState name=viewState></form><script language=javaScript>workflowActionsShow("登记结束,");workflowActionShow(translate['saveDraft'],150,1,1);try{;
/*//*/
$('dbf.operator').value('李萌','1000071');
$('dbf.time2').value('2018/11/12');;
/*//*/
}catch(e){alert('[ '+translate['eventHandle']+' ] '+(typeof e=='object'?e.message:e));}function onActionBefore(nActionId,sName,bPostForm){try{;
/*//*/
;
/*//*/
return 1;}catch(e){alert('[ '+translate['eventHandle']+' ] '+(typeof e=='object'?e.message:e));return 0;}}function onActionAfter(nActionId,sName,bPostForm){try{;
/*//*/
;
/*//*/
return 1;}catch(e){alert('[ '+translate['eventHandle']+' ] '+(typeof e=='object'?e.message:e));return 0;}}formOnLoad();</script><table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;"><col width=60%><col width=2%><col><tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen('../flow/view1.htm?655230');return false;">&rsaquo; 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class=boxBorder><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class=boxBorder>
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table></body></html>