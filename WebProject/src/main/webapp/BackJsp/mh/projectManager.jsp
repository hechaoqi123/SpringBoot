<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head>
 <base href="<%=basePath%>">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>全部项目管理 - Colloa</title>
  <link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
</head><body id="colloaBody">
<table style="min-width:980px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">
<td id="colloaContent"><table cellpadding="0" cellspacing="0" border="0"><tbody><tr><td><h1><img style="cursor:pointer;" src="BackJsp/img/menu.png" onclick="var cm=document.getElementById(&#39;colloaMenu&#39;); if(cm.style.display==&#39;none&#39;) cm.style.display=&#39;inline&#39;; else cm.style.display=&#39;none&#39;;"> 全部项目管理</h1></td><td align="right"><script language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=400100&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==0) workflowListOne("workflow.aspx","新增项目*",400110,"<i class='fa fa-plus fa-lg'></i>",400100,sObjects,bPortal,bSelf);if(stype==1) workflowListOne("workflow.aspx","进度报告",400140,"<i class='fa fa-reply fa-lg'></i>",400100,sObjects,bPortal,bSelf);if(stype==1) workflowListOne("workflow.aspx","项目变更*",400150,"<i class='fa fa-eyedropper fa-lg'></i>",400100,sObjects,bPortal,bSelf);if(stype==1) workflowListOne("workflow.aspx","项目关闭*",400180,"<i class='fa fa-eyedropper fa-lg'></i>",400100,sObjects,bPortal,bSelf);if(stype==0) workflowListOne("finder.aspx","查找",400240,"<i class='fa fa-search fa-lg'></i>",400100,sObjects,bPortal,bSelf);}</script><a class="button1 button1L" title="后退" href="javaScript:windowClose();"><i class="fa fa-angle-left"></i></a><span id="oWorkflowList1"><a href="javaScript:windowOpen(&#39;workflow.aspx?sid=400110&amp;name=%u65B0%u589E%u9879%u76EE*&amp;catalogue=400100&#39;);" class="button1 button1M"><i class="fa fa-plus"></i> 新增项目*</a><a href="javaScript:windowOpen(&#39;finder.aspx?sid=400240&amp;name=%u67E5%u627E&amp;catalogue=400100&#39;);" class="button1 button1M">查找</a></span><a class="button1 button1R" title="刷新" href="javaScript:location.reload();"><i class="fa fa-bolt"></i></a><script language="javaScript">workflowList(0);</script></td></tr></tbody></table><br>

<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;"><colgroup><col width="20%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td>
<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th style="padding-left:26px;">分类</th></tr></thead><tbody><tr><td style="padding:10px;">

<div id="treeOfNavigation" class="treeOfNavigation"><a psid="0" sid="" indent="0" href="javascript:catalogue();" class=" textHighlight"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> (显示所有)</a><a psid="0" sid="400010" indent="0" style="padding-left:0px;" href="javascript:catalogue(10000,400010,&#39;常规业务项目&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 常规业务项目 <span class="tipCount">20</span></a><a psid="0" sid="400030" indent="0" style="padding-left:0px;" href="javascript:catalogue(10000,400030,&#39;特殊业务项目&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 特殊业务项目 <span class="tipCount">2</span></a><a psid="0" sid="400020" indent="0" style="padding-left:0px;" href="javascript:catalogue(10000,400020,&#39;重点业务项目&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 重点业务项目 <span class="tipCount">2</span></a></div>
<script type="text/javascript">treeBuild("treeOfNavigation", "");</script>

</td></tr><tr><td style="padding:10px;"><div class="treeOfNavigation">

<a href="javascript:catalogue(1,0,&#39;审批中的项目&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 审批中的项目 <span class="tipCount">1</span></a>
<a href="javascript:catalogue(-10,0,&#39;实施中的项目&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 实施中的项目 <span class="tipCount">14</span></a>
<a href="javascript:catalogue(0,0,&#39;已关闭的项目&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 已关闭的项目 <span class="tipCount">9</span></a>

</div></td></tr><tr><td style="padding:10px;"><div class="treeOfNavigation">

<a href="javascript:catalogue(81,0,&#39;本周新增&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 本周新增 <span class="tipCount">0</span></a>
<a href="javascript:catalogue(84,0,&#39;本月新增&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 本月新增 <span class="tipCount">0</span></a>
<a href="javascript:catalogue(87,0,&#39;本季度新增&#39;);"><img src="BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 本季度新增 <span class="tipCount">0</span></a>

</div></td></tr></tbody></table>
</td><td></td><td>

<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>项目名称和状态</th><th>完成时间</th><th>任务</th><th>工作量</th><th>成本费用</th><th>文档</th><th>讨论板</th></tr></thead>
<tbody><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001944&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> IPD-新品研发项目流程 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">李浩, +5个成员<br>实施中 <span class="tipProgress" style="width:110px;background-color:#2c87f0;">55%</span></div></td>
<td>2018/2/13<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001944&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 24</a></td>
<td>360<br><i class="fa fa-caret-right"></i> 0</td>
<td>125000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001944&amp;ex.catalogue=400400&#39;);">0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001944&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001944&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001520&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> <span style="color:#cc0000">西安生物基因有限公司-设备监控和系统开发工程</span> <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">高大山, +6个成员<br>变更审核 </div></td>
<td>2017/7/24<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001520&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 21</a></td>
<td>1500<br><i class="fa fa-caret-right"></i> 0</td>
<td>1200000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001520&amp;ex.catalogue=400400&#39;);">0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001520&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001520&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001628&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 电梯安装和验收案件-永兴电梯设备公司 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">李静, +5个成员<br>实施中 <span class="tipProgress" style="width:80px;background-color:orange;">40%</span></div></td>
<td>2017/2/28<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001628&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 10</a></td>
<td>60<br><i class="fa fa-caret-right"></i> 27</td>
<td>40000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001628&amp;ex.catalogue=400400&#39;);">8380</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001628&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001628&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001560&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 江苏移动总公司-蓝牙音频SoC芯片 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">李萌, +5个成员<br>实施中 <span class="tipProgress" style="width:190px;background-color:#3cbc3c;">95%</span></div></td>
<td>2016/12/31<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001560&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 37</a></td>
<td>2000<br><i class="fa fa-caret-right"></i> 93</td>
<td>800000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001560&amp;ex.catalogue=400400&#39;);">0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001560&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001560&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001402&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 江苏移动总公司-BPM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">李华林, +2个成员<br>实施中 <span class="tipProgress" style="width:60px;background-color:orange;">30%</span></div></td>
<td>2016/12/31<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001402&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 4</a></td>
<td>600<br><i class="fa fa-caret-right"></i> 180</td>
<td>210000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001402&amp;ex.catalogue=400400&#39;);">121066</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001402&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 3</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001402&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 3</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001406&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 雀巢(中国)有限公司-BPM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">高大山, +3个成员<br>实施中 <span class="tipProgress" style="width:90px;background-color:orange;">45%</span></div></td>
<td>2016/12/20<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001406&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>950<br><i class="fa fa-caret-right"></i> 423</td>
<td>350000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001406&amp;ex.catalogue=400400&#39;);">202700</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001406&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001406&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001399&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 昆明东山风景区-风景区开发项目管理平台 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">王美丽, +2个成员<br>实施中 <span class="tipProgress" style="width:50px;background-color:#cc0000;">25%</span></div></td>
<td>2016/12/11<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001399&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>600<br><i class="fa fa-caret-right"></i> 123</td>
<td>220000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001399&amp;ex.catalogue=400400&#39;);">151375</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001399&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001399&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001441&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 江苏苏计咨询有限公司-SCM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">李海燕, +0个成员<br>实施中 <span class="tipProgress" style="width:40px;background-color:#cc0000;">20%</span></div></td>
<td>2016/9/9<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001441&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 2</a></td>
<td>12<br><i class="fa fa-caret-right"></i> 10</td>
<td>1000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001441&amp;ex.catalogue=400400&#39;);">100</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001441&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001441&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001405&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 镇江市江南矿山几点设备有限公司-BPM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">姜大声, +1个成员<br>实施中 <span class="tipProgress" style="width:120px;background-color:#2c87f0;">60%</span></div></td>
<td>2016/9/6<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001405&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 2</a></td>
<td>700<br><i class="fa fa-caret-right"></i> 420</td>
<td>200000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001405&amp;ex.catalogue=400400&#39;);">55000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001405&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 2</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001405&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001281&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 淮安市地税局-BPM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">姜大声,李萌, +3个成员<br>实施中 <span class="tipProgress" style="width:150px;background-color:#2c87f0;">75%</span></div></td>
<td>2016/8/31<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001281&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>90<br><i class="fa fa-caret-right"></i> 45</td>
<td>180000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001281&amp;ex.catalogue=400400&#39;);">25000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001281&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001281&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001489&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 成都电子集团-BPM系统 <img border="0" src="BackJsp/img/priority1.gif"></a><div style="margin-left:20px;">高大山, +3个成员<br>实施中 <span class="tipProgress" style="width:40px;background-color:#cc0000;">20%</span></div></td>
<td>2016/8/10<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001489&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 2</a></td>
<td>800<br><i class="fa fa-caret-right"></i> 158</td>
<td>220000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001489&amp;ex.catalogue=400400&#39;);">0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001489&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001489&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001427&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 大连天佳集团-BPM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">程茜, +2个成员<br>实施中 <span class="tipProgress" style="width:160px;background-color:#3cbc3c;">80%</span></div></td>
<td>2016/8/9<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001427&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 4</a></td>
<td>300<br><i class="fa fa-caret-right"></i> 253</td>
<td>80000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001427&amp;ex.catalogue=400400&#39;);">69000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001427&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001427&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001436&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 淮安市地税局-移动办公和硬件服务 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">高大山, +3个成员<br>实施中 <span class="tipProgress" style="width:160px;background-color:#3cbc3c;">80%</span></div></td>
<td>2016/7/12<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001436&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 4</a></td>
<td>250<br><i class="fa fa-caret-right"></i> 223</td>
<td>80000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001436&amp;ex.catalogue=400400&#39;);">65000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001436&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001436&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001452&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 广州奇固锁业-SCM系统 <img border="0" src="BackJsp/img/priority1.gif"></a><div style="margin-left:20px;">姜大声, +1个成员<br>已关闭 <span class="tipProgress" style="width:200px;background-color:#3cbc3c;">100%</span></div></td>
<td>2016/6/6<div><i class="fa fa-caret-right"></i> 2016/2/29</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001452&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>150<br><i class="fa fa-caret-right"></i> 148</td>
<td>60000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001452&amp;ex.catalogue=400400&#39;);">51000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001452&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001452&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001407&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 南京起重机械总厂-VBM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">王美丽, +2个成员<br>已关闭 <span class="tipProgress" style="width:200px;background-color:#3cbc3c;">100%</span></div></td>
<td>2016/4/15<div><i class="fa fa-caret-right"></i> 2016/4/15</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001407&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 1</a></td>
<td>450<br><i class="fa fa-caret-right"></i> 450</td>
<td>180000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001407&amp;ex.catalogue=400400&#39;);">147000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001407&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001407&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001400&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 嵊州市妇幼保健院-VBM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">高大山, +0个成员<br>实施中 <span class="tipProgress" style="width:160px;background-color:#3cbc3c;">80%</span></div></td>
<td>2016/1/22<div><i class="fa fa-caret-right"></i> 2016/1/22</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001400&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 4</a></td>
<td>150<br><i class="fa fa-caret-right"></i> 112</td>
<td>60000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001400&amp;ex.catalogue=400400&#39;);">40000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001400&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 2</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001400&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001425&#39;);"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i> 江西南昌机电有限公司-ＰＭ系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">高大山, +1个成员<br>实施中 <span class="tipProgress" style="width:120px;background-color:#2c87f0;">60%</span></div></td>
<td>2016/1/7<div><i class="fa fa-caret-right"></i> 2016/1/8</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001425&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>350<br><i class="fa fa-caret-right"></i> 232</td>
<td>150000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001425&amp;ex.catalogue=400400&#39;);">103000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001425&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001425&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001417&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 上海旅游集散中心-SCM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">高大山, +1个成员<br>已关闭 <span class="tipProgress" style="width:200px;background-color:#3cbc3c;">100%</span></div></td>
<td>2015/12/25<div><i class="fa fa-caret-right"></i> 2015/12/24</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001417&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>220<br><i class="fa fa-caret-right"></i> 176</td>
<td>80000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001417&amp;ex.catalogue=400400&#39;);">52000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001417&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001417&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 1</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001462&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 成都电子集团-BPM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">李华林, +3个成员<br>已关闭 <span class="tipProgress" style="width:200px;background-color:#3cbc3c;">100%</span></div></td>
<td>2015/10/9<div><i class="fa fa-caret-right"></i> 2015/10/9</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001462&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 3</a></td>
<td>600<br><i class="fa fa-caret-right"></i> 600</td>
<td>200000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001462&amp;ex.catalogue=400400&#39;);">150500</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001462&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001462&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr><tr valign="top"><td><a href="javaScript:showItem(&#39;项目&#39;,&#39;1001479&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 镇江求精机床有限公司-VBM系统 <img border="0" src="BackJsp/img/priority0.gif"></a><div style="margin-left:20px;">王美丽, +4个成员<br>已关闭 <span class="tipProgress" style="width:200px;background-color:#3cbc3c;">100%</span></div></td>
<td>2015/7/31<div><i class="fa fa-caret-right"></i> 2015/7/31</div></td>
<td><br><a href="javaScript:showItem(&#39;项目任务&#39;,&#39;1001479&amp;ex.catalogue=400200&#39;);"><i class="fa fa-calendar-minus-o fa-lg"></i> 2</a></td>
<td>660<br><i class="fa fa-caret-right"></i> 545</td>
<td>130000<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001479&amp;ex.catalogue=400400&#39;);">129000</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001479&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 1</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001479&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 2</a></td>
</tr></tbody></table>
<script language="javaScript">cataloguePages(24,20);</script><div id="colloaPages"><a class="button1 button1L" title="首页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=1&#39;);"><i class="fa fa-step-backward"></i></a><a class="button1 button1M" title="上页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=1&#39;);"><i class="fa fa-backward"></i></a><span class="button1M">共有 24 条记录，第 1/2 页</span><a class="button1 button1M" title="下页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=2&#39;);"><i class="fa fa-forward"></i></a><a class="button1 button1R" title="尾页" href="javaScript:var n=location.href.indexOf(&#39;&amp;page=&#39;);location.replace((n&gt;0?location.href.substr(0,n):location.href)+&#39;&amp;page=2&#39;);"><i class="fa fa-step-forward"></i></a></div>
</td></tr></tbody></table></td></tr></tbody></table>
<script language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script></body></html>