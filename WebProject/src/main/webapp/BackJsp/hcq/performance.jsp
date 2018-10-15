<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>绩效管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
  </head>
  
  <body style="padding-top:15px;padding-left:30px;">
  <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:10px;">绩效管理</span></H1></TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
      <DIV id="colloaMenu2"><A class="textHighlight" href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703600&amp;name=%u7ee9%u6548%u7ba1%u7406&amp;ex.sid=703650"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 月度绩效考核</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703600&amp;name=%u7ee9%u6548%u7ba1%u7406&amp;ex.sid=703660"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 季度绩效考核</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703600&amp;name=%u7ee9%u6548%u7ba1%u7406&amp;ex.sid=703670"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 年度绩效考核</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703600&amp;name=%u7ee9%u6548%u7ba1%u7406&amp;ex.sid=703690"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 奖励和处罚</A></DIV>
      <DIV id="colloaContent2">
<SCRIPT language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=703650&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==110) workflowListOne("workflow.aspx","招聘申请*",703110,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==120) workflowListOne("workflow.aspx","入职申请*",703120,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==150) workflowListOne("workflow.aspx","转正申请*",703150,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==170) workflowListOne("workflow.aspx","岗位调动申请*",703170,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==190) workflowListOne("workflow.aspx","离职申请*",703190,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("workflow.aspx","出差申请*",703210,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("finder.aspx","查找",703215,"<i class='fa fa-search fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("workflow.aspx","外出申请*",703220,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("finder.aspx","查找",703225,"<i class='fa fa-search fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("workflow.aspx","加班申请*",703230,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("finder.aspx","查找",703235,"<i class='fa fa-search fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("workflow.aspx","请休假申请*",703240,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("finder.aspx","查找",703245,"<i class='fa fa-search fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("workflow.aspx","调休申请*",703250,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("finder.aspx","查找",703255,"<i class='fa fa-search fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==510) workflowListOne("workflow.aspx","劳动合同登记*",703510,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==520) workflowListOne("workflow.aspx","员工培训安排*",703520,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==540) workflowListOne("workflow.aspx","员工生日关怀*",703540,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==550) workflowListOne("workflow.aspx","员工专项福利*",703550,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==650) workflowListOne("workflow.aspx","月度绩效考核单*",703650,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==660) workflowListOne("workflow.aspx","季度绩效考核单*",703660,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==670) workflowListOne("workflow.aspx","年度绩效考核单*",703670,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);if(stype==690) workflowListOne("workflow.aspx","奖励和处罚申请*",703690,"<i class='fa fa-plus fa-lg'></i>",703650,sObjects,bPortal,bSelf);}</SCRIPT>

<SCRIPT language="javaScript">workflowList(650);</SCRIPT>
       
      <TABLE class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>所属部门</TH>
          <TH>被考核人</TH>
          <TH>自评分</TH>
          <TH>主管评分</TH>
          <TH>考核结果</TH></TR></THEAD>
        <TBODY>
        <TR>
          <TD><A href="javascript:showItem('事务','1000967');">
          <img width="18" src="BackJsp/hcq/img/ico1.png"/>2016年4月绩效考核单-张旭 
          </A></TD>
          <TD>销售部</TD>
          <TD>张旭</TD>
          <TD>92</TD>
          <TD>0</TD>
          <TD></TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000966');">
          <img width="18" src="BackJsp/hcq/img/ico1.png"/>2016年4月绩效考核单-沈华 </A></TD>
          <TD>销售部</TD>
          <TD>沈华</TD>
          <TD>84</TD>
          <TD>0</TD>
          <TD></TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000901');"><img width="18" src="BackJsp/hcq/img/ico2.png"/> 2016年4月绩效考核单-李萌 </A></TD>
          <TD>销售部</TD>
          <TD>李萌</TD>
          <TD>90</TD>
          <TD>88</TD>
          <TD>B</TD></TR></TBODY></TABLE>
<SCRIPT language="javaScript">cataloguePages(3,20);</SCRIPT>
      </DIV></TD></TR></TBODY></TABLE>
<SCRIPT language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</SCRIPT>
</BODY></HTML>
