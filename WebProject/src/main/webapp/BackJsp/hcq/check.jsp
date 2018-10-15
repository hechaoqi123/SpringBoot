<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考勤管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
    <style>
       #tt td{
          height:30px; 
       }
    </style>
  </head>
  <body style="padding-top:15px;padding-left:30px;">
 <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">考勤管理</span></H1></TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
      <DIV id="colloaMenu2"><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703200&amp;name=%u8003%u52e4%u7ba1%u7406&amp;ex.sid=703210"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 出差申请</A><A class="textHighlight" 
      href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703200&amp;name=%u8003%u52e4%u7ba1%u7406&amp;ex.sid=703220"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 外出申请</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703200&amp;name=%u8003%u52e4%u7ba1%u7406&amp;ex.sid=703230"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 加班申请</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703200&amp;name=%u8003%u52e4%u7ba1%u7406&amp;ex.sid=703240"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 请休假申请</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703200&amp;name=%u8003%u52e4%u7ba1%u7406&amp;ex.sid=703250"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 调休申请</A><A href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703200&amp;name=%u8003%u52e4%u7ba1%u7406&amp;ex.sid=705100"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 外勤定位</A></DIV>
      <DIV id="colloaContent2">
<SCRIPT language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=703220&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==110) workflowListOne("workflow.aspx","招聘申请*",703110,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==120) workflowListOne("workflow.aspx","入职申请*",703120,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==150) workflowListOne("workflow.aspx","转正申请*",703150,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==170) workflowListOne("workflow.aspx","岗位调动申请*",703170,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==190) workflowListOne("workflow.aspx","离职申请*",703190,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("workflow.aspx","出差申请*",703210,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("finder.aspx","查找",703215,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("workflow.aspx","外出申请*",703220,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("finder.aspx","查找",703225,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("workflow.aspx","加班申请*",703230,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("finder.aspx","查找",703235,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("workflow.aspx","请休假申请*",703240,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("finder.aspx","查找",703245,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("workflow.aspx","调休申请*",703250,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("finder.aspx","查找",703255,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==510) workflowListOne("workflow.aspx","劳动合同登记*",703510,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==520) workflowListOne("workflow.aspx","员工培训安排*",703520,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==540) workflowListOne("workflow.aspx","员工生日关怀*",703540,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==550) workflowListOne("workflow.aspx","员工专项福利*",703550,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==650) workflowListOne("workflow.aspx","月度绩效考核单*",703650,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==660) workflowListOne("workflow.aspx","季度绩效考核单*",703660,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==670) workflowListOne("workflow.aspx","年度绩效考核单*",703670,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==690) workflowListOne("workflow.aspx","奖励和处罚申请*",703690,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);}</SCRIPT>

<SCRIPT language="javaScript">workflowList(220);</SCRIPT>
       
      <TABLE class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>申请人</TH>
          <TH>所属部门</TH>
          <TH>外出地点</TH>
          <TH>时间段</TH></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR>
          <TD><A href="javascript:showItem('事务','1000539');">
                 <img width="18" src="BackJsp/hcq/img/ico1.png"/> 外出申请-季道晓-1000539 </A></TD>
          <TD>季道晓&nbsp;</TD>
          <TD>销售部&nbsp;</TD>
          <TD>广州天河万科地产</TD>
          <TD>2016/4/19 ~ 2016/4/20</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000529');">
            <img width="18" src="BackJsp/hcq/img/ico2.png"/>  外出申请-沈涛辉-1000529</A></TD>
          <TD>沈涛辉&nbsp;</TD>
          <TD>销售部&nbsp;</TD>
          <TD>南京中山陵</TD>
          <TD>2016/4/18 8:30 ~ 2016/4/18 11:30</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000536');">
             <img width="18" src="BackJsp/hcq/img/ico1.png"/>外出申请-季道晓-1000536 </A></TD>
          <TD>季道晓&nbsp;</TD>
          <TD>销售部&nbsp;</TD>
          <TD>北京朝阳区盘曦科技</TD>
          <TD>2016/4/14 8:00 ~ 2016/4/14 15:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000196');">
          <img width="18" src="BackJsp/hcq/img/ico2.png"/>外出申请-何以书-1000196 </A></TD>
          <TD>何以书&nbsp;</TD>
          <TD>采购部&nbsp;</TD>
          <TD>北京朝阳五金市场</TD>
          <TD>2016/4/14 8:00 ~ 2016/4/14 12:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000555');">
                      <img width="18" src="BackJsp/hcq/img/ico2.png"/>外出申请-徐超-1000555 </A></TD>
          <TD>徐超&nbsp;</TD>
          <TD>网络部&nbsp;</TD>
          <TD>北京中关村电脑城</TD>
          <TD>2016/4/13 14:00 ~ 2016/4/13 18:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000553');">
                   <img width="18" src="BackJsp/hcq/img/ico1.png"/> 外出申请-赵玉龙-1000553 </A></TD>
          <TD>赵玉龙&nbsp;</TD>
          <TD>生产部&nbsp;</TD>
          <TD>北京五环零售市场</TD>
          <TD>2016/4/13 8:00 ~ 2016/4/13 10:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000421');"> 
          <img width="18" src="BackJsp/hcq/img/ico1.png"/>外出申请-王萍-1000421 </A></TD>
          <TD>王萍&nbsp;</TD>
          <TD>人事部&nbsp;</TD>
          <TD>南京新街口</TD>
          <TD>2016/4/12 8:30 ~ 2016/4/12 17:30</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000197');">
             <SPAN style="color: rgb(204, 0, 0);">
             <img width="18" src="BackJsp/hcq/img/ico1.png"/>外出申请-姜大声-1000197</SPAN></A></TD>
          <TD>姜大声&nbsp;</TD>
          <TD>技术部&nbsp;</TD>
          <TD>北京上地创业科技园</TD>
          <TD>2016/4/11 8:00 ~ 2016/4/11 18:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000511');"> 
                    <img width="18" src="BackJsp/hcq/img/ico2.png"/>外出申请-沈华-1000511</A></TD>
          <TD>沈华&nbsp;</TD>
          <TD>销售部&nbsp;</TD>
          <TD>南京万达</TD>
          <TD>2016/4/8 9:00 ~ 2016/4/8 15:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000189');">
             <SPAN 
            style="color: rgb(204, 0, 0);">
            <img width="18" src="BackJsp/hcq/img/ico1.png"/>外出申请-李萌-1000189</SPAN> </A></TD>
          <TD>李萌&nbsp;</TD>
          <TD>销售部&nbsp;</TD>
          <TD>北京朝阳区金轮大厦</TD>
          <TD>2016/4/7 9:00 ~ 2016/4/7 11:00</TD></TR>
        <TR>
          <TD><A href="javascript:showItem('事务','1000510');">
                    <img width="18" src="BackJsp/hcq/img/ico2.png"/>外出申请-李萌-1000510 </A></TD>
          <TD>李萌&nbsp;</TD>
          <TD>销售部&nbsp;</TD>
          <TD>南京浦口区</TD>
          <TD>2016/4/7 8:00 ~ 2016/4/7 15:00</TD></TR></TBODY></TABLE>
<SCRIPT language="javaScript">cataloguePages(11,20);</SCRIPT>
      </DIV></TD></TR></TBODY></TABLE>
<SCRIPT language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</SCRIPT>
</BODY></HTML>

