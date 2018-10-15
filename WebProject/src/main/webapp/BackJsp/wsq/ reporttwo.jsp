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
   <h1 style="margin-left:10px;"><img style="cursor:pointer;" src="BackJsp/wsq/img/menu.png" onclick="var cm=document.getElementById(&#39;colloaMenu&#39;); if(cm.style.display==&#39;none&#39;) cm.style.display=&#39;inline&#39;; else cm.style.display=&#39;none&#39;;"> 全部工作报告</h1>
   </td>
 <td align="right">
  <script language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=133000&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==0) workflowListOne("workflow.aspx","新增工作任务*",133010,"<i class='fa fa-plus fa-lg'></i>",133000,sObjects,bPortal,bSelf);if(stype==0) workflowListOne("finder.aspx","查找",133050,"<i class='fa fa-search fa-lg'></i>",133000,sObjects,bPortal,bSelf);}
       </script>
         
       <script language="javaScript">workflowList(0);</script>
 
 </td>
 </tr></tbody></table><br>

<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;" >
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

<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th><img src="BackJsp/wsq/img/priority0.gif">报告名称</th><th>创建人</th><th>所属部门</th><th>评审人</th><th>创建时间</th></tr></thead>
  <tbody>
     <tr>
     <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000391&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年4月份第1周工作报告（沈华） <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>沈华</td><td>销售部</td><td>李萌,</td><td>2016/4/11 14:19</td>
     </tr>
     <tr>
      <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000821&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2015年度工作报告(采购部) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>陈龙天</td><td>采购部</td><td>陈杰,</td><td>2016/4/28 9:54</td>
     </tr>
     <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000820&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年1季度工作报告(财务部) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>严必行</td><td>财务部</td><td>陈杰,</td><td>2016/4/28 9:53</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000819&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2015年度工作报告(财务部) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>严必行</td><td>财务部</td><td>陈杰,</td><td>2016/4/28 9:52</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000818&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年1季度工作报告（李萌） <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/28 9:51</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000815&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年1季度工作报告（销售部） <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/28 9:41</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000814&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> 2016年4月份第4周工作报告(李萌) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/28 9:39</td>
      </tr>
      <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000813&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年4月份第3周工作报告(李萌) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/28 9:38</td>
      </tr>
      <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000811&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2015年度工作报告（销售部） <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/28 9:28</td>
      </tr>
      <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000581&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年3月份工作报告(销售部) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/18 16:29</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000050&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> 2016年3月份第2周工作报告 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>王丽萍</td><td>深圳分公司</td><td>陈杰,刘军,</td><td>2016/4/6 14:39</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000392&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年3月份工作报告（沈涛辉） <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>沈涛辉</td><td>销售部</td><td>李萌,</td><td>2016/4/11 15:31</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000824&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年1季度工作报告(售后部) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李白军</td><td>售后部</td><td>陈杰,</td><td>2016/4/28 9:58</td>
      </tr>
      <tr>
       <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000385&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年3月份工作报告(沈华) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>沈华</td><td>销售部</td><td>李萌,</td><td>2016/4/11 14:04</td>
      </tr>
       <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000305&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年3月份工作报告(李萌) <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/11 10:34</td>
       </tr>
       <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000299&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> 2016年4月份第2周工作报告 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李萌</td><td>销售部</td><td>王刚,</td><td>2016/4/11 10:25</td>
       </tr>
       <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000236&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> 财务部2016年3月份工作报告 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>严必行</td><td>财务部</td><td>陈杰,</td><td>2016/4/8 11:12</td>
       </tr>
       <tr>
        <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000228&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> <span style="color:orange">2016年1季度工作报告</span> <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>吴燕</td><td>人事部</td><td>陈杰,刘军,</td><td>2016/4/8 10:59</td>
       </tr>
       <tr>
         <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000078&#39;);"><i style="color:orange;" class="fa fa-calendar-minus-o fa-lg"></i> 2016年4月份第1周工作报告 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>胡梦泉</td><td>杭州分公司</td><td>陈斌,</td><td>2016/4/6 16:20</td>
       </tr>
       <tr>
         <td><a href="JavaScript:showItem(&#39;工作报告&#39;,&#39;1000077&#39;);"><i style="color:#3cbc3c;" class="fa fa-calendar-check-o fa-lg"></i> 2016年3月份工作报告 <img border="0" src="BackJsp/wsq/img/priority0.gif"></a></td><td>李白军</td><td>售后部</td><td>王刚,</td><td>2016/4/6 16:18</td>
      </tr>
 </tbody>
</table>

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
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script>