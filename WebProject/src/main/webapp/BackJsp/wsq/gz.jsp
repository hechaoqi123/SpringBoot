<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'External.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
	<!--悬浮样式  -->
	  <link rel="stylesheet" href="BackJsp/wsq/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/wsq/css/view.css">
  <script type="text/javascript" src="BackJsp/wsq/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/wsq/js/view.js"></script>
		<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"><nk>
	<link rel="stylesheet" href="<%=basePath%>assets/cssiew.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiew.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsue.min.js"></script>

  
  </head>
  
  <body>
 <table cellpadding="0" cellspacing="0" border="0" style="margin-top:30px;">
 <tbody>
 <tr>
   <td>
   <h1 style="margin-left: 10px;"><img style="cursor:pointer;" src="BackJsp/wsq/img/menu.png" onclick="var cm=document.getElementById(&#39;colloaMenu&#39;); if(cm.style.display==&#39;none&#39;) cm.style.display=&#39;inline&#39;; else cm.style.display=&#39;none&#39;;"> 我的工作任务</h1>
   </td>
 <td align="right">
  <script language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=133000&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==0) workflowListOne("workflow.aspx","新增工作任务*",133010,"<i class='fa fa-plus fa-lg'></i>",133000,sObjects,bPortal,bSelf);if(stype==0) workflowListOne("finder.aspx","查找",133050,"<i class='fa fa-search fa-lg'></i>",133000,sObjects,bPortal,bSelf);}
       </script>
         
       <script language="javaScript">workflowList(0);</script>
 
 </td>
 </tr></tbody></table><br>

<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;">
<colgroup>
<col width="20%"><col width="2%"><col>
</colgroup>
<tbody>
<tr valign="top">
<td>
<table cellpadding="0" cellspacing="0" border="0" class="tableList" style="margin-left: 10px;">
<thead>
<tr><th style="padding-left:16px;">分类</th></tr>
</thead>
<tbody>
  <tr>
   <td style="padding:16px;" class="treeOfNavigation">
 <a class="textHighlight" href="javascript:catalogue();"><img src="BackJsp/wsq/img/folder.png" border="0"> (显示所有)</a>
 <a href="javascript:catalogue(10,1,&#39;评审中的报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 评审中的报告 <span class="tipCount">20</span></a>
 <a href="javascript:catalogue(30,1,&#39;已关闭的报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 已关闭的报告 <span class="tipCount">27</span></a>
 </td>
</tr>
<tr>
<td style="padding:16px;" class="treeOfNavigation">
<a href="javascript:catalogue(10000,10,&#39;年度报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 年度报告 <span class="tipCount">11</span></a>
<a href="javascript:catalogue(10000,20,&#39;季度报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 季度报告 <span class="tipCount">14</span></a>
<a href="javascript:catalogue(10000,30,&#39;月度报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 月度报告 <span class="tipCount">7</span></a>
<a href="javascript:catalogue(10000,40,&#39;周报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 周报告 <span class="tipCount">12</span></a>
<a href="javascript:catalogue(10000,100,&#39;项目报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 项目报告 <span class="tipCount">2</span></a>
<a href="javascript:catalogue(10000,0,&#39;其他报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 其他报告 <span class="tipCount">1</span></a>
</td>
</tr>
</tbody>
</table>
</td>
<td></td>
<td>

<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th><img src="BackJsp/wsq/img/priority0.gif">任务名称</th><th>创建人</th><th>执行人</th><th>开始时间</th><th>工作量</th></tr></thead>
<tbody><tr><td><a href="JavaScript:showItem('工作任务','1001611');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> JDV检查 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>程茜,</td><td>2016/12/12</td><td>1 <i class="fa fa-caret-right"></i> 2</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001610');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> tapeout签字 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>李华林,</td><td>2016/12/7</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001617');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> clock system <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/28</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001614');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 数字IP整合 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/28</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001618');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> memory <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/28</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001606');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> PR <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/25</td><td>8 <i class="fa fa-caret-right"></i> 7</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001603');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 芯片级的模拟仿真及检查 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>李华林,</td><td>2016/11/25</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001605');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> layout <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/25</td><td>5 <i class="fa fa-caret-right"></i> 5</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001604');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 后端设计 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/25</td><td>8 <i class="fa fa-caret-right"></i> 7</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001612');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 应用开发及FPGA验证 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>李华林,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001587');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 数字设计及验证 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,李华林,王美丽,程茜,李浩,李萌,</td><td>2016/11/24</td><td>7 <i class="fa fa-caret-right"></i> 6</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001613');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 数字设计环境 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001589');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 数字系统设计 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,李华林,</td><td>2016/11/24</td><td>6 <i class="fa fa-caret-right"></i> 5</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001615');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 模拟IP整合 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>高大山,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001602');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 模拟电路设计 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>王美丽,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001601');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 模拟电路设计及仿真 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>李华林,王美丽,</td><td>2016/11/24</td><td>8 <i class="fa fa-caret-right"></i> 7</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001600');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 数字EDA <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>王美丽,</td><td>2016/11/24</td><td>5 <i class="fa fa-caret-right"></i> 4</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001599');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 芯片级的数字仿真及检查 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>李华林,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001598');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 系统验证 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>程茜,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 1</td></tr><tr><td><a href="JavaScript:showItem('工作任务','1001597');"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 数字验证 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>李浩,</td><td>2016/11/24</td><td>1 <i class="fa fa-caret-right"></i> 2</td></tr></tbody></table>
</script>
<div id="colloaPages">
 <a class="button1 button1L" title="首页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=1&#39;);"><i class="fa fa-step-backward"></i></a>
 <a class="button1 button1M" title="上页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=1&#39;);"><i class="fa fa-backward"></i></a>
 <span class="button1M">共有 47 条记录，第 1/3 页</span><a class="button1 button1M" title="下页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=2&#39;);"><i class="fa fa-forward"></i></a>
 <a class="button1 button1R" title="尾页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=3&#39;);"><i class="fa fa-step-forward"></i></a>
</div>
</td></tr></tbody></table>


</body></html>
<script language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='BackJsp/wsq/img/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=BackJsp/wsq/img/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script>