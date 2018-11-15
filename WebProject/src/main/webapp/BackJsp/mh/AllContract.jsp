<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllContract.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesomes.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>assets/css/view.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.css">
	
  </head>
  
  <body id="b" style="padding:50px;">
	<div id="topDiv">
		<table>
  			<tr>
	   			<td width="20%">
	   				<h1>
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 我的合同
	   				</h1>
				</td>
				<td id="oWorkflowList" align="right">
					<a href="BackJsp/mh/ContractAdd.jsp" class="button1 button1L">
						<i class="fa">新增合同</i>
					</a><span id="oWorkflowList1"></span><a href="BackJsp/mh/ContractDim.jsp" class="button1 button1R">
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
		 		<th>合同全称</th>
		 		<th>合同编号</th>
		 		<th>合同金额</th>
		 		<th>回款额</th>
		 		<th>开票额</th>
		 		<th>签约日期</th>
		 	</tr>
		 	<tbody>
		 		 <tr v-for="ct in contract">
		 			<td class="ktd"><a :href="'contract/contractQuery?cid=' + ct.contractid"><img src="img/customer.gif" style="float:left;padding-left:-5px;margin-top:3px;"><span style="float:left;margin-left:5px;">{{ct.clientname}}-{{ct.contracname}}</span></a></td>
		 			<td align=right>{{ct.contracnumber}}</td>
		 			<td align=right>{{ct.contracmoney}}</td>
		 			<td align=right>0.00</td>
		 			<td align=right style='color:#85d579;'>0.00</td>
		 			<td align=center>{{ct.signingdate}}</td>
		 		</tr> 
			 	<tr>
		 			<td colspan="8" align=center> 
		 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
		 			</td>
	 			</tr>
		 	</tbody>
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
		      contract:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		              var url = '/contract/selectAll';
		             this.$http.post(url,{pageNum:pageNumber,key:null},{emulateJSON:true}).then(function(res){
		                this. contract=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})


</script>
</html>
