<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Allcustomers.jsp' starting page</title>
    
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
		font-family:'微软雅黑';
	}
	#lotab span:hover{
		color:#000;
	}
	#tab img{
	 	float:left;
	 	
	} 
	#tab span{
	 	float:left;
		margin-left:5px;
		
	} 
	#tab tr{
	float:left;
	width:230px;
		padding-top:7px;
		margin-left:20px;
	} 
	#classify{
		
	}
	 #tab1 td{
		border:1px solid #c0c0c0;
		
		border-left:0px;
		border-right:0px;
	}
	#tab1 tr{
	height:40px;
	}
	#tab1 td a{
	text-decoration:none;
	}
	#tab1 tr:hover td{
		background-color:#ffffe0;
	}
	th{
		color:#454545;
	}
	.ktd{
	padding-left:10px;
	}
	#classify:hover{
		background-color:#ffffe0;
	}
	#classify td:hover a{
		color:#000;
	}
</style>
  </head>
  
  <body id="b">
  <span id="span">
   <table style="margin-left:200px;margin-top:100px;" id="lotab">
   		<tr>
   			<td style="float:left;border:0px solid #000;"><img src="../assets/images/customersLogo.png" style="float:left;margin-top:10px;"><h1 style="float:left;margin-left:10px;">全部客户</h1></td>
   			<td style="float:right;margin-left:650px;">
   				<div style="float:right;height:36px;width:280px;border:1px solid #c0c0c0;border-radius:5px; background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);"">
   					<a href=""><div style="float:left;height:37px;width:50px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:5px;margin-left:18px;color:#a6a6a6;"><b> < </b> </span> </div></a>
   					<a href="BackJsp/mh/CustomerDeAdd.jsp" style="color:#a6a6a6;"><div style="float:left;height:37px;width:110px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:7px;margin-left:10px;"><b>+新增客户</b></span></div></a>
   					<a href="BackJsp/mh/CustomerDeDim.jsp" style="color:#a6a6a6;"><div style="float:left;height:37px;width:70px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:7px;margin-left:20px;"><b>查找</b></span></div></a>
   				
   				</div>
   			</td>
   		</tr>
   </table>
   <div style="margin-left:200px;margin-top:50px;height:200px;border:1px solid #c0c0c0;border-top:3px solid #c0c0c0;width:230px;float:left;">
   		<div style="background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);height:40px;border-bottom:1px solid #c0c0c0;"><b style="float:left;margin-top:10px;margin-left:30px;">分类</b></div>
   		<div id="classify" style="height:160px;border:0px solid #000;">
   			<table id="tab">
   				<tr>
   					<td><a href=""><img src="img/folder.png"/><span style="color:#454545;">(显示所有)</span></a></td>
   				</tr>
   				<tr>
   					<td><a href=""><img src="img/folder.png"/><span>客户分类一</span></a></td>
   				</tr>
   				<tr>
   					<td><a href=""><img src="img/folder.png"/><span>客户分类二</span></a></td>
   				</tr>
   				<tr>
   					<td><a href=""><img src="img/folder.png"/><span>客户分类三</span></a></td>
   				</tr>
   			</table>
   		</div>
   </div>
   <span id="tab1" >
 	 <table  style="border:1px solid #c0c0c0;border-top:4px solid #c0c0c0;float:left;margin-top:50px;margin-left:50px; border-collapse: collapse; ">
 		 
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
 		<tbody id="tbody"></tbody>
 		 <tr v-for="c in client">
 			<td class="ktd"><a :href="'client/clientOne?cid=' + c.clientid"><img src="img/customer.gif">{{c.clientname}}</a></td>
 			<td align=right><a href="">2</a></td>
 			<td align=right>0.00</td>
 			<td align=right><a href="">4</a></td>
 			<td align=right>0.00</td>
 			<td align=right style='color:#85d579;'>0.00</td>
 			<td align=right><a href="">4</a></td>
 			<td align=center>{{pageInfo.total}}</td>
 		</tr> 
 		<tr>
 			<td colspan="8" align=center> 
 			
 			
 			
 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
 			</td>
 		</tr>
 	</table>
 	<!-- <div style="margin-left:50px;float:left;height:30px;width:350px;border:1px solid #c0c0c0;border-radius:5px;margin-top:10px;background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);">
   					<a  href="javascript:void(0)"><div style="float:left;height:30px;width:40px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:3px;margin-left:10px;color:#a6a6a6;"><b> <img src="img/qwq.png" width='25';height='25'> </b> </span> </div></a>
   					<a href=""><div style="float:left;height:30px;width:50px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:3px;margin-left:17px;color:#a6a6a6;"><b> <img src="img/qeq.png" width='25';height='25'> </b> </span> </div></a>
   					<div style="float:left;height:30px;width:165px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="font-size:5px;float:left;padding-top:5px;margin-left:10px;">共有 {{pageInfo.total}}条记录,第 ?/?页</span></div>
   					<a href=""><div style="float:left;height:30px;width:50px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:7px;margin-left:17px;color:#a6a6a6;"><b><img src="img/timg.jpg" width='16';height='16'> </b> </span> </div></a>
   					<a href=""><div style="float:left;height:30px;width:40px;border:0px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:3px;margin-left:10px;color:#a6a6a6;"><b> <img src="img/qqq.png" width='25';height='25'> </b> </span> </div></a>
   	</div> -->
 	
 	</span>
<!--  	               
 --> 	
     
  </span>
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
		      client:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		             var url = '/client/clientSelectBy';
		             this.$http.post(url,{pageNum:pageNumber},{emulateJSON:true}).then(function(res){
		                this.client=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})
        
        
        /* 
          $.post("/client/clientSelect",{pageNum:pageNumber},{emulateJSON:true},function(data){
        var vm = new Vue({
            el:'#table',
            data:data,
            timeout:3000,
            success:function(result){
             alert(11221);
                new Vue({
                    el:'#table',
                    data:myModel
                    
                });
               
            },
            error:function(){
                alert('咦~出错了！');
            }
          })
    }); */
    
    
    	/* $.ajax({
     			url:"client/clientSelect.action",
	 			type:"post",
	 			/*  data:{pageNum:1},
				dataType:"json",  
				success:function(data){
				alert(data[0].clientname)
					for(var i=0;i<data.length;i++){
				var tr="<tr>";
				tr+="<td class='ktd'><a href='client/clientOne?cid="+data[i].clientid+"'><img src='img/customer.gif'>"+data[i].clientname+"</a></td>";
				tr+="<td align=right><a href=''>"+data[i].clientid+"</a></td>";
				  //tr+="<td><a href='goods/del.action?goodsId="+datalist[i].goodsId+"'>删除</a></td>"; 
				/*  tr+="<td><a href='goods/queryone.action?goodsId="+datalist[i].goodsId+"'>修改</a></td>"; 
				tr+="</tr>";
				$("#tbody").append(tr);
				}
				},
				error:function(){
					  alert("error");
				}
				
     	}) 
        
     })
      */
    
</script>
