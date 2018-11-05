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
    				<td><h2 style="float:left;">查找客户</h2><span style="float:left;font-size:7px;margin-top:50px;margin-left:5px;">
    				<input name="key"  style="width:700px;height:30px;margin-left:-100px;" ref="test">
    				<input type="button" @click="execute(1)" value="查找" style="width:50px;height:30px;">
    				</span></td>
    				
    			</tr>
    		</table>
    		<table  style="font-family: '微软雅黑';border:1px solid #c0c0c0;border-top:4px solid #c0c0c0;float:left;margin-top:50px;margin-left:50px; border-collapse: collapse; ">
 		 
 		<tr style="height:40px;background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);">
 		<th style="width:265px;text-align:left;padding-left:10px;">合同全称</th>
 		<th style="text-align:right;width:110px;">合同编号</th>
 		<th style="text-align:right;width:85px;">合同金额</th>
 		<th style="text-align:right;width:85px;">回款额</th>
 		<th style="text-align:right;width:125px;">开票额</th>
 		<th style="text-align:center;width:125px;">签约日期</th>
 		</tr>
 		<tbody v-if="tris">
 		<tr v-for="ct in contract">
 		<td class="ktd"><a :href="'contract/contractQuery?cid=' + ct.contractid"><img src="img/customer.gif">{{ct.contracname}}</a></td>
 			
 			
 			<td align=right>{{ct.contracnumber}}</td>
 			<td align=right>{{ct.contracmoney}}</td>
 			<td align=right>0.00</td>
 			<td align=right style='color:#85d579;'>0.00</td>
 			<td align=center>{{ct.signingdate}}</td>
 		
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
		      contract:null,
		      pageInfo:null,
		      tris:false,
		      test:'',
		    },
		    methods:{
		        execute:function(pageNumber){
		         alert(this.$refs.test.value);
		             var url = '/contract/selectAll';
		             this.$http.post(url,{pageNum:pageNumber,key:this.$refs.test.value},{emulateJSON:true}).then(function(res){
		               
		                this.contract=res.body.list
		                
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
	
		






	
	

</script>
