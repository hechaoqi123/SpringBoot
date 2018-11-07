<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考勤管理</title>
    
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
                        <span style="margin-left:7px;">考勤审批</span></h1></td><td id="oWorkflowList" align="right">
   </td></tr></tbody></table><br>
    <!-- 分类 -->
       <div id="colloaMenu2" >
	   <span id="dataCount">
	   <a  class="a" style="color:#000" @click="criteria(0,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 出差申请
  	  <!--  <a class="a" @click="criteria(1,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 加班申请
	   </a> -->
	   <a class="a" @click="criteria(2,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 请休假申请
	   </a>
	   </span>
	 </div>
	 <!-- 数据 -->
<div id="colloaContent2">
<span id="app">

<!-- 出差申请 -->

<table  v-show="tactics==0"  style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr>
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>申请人</TH>
          <TH>所属部门</TH>
          <TH>外出地点</TH>
          <TH>时间段</TH></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="apply in datas">
          <TD><A :href="'Evection/detail/'+apply.evectionid">
                <img v-if="apply.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
				<img v-else-if="apply.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
				<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
             {{apply.theme}}</A></TD>
          <TD>{{apply.applypeople}}&nbsp;</TD>
          <TD>{{apply.dept}}&nbsp;</TD>
          <TD>{{apply.destination}}</TD>
          <TD>{{apply.evectiondate}} ~ {{apply.evectionenddate}}</TD>
         </TR>
</TBODY></TABLE>
<!-- 加班申请 -->
 <table v-show="tactics==1" style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList">
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>申请人</TH>
          <TH>所属部门</TH>
          <TH>加班时间</TH>
          <TH>加班时长</TH></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="apply in datas">
          <TD><A :href="'Overtime/detail/'+apply.overtimeid">
                <img v-if="apply.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
				<img v-else-if="apply.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
				<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
             {{apply.theme}}</A></TD>
          <TD>{{apply.applypeople}}&nbsp;</TD>
          <TD>{{apply.dept}}&nbsp;</TD>
          <TD>{{apply.begindate}} ~ {{apply.enddate}}</TD>
          <TD>{{apply.field1}}</TD>
         </TR>
</TBODY></TABLE>
<!-- 请休假申请 -->
<table v-show="tactics==2" style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList">
          <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>申请人</TH>
          <TH>所属部门</TH>
          <TH>请假时间</TH>
          <TH>类型</TH></TR></THEAD>
 <TBODY id="tt" style="font-size:14px;">
        <TR v-for="apply in datas">
          <TD><A :href="'Leave/detail/'+apply.leaveid">
                 <img v-if="apply.status=='结束'" width="18" src="BackJsp/hcq/img/ico2.png"/>
                 <img v-else width="18" src="BackJsp/hcq/img/ico1.png"/>
             {{apply.theme}}</A></TD>
          <TD>{{apply.applydate}}&nbsp;</TD>
          <TD>{{apply.dept}}&nbsp;</TD>
          <TD>{{apply.begindate}} ~ {{apply.field2}}</TD>
          <TD>{{apply.leavetype}}</TD>
         </TR>
</TBODY>
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
		      tactics:0//0:出差  1:加班  2:请休假申请  
		    },
		    methods:{
		        execute:function(PageNumber){ 
		           var status="填单";//默认查询填单状态的申请
	               if(dept=="总经办"){status="领导审批"};//查询状态为领导审批状态的申请
	               if(post=="超级管理员"){status=null}//查询所有申请
		           var url="";
		           //出差申请审批
		           if(this.tactics==0){url="Evection/queryBycriteria"
		               if(post=="人事主管"||post=="财务主管"||post=="营销主管"||post=="技术主管"||post=="总经理"){
		                this.$http.post(url,{pageNum:PageNumber,dutypeople:"主管审批报告",status:status},{emulateJSON:true}).then(function(res){
		                this.pageInfo=res.body
		                this.datas=res.body.list;
		                 })
		               }else{
		                this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		                this.pageInfo=res.body
		                this.datas=res.body.list;
                         })
		               }
		               
	               };
		             //加班审批
		           if(this.tactics==1){url="Overtime/queryBycriteria"
		               this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                })};
	                //请休假申请
		           if(this.tactics==2){url="Leave/queryBycriteria"
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
		    },methods:{
		        criteria:function(cri,event){//条件查询
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