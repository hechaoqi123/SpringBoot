<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>招聘和配置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
  </head>
  <body style="padding-top:15px;padding-left:10px;">
  <table cellpadding="0" cellspacing="0" border="0"><tbody><tr><td>
  <h1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">费用报销</span></h1></td><td id="oWorkflowList" align="right">
   </td></tr></tbody></table><br>
    <!-- 分类 -->
      
	<div id="colloaMenu2" >
	   <span id="dataCount">
	   <a  class="a" style="color:#000" @click="criteria(0,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 差旅费报销
	     <!-- <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{recruit}}</SPAN> --></a>
	   <a class="a" @click="criteria(1,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 费用报销
	     <!-- <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{entry}}</SPAN> -->
	     </a>
	  
	   </span>
	 </div>
	 <!-- 数据 -->
<div id="colloaContent2">
<span id="app">

<!-- 差旅费报销 -->

<table  v-show="tactics==0"  style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr>
<th>主题</th>
<th>出差人</th>
<th>所属部门</th>
<th>报销费用</th>
<th>报销日期</th>
</tr></thead>
<tbody>
<tr v-for="recruit in datas">
<td>
   
<img v-if="recruit.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'CostManager/detail/'+recruit.costid">{{recruit.theme}}</a></td>
	<td>{{recruit.username}}</td>
	<td>{{recruit.dept}}&nbsp;</td>
	<td style="color:#E22018">{{recruit.total}}</td>
	<td>{{recruit.submitdate}}</td>
</tr>
<tr>
</table>
<!-- 费用报销 -->
<table  v-show="tactics==1"  style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr>
<th width="270">主题</th>
<th>报销人</th>
<th>所属部门</th>
<th width="130">报销费用</th>
<th>报销日期</th>
</tr></thead>
<tbody>
<tr v-for="recruit in datas">
<td>
   
<img v-if="recruit.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'Baoxiao/detail/'+recruit.baoxiaoid">{{recruit.theme}}</a></td>
	<td>{{recruit.username}}</td>
	<td>{{recruit.dept}}&nbsp;</td>
	<td style="color:#E22018">{{recruit.total}}</td>
	<td>{{recruit.baoxiaodate}}</td>
</tr>
<tr>
</table>

<input id="aa" style="display:none" value="${detail.dependence}"/>
<input id="bb"  style="display:none" value="${detail.position}"/>
<br/>
<!-- 分页 -->
<span  style="margin-left:100px"><a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
</span></div>
</body></html>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
   //封装全部检索                
    var dept=$("#aa").val(); 
    var post=$("#bb").val();  
		  var page=new Vue({
		    el :'#app',
		    data:{
		      datas:null,
		      pageInfo:null,
		      tactics:0
		    },
		    methods:{
		        execute:function(PageNumber){
		          var status="填单";
		           var url="";
		           if(post=="超级管理员"){status=null}
		           //差旅费报销
		           if(this.tactics==0){url="CostManager/queryBycriteria"
			           this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                })};
		             //费用报销
		           if(this.tactics==1){url="Baoxiao/queryBycriteria"
		               this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                })};
	      
		     }
		     }
		})
		//封装数据量及条件检索
		var dataCount=new Vue({
		    el:"#dataCount",
		    data:{
		       recruit:0,//全部数量
		       entry:0,//在职员工数量
		       office:0,
		       transfer:0,
		       dimission:0
		    },methods:{
		      getAll:function(){//检索数据量
		          var url="Recruit/getCount";
		          this.$http.post(url).then(function(res){
		              var array=res.body; 
		               this.recruit=array[0];
		               this.entry=array[1];
		               this.office=array[2];
		               this.transfer=array[3];
		               this.dimission=array[4];
		          })
		       },criteria:function(cri,event){//条件查询
		           page.tactics=cri;
		           target=event.currentTarget;
		           removeClass();
		           $(target).css("color","#000")
		           page.execute(1)
		       }
		    }
		})
		function removeClass(){
		  $(".a").css("color","");
		}
		//调用检索
        page.execute(1);//检索数据
        dataCount.getAll();//检索数据量
     
     
     
     //css
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
  })
</script>