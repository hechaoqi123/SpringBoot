<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<base href="<%=basePath%>">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>我的任务 - Colloa</title>
  <link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
<style>
	b{
		font-size:12px;
	}
	#tab1 tr{
		height:30px;	
	}
	th{
		height:30px;
	}
	


</style>

</head><body id="colloaBody">
 <table style="padding-left:30px;padding-top:30px; " id="lotab">
   		<tr>
   			<td style="float:left;border:0px solid #000;"><img src="../assets/images/customersLogo.png" style="float:left;margin-top:10px;"><h1 style="float:left;margin-left:10px;">我的任务</h1></td>
   			<td style="float:right;margin-left:650px;">
   				<div style="float:right;height:36px;width:280px;border:1px solid #c0c0c0;border-radius:5px; background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);"">
   					<a href=""><div style="float:left;height:37px;width:50px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:10px;margin-left:18px;color:#a6a6a6;"><b> < </b> </span> </div></a>
   					<a href="task/taskUserAddMe" style="color:#a6a6a6;"><div style="float:left;height:37px;width:110px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;margin-top:10px;margin-left:20px;"><b>+新增任务</b></span></div></a>
   				
   				</div>
   			</td>
   		</tr>
   </table>



	<table  style="margin-left:30px;" cellpadding="0" cellspacing="0" border="0" class="tableList" ><thead><tr><th>任务名称</th><th>所属项目</th><th>创建人</th><th>执行人</th><th>开始时间</th><th>结束时间</th><th>工作量</th></tr></thead>
<tbody id="tab1" style="font-size:12px;">
	<tr v-for="t in task">
		<td v-if="t.rwfl=='0'"><a :href="'task/selectTailed?tid='+ t.tid"><i style="color:orange;" ></i><img src="img/ico1.png" style="width:15;height:15;float:left;margin-left:2px;margin-top:0px;"> <span style="color:#cc0000">{{t.tname}}</span> </a></td>
		<td v-else><a :href="'task/selectTailed?tid='+ t.tid"><i style="color:#8ed646;" ></i><img src="BackJsp/hcq/img/ico2.png " style="width:15;height:15;float:left;margin-left:2px;margin-top:0px;"> <span style="color:#8ed646">{{t.tname}}</span> </a></td>
		<td>{{t.itemname}}</td>
		<td>{{t.username}}</td>
		<td>{{t.username}}</td>
		<td>{{t.ksdeta}}&nbsp;</td>
		<td>{{t.jsdeta}}&nbsp;</td>
		<td>{{t.workload}}<i class="fa fa-caret-right"></i> 0</td>
		</tr>
		<tr>
 			<td colspan="8" align=center> 
 			
 			
 			
 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
 			</td>
 		</tr>
</tbody>
</table>

</body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
	<script src="BackJsp/mh/js/Vue.js"></script>
	<script src="BackJsp/mh/js/vue-resource.min.js"></script>


<script>
 $(function(){
	 
		  var page=new Vue({
		    el :'#tab1',
		    data:{
		      task:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		              var url = '/task/selectMeTask';
		             this.$http.post(url,{pageNum:pageNumber},{emulateJSON:true}).then(function(res){
		                this. task=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})


</script>
