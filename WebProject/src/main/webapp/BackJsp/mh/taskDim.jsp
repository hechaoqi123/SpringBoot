
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CustomerDeDim.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style>
	*{
		margin:0px;
		padding:0px;
		
	}
	#divOne{
		
	}
	
	
</style>
  </head>
  
  <body style="padding-left:50px;">
  
  	
    	<div id="divOne">
    		<form >
    		<table style="margin-top:50px;margin-left:50px;">
    			<tr>
    				<td><h2 style="float:left;">查找工作任务</h2><span style="float:left;font-size:7px;margin-top:50px;margin-left:5px;">
    				<input name="key"  style="width:700px;height:30px;margin-left:-150px;" ref="test">
    				<input type="button" @click="execute(1)" value="查找" style="width:50px;height:30px;">
    				</span></td>
    				
    			</tr>
    		</table>
    		<table  style="font-family: '微软雅黑';border:1px solid #c0c0c0;border-top:4px solid #c0c0c0;float:left;margin-top:50px;margin-left:50px; border-collapse: collapse; ">
 		 
 		<tr style="height:40px;background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);">
 		<th style="width:230px;text-align:left;padding-left:10px;">任务名称</th>
 		<th style="text-align:left;width:85px;">创建人</th>
 		<th style="text-align:left;width:210px;">执行人</th>
 		<th style="text-align:left;width:105px;">开始时间</th>
 		<th style="text-align:left;width:105px;">工作量</th>
 		</tr>
 		<tbody v-if="tris">
 		 <tr v-for="t in task">
 			<td class="ktd"><a :href="'task/selectTailed?tid='+ t.tid"><i style="color:orange;" ></i><img src="img/ico1.png" style="width:15;height:15;float:left;margin-left:2px;margin-top:0px;"> <span style="color:#cc0000">{{t.tname}}</span> </a></td></td>
 			<td align=left>{{t.username}}</td>
 			<td align=left>{{t.username}}</a></td>
 			<td align=left>{{t.ksdeta}}</td>
 			<td align=left>{{t.workload}}</td>
 	
 		</tr> 
 		</tbody>
 		</table>
    	
    	
    	<table>	
    		
    		</table>
    </form>
    </div>
    
  </body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
	<script src="BackJsp/mh/js/Vue.js"></script>
	<script src="BackJsp/mh/js/vue-resource.min.js"></script>
<script>

		  var page=new Vue({
		    el :'#divOne',
		    data:{
		      task:null,
		      pageInfo:null,
		       tris:false,
		      test:'',
		    },
		    methods:{
		        execute:function(pageNumber){
		        alert(111)
		              var url = '/task/selectTask';
		             this.$http.post(url,{pageNum:pageNumber,key:this.$refs.test.value},{emulateJSON:true}).then(function(res){
		                this.task=res.body.list
		                if(res.body.list!=null){
		                	this.tris=true
		                }else{
		                this.tris=false
		                }
		               
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		







</script>
