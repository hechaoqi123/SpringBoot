<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head>
 <base href="<%=basePath%>">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>我的项目管理 - Colloa</title>
  <link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
</head><body id="colloaBody">
<table style="min-width:980px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0">
<tbody><tr valign="top">
<td id="colloaContent">
<table cellpadding="0" cellspacing="0" border="0">

<tbody>
<tr>
	<td>
		<h1><img style="cursor:pointer;" src="BackJsp/img/menu.png" onclick="var cm=document.getElementById(&#39;colloaMenu&#39;); if(cm.style.display==&#39;none&#39;) cm.style.display=&#39;inline&#39;; else cm.style.display=&#39;none&#39;;"> 我的项目</h1></td><td align="right">
		<a class="button1 button1L" title="后退" href="#"><i class="fa fa-angle-left"></i></a>
		<span id="oWorkflowList1"><a href="Itinfor/selectMeItinforId" class="button1 button1M"><i class="fa fa-plus"></i> 新增项目*</a>
		<a class="button1 button1R" title="刷新" href="javaScript:location.reload();"><i class="fa fa-bolt"></i></a>
	</td>
</tr>
</tbody>
</table><br>

<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;" id="tab1"><colgroup><col width="20%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td>
<table cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th style="padding-left:26px;">分类</th></tr></thead><tbody><tr><td style="padding:10px;">

<div id="treeOfNavigation" class="treeOfNavigation">
<a psid="0" sid="" indent="0" href="javascript:catalogue();" class=" textHighlight">
<img src="../BackJsp/img/blank16.gif" border="0"><img src="../BackJsp/img/folder.png" border="0"> (显示所有)</a>

<a  @click="execute(1)" psid="0" sid="400010" indent="0" style="padding-left:0px;" href="javascript:void(0);" >
<img src="../BackJsp/img/blank16.gif" border="0"><img src="../BackJsp/img/folder.png" border="0"> 常规业务项目 <span class="tipCount"> {{pageInfo.total}}</span></a>
<a psid="0" sid="400030" indent="0" style="padding-left:0px;" href="javascript:catalogue(10000,400030,&#39;特殊业务项目&#39;);">
<img src="../BackJsp/img/blank16.gif" border="0"><img src="../BackJsp/img/folder.png" border="0"> 特殊业务项目 <span class="tipCount">2</span></a>
<a psid="0" sid="400020" indent="0" style="padding-left:0px;" href="javascript:catalogue(10000,400020,&#39;重点业务项目&#39;);">
<img src="../BackJsp/img/blank16.gif" border="0"><img src="BackJsp/img/folder.png" border="0"> 重点业务项目 <span class="tipCount">2</span></a></div>
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
<table  cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>项目名称和状态</th><th>完成时间</th><th>任务</th><th>工作量</th><th>成本费用</th><th>文档</th><th>讨论板</th></tr></thead>
<tbody  v-for="i in itinfor"><tr valign="top">
			
<td><a :href="'Itinfor/selectDetailedOne?iid=' + i.itemid"><i style="color:#2c87f0;" class="fa fa-lock fa-lg"></i>{{i.itemname}}<img border="0" src="../BackJsp/img/priority0.gif"></a>
<div style="margin-left:20px;" v-if="i.itstate==0"><br>审核中<span class="tipProgress" style="width:110px;background-color:#2c87f0;">0%</span></div>
<div style="margin-left:20px;" v-if="i.itstate==1"><br>待开启<span class="tipProgress" style="width:110px;background-color:#2c87f0;">0%</span></div>
<div style="margin-left:20px;" v-if="i.itstate==2"><br>进行中<span class="tipProgress" style="width:110px;background-color:#2c87f0;" v-if="i.numbers==null">0%</span>

<span class="tipProgress" style="width:110px;background-color:#2c87f0;" v-else>{{100/i.number*i.numbers}}%</span>

</div>
<div style="margin-left:20px;" v-if="i.itstate==4"><br>已完成<span class="tipProgress" style="width:110px;background-color:#2c87f0;">100%</span></div></td>

<td>{{i.planendtime}}<div><i class="fa fa-caret-right"></i> </div></td>
<td><br><a :href="'task/selectiid?iid=' + i.itemid"><i class="fa fa-calendar-minus-o fa-lg"></i> {{i.number}} </a></td>
<td>{{i.workload}}<br><i class="fa fa-caret-right"></i> 0</td>
<td>{{i.estimatecost}}<br><i class="fa fa-caret-right"></i> <a href="javaScript:showItem(&#39;项目成本费用&#39;,&#39;1001944&amp;ex.catalogue=400400&#39;);">0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目文档&#39;,&#39;1001944&amp;ex.catalogue=400800&#39;);"><i class="fa fa-file-word-o fa-lg"></i> 0</a></td>
<td><br><a href="javaScript:showItem(&#39;项目讨论板&#39;,&#39;1001944&amp;ex.catalogue=400900&#39;);"><i class="fa fa-file-text-o fa-lg"></i> 0</a></td>
</tr>




</tbody>
<tr>
 			<td colspan="8" align=center> 
 			
 			
 			
 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
 			</td>
 		</tr>

</table></td></tr></tbody></table>
<script language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../img/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script>
</body>

<script src="../../assets/js/jquery-2.0.3.min.js"></script>
	<script src="BackJsp/mh/js/Vue.js"></script>
	<script src="BackJsp/mh/js/vue-resource.min.js"></script>
	
	
	<script>
	 $(function(){
	 
		  var page=new Vue({
		    el :'#tab1',
		    data:{
		      itinfor:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		              var url = '/Itinfor/selectMeItinfor';
		             this.$http.post(url,{pageNum:pageNumber},{emulateJSON:true}).then(function(res){
		                this.itinfor=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1); 
		})
	
	</script>
	
	
	