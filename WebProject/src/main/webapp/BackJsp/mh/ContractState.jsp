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
  <title>审核项目 - Colloa</title>
  <link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
  
  <style>
  	*{
		font-family:'微软雅黑';
	}
	#lotab span:hover{
		color:#000;
	}#tab img{
	 	float:left;
	 	
	} 
	#tab span{
	 	float:left;
		margin-left:5px;
		
	} 
	#tab tr{
	float:left;
	width:230px;
		padding-top:5px;
		margin-left:20px;
	} 
	#classify:hover{
		background-color:#ffffe0;
	}
	#classify td:hover a{
		color:#000;
	}
  
  </style>
</head><body id="colloaBody">
<table style="padding-left:50px;padding-top:50px;" id="lotab">
   		<tr>
   			<td style="float:left;border:0px solid #000;"><img src="../assets/images/customersLogo.png" style="float:left;margin-top:10px;"><h1 style="float:left;margin-left:10px;">待处理合同</h1></td>
   			<td style="float:right;margin-left:650px;">
   			</td>
   		</tr>
   </table>


 <table id="tab1" cellpadding="0" cellspacing="0" border="0" class="tableList" style="float:right;margin-top:50px;/* margin-right:90px; */"><thead><tr><th>项目名称和状态</th><th>当前步骤</th><th>负责人</th><th>更新时间</th></thead>
 <tbody  v-for="c in contract"><tr valign="top">
			
<td><a :href="'contract/contractQuery?cid=' + c.contractid"><img src="img/customer.gif" style="float:left;padding-left:-5px;margin-top:3px;"><span style="float:left;margin-left:5px;">{{c.clientname}}-{{c.contracname}}</span></a>
 </td>

<td v-if="c.contracstate==0"><div style="margin-left:20px;" >审核中</div></td>
<!-- <td v-if="i.itstate==1"><div style="margin-left:20px;" >执行中</div></td>
<td v-if="i.itstate==2"><div style="margin-left:20px;" >已关闭</div></td> -->
<td>{{c.username}}</td>
<td>{{c.signingdate}}</td>
</tr>




</tbody> 
<tr>
 			<td colspan="8" align=center> 
 			
 			
 			
 				 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a> 
 			</td>
 		</tr>

</table>

   		
<script language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../img/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</script>
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
		      contract:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(pageNumber){
		              var url = '/contract/selectContractState';
		             this.$http.post(url,{pageNum:pageNumber},{emulateJSON:true}).then(function(res){
		                this.contract=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
		page.execute(1);
		})


</script>

