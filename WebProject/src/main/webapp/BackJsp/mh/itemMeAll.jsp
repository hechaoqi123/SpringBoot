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
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
  <link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesomes.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>assets/css/view.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.css">
</head>
<body id="b" id="colloaBody" style="padding: 50px;">
	<div id="topDiv">
		<table>
  			<tr>
	   			<td width="20%">
	   				<h1>
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 我的项目
	   				</h1>
				</td>
				<td align="right">
					<a class="button1 button1L" title="后退" href="javaScript:windowClose();"><i class="fa fa-angle-left"></i></a><span id="oWorkflowList1"><a href="Itinfor/selectMeItinforId" class="button1 button1M"><i class="fa fa-plus"></i> 新增项目</a></span><a class="button1 button1R" title="刷新" href="javaScript:location.reload();"><i class="fa fa-bolt"></i></a>
				</td>
			</tr>
  		</table>
	</div>
	<br>
	
	<div id="tab1">
 		<table class="table table-bordered table-hover table-condensed">
 			<tr class="warning">
				<th>项目名称和状态</th>
				<th>完成时间</th>
				<th>任务</th>
				<th>工作量</th>
				<th>成本费用</th>
				<th>文档</th>
				<th>讨论板</th>
		 	</tr>
		 	<tbody  v-for="i in itinfor"><tr valign="top">
			
<td>
<a :href="'Itinfor/selectDetailedOne?iid=' + i.itemid">{{i.itemname}}</a>
<div  class="progress" style="width:80%; margin-left:20px;float: right;" v-if="i.itstate==0">
	<div class="progress-bar" style="width: 15%;">
		<span>审核中</span>
	</div>
</div>
<div  class="progress" style="width:80%; margin-left:20px;float: right;" v-if="i.itstate==1">
	<div class="progress-bar" style="width: 35%;">
		<span>待开启</span>
	</div>
</div>
<div  class="progress" style="width:80%; margin-left:20px;float: right;" v-if="i.itstate==2">
	<div class="progress-bar" style="width: 75%;">
		<span>进行中</span>
	</div>
</div>
<div  class="progress" style="width:80%; margin-left:20px;float: right;" v-if="i.itstate==4">
	<div class="progress-bar" style="width: 100%;">
		<span>已完成</span>
	</div>
</div>
</td>
<td>{{i.planendtime}}</td>
<td><a :href="'task/selectiid?iid=' + i.itemid"><i class="fa fa-calendar-minus-o fa-lg"></i> {{i.number}}</a></td>
<td>{{i.workload}}</td>
<td>{{i.estimatecost}}</td>
<td><i class="fa fa-file-word-o fa-lg"></i></td>
<td><i class="fa fa-file-text-o fa-lg"></i></td>
</tr>
</tbody>
<tr>
	<td colspan="8" align=center> 
		 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
	</td>
</tr>
 		</table>
 	</div>


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
	
	
	