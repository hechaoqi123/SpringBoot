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
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 全部项目管理
	   				</h1>
				</td>
				<td id="oWorkflowList" align="right">
					<a href="Itinfor/selectMeItinforId" class="button1 button1L">
						<i class="fa">新增项目</i>
					</a><span id="oWorkflowList1"></span><a href="BackJsp/mh/itinforDim.jsp" class="button1 button1R">
						<i class="fa">查找</i>
					</a>
					<a class="button1 button1L" title="后退" href="javaScript:windowClose();">
						<i class="fa fa-angle-left"></i>
					</a><span id="oWorkflowList1"><!-- <a href="#" class="button1 button1M">
							<i class="fa fa-plus"></i> 新增
					</a> --></span><a class="button1 button1R" title="刷新" href="javaScript:location.reload();">
						<i class="fa fa-bolt"></i>
					</a>
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
		 	<tbody v-for="i in itinfor">
		 		<tr>
					<td style="width: 20%;">
						<a :href="'Itinfor/selectDetailed?iid=' + i.itemid">{{i.itemname}}</a>
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
					<td><a :href="'task/selectiid?iid=' + i.itemid">{{i.number}}</a></td>
					<td>{{i.workload}}</td>
					<td>{{i.estimatecost}}</td>
					<td>0</td>
					<td>0</td>
				</tr>
		 	</tbody>
		 	<tr>
	 			<td colspan="8" align=center> 
	 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
	 			</td>
	 		</tr>
 		</table>
 	</div>
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
		              var url = '/Itinfor/selectDim';
		             this.$http.post(url,{pageNum:pageNumber,key:null},{emulateJSON:true}).then(function(res){
		                this.itinfor=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})
		
	
	
	</script>

