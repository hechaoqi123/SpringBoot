
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
  
  <body>
  
  	
    	<div id="divOne">
    		<form >
    		<table style="margin-top:50px;margin-left:50px;">
    			<tr>
    				<td><h2 style="float:left;">查找客户</h2><span style="float:left;font-size:7px;margin-top:5px;margin-left:5px;"><input type="radio" name="field">按客户名称
					<input type="radio" name="field">按拼音
					<input type="radio" name="field">按客户来源<br/>
    				<input name="key"  style="width:700px;height:30px;margin-left:-100px;" ref="test">
    				<input type="button" @click="execute(1)" value="查找">
    				</span></td>
    				
    			</tr>
    		</table>
    		<table  style="font-family: '微软雅黑';border:1px solid #c0c0c0;border-top:4px solid #c0c0c0;float:left;margin-top:50px;margin-left:50px; border-collapse: collapse; ">
 		 
 		<tr style="height:40px;background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);">
 		<th style="width:200px;text-align:left;padding-left:10px;">客户名称</th>
 		<th style="text-align:right;width:65px;">商机数</th>
 		<th style="text-align:right;width:110px;">预计成交金额</th>
 		<th style="text-align:right;width:85px;">合同数</th>
 		<th style="text-align:right;width:95px;">合同金额</th>
 		<th style="text-align:right;width:85px;">回款额</th>
 		<th style="text-align:right;width:95px;">售后服务数</th>
 		<th>服务均分</th>
 		</tr>
 		<tbody v-if="tris">
 		<tr v-for="c in client">
 		<td>{{c.clientid}}</td>
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
		      client:null,
		      pageInfo:null,
		      tris:false,
		      test:'',
		    },
		    methods:{
		        execute:function(pageNumber){
		         alert(this.$refs.test.value);
		             var url = '/client/selectDim';
		             this.$http.post(url,{pageNum:pageNumber,key:this.$refs.test.value},{emulateJSON:true}).then(function(res){
		               
		                this.client=res.body.list
		                
		                if(res.body.list!=null){
		                	this.tris=true
		                }else{
		                this.tris=false
		                }
		                alert(res.body.list);
		               
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		//page.execute(1);
		






	/* $("#but").click(function(){
	/* alert(111);
	var keys=$("#key").val();
		  var page=new Vue({
		    el :'#myform',
		    data:{
		      client:null
		    },
		    methods:{
		        execute:function(keys){
		             var url = '/client/selectDim';
		             this.$http.post(url,{key:keys},{emulateJSON:true}).then(function(res){
		                this.client=res.body.list
		             });
		        }
		       
		    }
		     
		}) 
		$.ajax({
			url:"client/selectDim",
			type:"post",
			data:{"key":$("#key").val()},
			dataType:"json",  
			success:function(data){
			alert(data);
			}
		})
	}) */
	

</script>
