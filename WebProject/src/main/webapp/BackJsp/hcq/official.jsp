<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>转正申请</title>
    
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
                        <span style="margin-left:7px;">招聘和配置</span></h1></td><td id="oWorkflowList" align="right">
  <span id="oWorkflowList1"><button id="save" class="btn" style="padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>转正申请</button></span></td></tr></tbody></table><br>
    <!-- 分类 -->
	<div id="colloaMenu2">
	   <a  href="BackJsp/hcq/recruit.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 招聘管理</a>
	   <a id="ruz"  href="BackJsp/hcq/entryPosition.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 入职管理</a>
	   <a class="textHighlight" href="BackJsp/hcq/official.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 转正管理</a>
	   <a href="BackJsp/hcq/transfer.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 岗位调动管理</a>
	   <a href="BackJsp/hcq/dimission.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 离职管理</a>
	 </div>
<div id="colloaContent2">
<span id="app">
<table style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>主题</th><th>申请人</th><th>所属部门</th><th>申请岗位</th><th>申请时间</th><th>转正日期</th></tr></thead>
<tbody>
<tr v-for="off in officials">
<td><img v-if="off.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'Official/detailInfo/'+off.officialid">{{off.theme}}</a></td><td>{{off.proposer}}</td><td>{{off.department}}&nbsp;</td><td>{{off.post}}</td><td>{{off.filingdate}}</td><td>{{off.officialdate}}</td></tr>
<tr>
</table><br/>
<!-- 分页 -->
<span style="margin-left:100px">
 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
</span>
</body></html>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
     $("#save").click(function(){
        window.location.href="BackJsp/hcq/officialApply.jsp"
     })
       var load=new Vue({
            el:'#app',
            data:{
               officials:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="/Official/getAll";
                 this.$http.post(url,{pageNum:pageNum},{emulateJSON:true}).then(function(res){
                     this.officials=res.body.list
                     this.pageInfo=res.body
                 })
               }
            }
       })
     load.execute(1);
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
  })
</script>