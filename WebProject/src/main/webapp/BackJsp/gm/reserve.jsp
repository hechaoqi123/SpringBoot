<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会议室管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/gm/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/gm/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/gm/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/gm/js/view.js" type="text/javascript"></SCRIPT>
    <script src="BackJsp/gm/js/Vue.js" type="text/javascript"></script>
    <script src="BackJsp/gm/js/vue-resource.min.js" type="text/javascript"></script>
    <script src="../../assets/js/jquery-2.0.3.min.js" type="text/javascript"></script>
    <style>
       #tt td{
          height:30px; 
       }
    </style>
  </head>
  <body style="position:relative;padding-top:15px;padding-left:30px;">
  <span id="pageUtil">
 <TABLE  border="0" cellspacing="0" cellpadding="0">
 
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/gm/img/menu.png"/><span style="margin-left:7px;">会议室管理</span></H1>
          <button @click="saved()" class="btn" style="position:absolute;right:10px;width:150px;margin-left:800px;padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>会议室预定</button>
           </TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
      <DIV id="colloaMenu2">
      <A href="BackJsp/gm/metting.jsp"><IMG 
      src="BackJsp/gm/img/folder.png" border="0"> 会议室列表</A>
      <A href="BackJsp/gm/reserve.jsp"><IMG 
      src="BackJsp/gm/img/folder.png" border="0"> 会议室预定</A>
      </DIV>
      <DIV id="colloaContent2">

<SCRIPT language="javaScript">workflowList(220);</SCRIPT>
      <TABLE  class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
            <th>主题</th>
            <th>申请人</th>
            <th>所属部门</th>
            <th>预定会议室</th>
            <th>开始时间</th>
            <th>结束时间</th></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="reserve in applys">
          <TD><A href="javascript:showItem('事务','1000539');">
                 <img v-if="reserve.status=='结束'" width="18" src="BackJsp/gm/img/ico2.png"/>
                 <img v-else width="18" src="BackJsp/gm/img/ico1.png"/>
              {{reserve.rmotif}}</A></TD>
          <TD>{{reserve.rproposer}}</TD>
          <TD>{{reserve.rdept}}</TD>
          <TD>{{reserve.rmetting}}</TD>
          <TD>{{reserve.rstarttime}}</TD>
          <TD>{{reserve.rfinishtime}}</TD>
         </TR>
</TBODY></TABLE>
<br/>
<div id="colloaPages">
    <span style="margin-left:100px">
	 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a>
	 <a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a>
	 <span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span>
	 <a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a>
	 <a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a>
	 </span>
</DIV></TD></TR></TBODY>
</TABLE>
</span>
<!-- 分页 -->
</BODY></HTML>
<script>  
     $(function(){
       var load=new Vue({
            el:'#pageUtil',
            data:{
               applys:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="reserve/getAllReserve";
                 this.$http.post(url,{pageNum:pageNum},{emulateJSON:true}).then(function(res){
                     this.applys=res.body.list
                     this.pageInfo=res.body
                 })
               },
                saved:function(){
                 window.location.href="BackJsp/gm/reserveadd.jsp ";
              }
            }
       })
        load.execute(1);
  })
</script>
      