<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>招聘和配置</title>
    
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
  <table cellpadding="0" cellspacing="0" border="0"><tbody><tr><td>
  <h1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">我的人事</span></h1></td><td id="oWorkflowList" align="right">
  <span id="oWorkflowList1"><button class="btn" style="padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>招聘申请</button></span></td></tr></tbody></table><br>
    <!-- 分类 -->
	<div id="colloaMenu2">
	   <a class="textHighlight" href="#">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 招聘管理</a>
	   <a href="#">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 入职管理</a>
	   <a href="#">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 转正管理</a>
	   <a href="#">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 岗位调动管理</a>
	   <a href="#">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 离职管理</a>
	 </div>
<div id="colloaContent2"><script language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=703110&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==110) workflowListOne("workflow.aspx","招聘申请*",703110,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==120) workflowListOne("workflow.aspx","入职申请*",703120,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==150) workflowListOne("workflow.aspx","转正申请*",703150,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==170) workflowListOne("workflow.aspx","岗位调动申请*",703170,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==190) workflowListOne("workflow.aspx","离职申请*",703190,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("workflow.aspx","出差申请*",703210,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("finder.aspx","查找",703215,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("workflow.aspx","外出申请*",703220,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("finder.aspx","查找",703225,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("workflow.aspx","加班申请*",703230,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("finder.aspx","查找",703235,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("workflow.aspx","请休假申请*",703240,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("finder.aspx","查找",703245,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("workflow.aspx","调休申请*",703250,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("finder.aspx","查找",703255,"<i class='fa fa-search fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==510) workflowListOne("workflow.aspx","劳动合同登记*",703510,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==520) workflowListOne("workflow.aspx","员工培训安排*",703520,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==540) workflowListOne("workflow.aspx","员工生日关怀*",703540,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==550) workflowListOne("workflow.aspx","员工专项福利*",703550,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==650) workflowListOne("workflow.aspx","月度绩效考核单*",703650,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==660) workflowListOne("workflow.aspx","季度绩效考核单*",703660,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==670) workflowListOne("workflow.aspx","年度绩效考核单*",703670,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);if(stype==690) workflowListOne("workflow.aspx","奖励和处罚申请*",703690,"<i class='fa fa-plus fa-lg'></i>",703110,sObjects,bPortal,bSelf);}</script><script language="javaScript">workflowList(110);</script>
<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>主题</th><th>申请人</th><th>所属部门</th><th>需求岗位</th><th>需求人数</th><th>希望到岗日期</th></tr></thead>
<tbody><tr>
<td><a href="javaScript:showItem(&39;事务&39;,&39;1000165&39;);"> 招聘申请-刘峰-1000165 </a></td><td>刘峰</td><td>生产部&nbsp;</td><td>初级工程师</td><td>5</td><td>2016/4/30</td></tr><tr>
<td><a href="javaScript:showItem(&39;事务&39;,&39;1000164&39;);"> 招聘申请-李浩-1000164</a></td><td>李浩</td><td>技术部&nbsp;</td><td>高级技术员</td><td>1</td><td>2016/4/30</td></tr><tr>
<td><a href="javaScript:showItem(&39;事务&39;,&39;1000166&39;);"> <span style="color:cc0000">招聘申请-王丽萍-1000166</span></a></td><td>王丽萍</td><td>深圳分公司&nbsp;</td><td>销售工程师</td><td>3</td><td>2016/4/22</td></tr><tr>
<td><a href="javaScript:showItem(&39;事务&39;,&39;1000163&39;);"> 招聘申请-李萌-1000163</a></td><td>李萌</td><td>销售部&nbsp;</td><td>销售助理</td><td>2</td><td>2016/4/13</td></tr></tbody>
</table>
<script language="javaScript">cataloguePages(4,20);</script><div id="colloaPages">
<!-- 分页 -->
<a class="button1 button1L" title="首页" href="">首页</a><a class="button1 button1M" title="上页" href="">上一页</a><span class="button1M">共有 4 条记录，第 1/1 页</span><a class="button1 button1M" title="下页" href="">下一页</a><a class="button1 button1R" title="尾页" href="">尾页</a></div></div></td></tr></tbody></table>
<script language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script></body></html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
</script>