<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>车辆管理 - Colloa</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<LINK href="BackJsp/gm/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/gm/css/view.css" rel="stylesheet">
    <SCRIPT src="BackJsp/gm/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/gm/js/view.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/gm/js/Vue.js"></SCRIPT>
    <SCRIPT src="BackJsp/gm/js/vue-resource.min.js"></SCRIPT>
    <SCRIPT src="../../assets/js/jquery-2.0.3.min.js"></SCRIPT>
    <style>
       #tt td{
          height:30px; 
       }
    </style>
  </head>
  <body style="position:relative;padding-top:15px;padding-left:30px;">
  <span id="app">
 <TABLE  border="0" cellspacing="0" cellpadding="0">
 
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/gm/img/menu.png"/><span style="margin-left:7px;">会议室管理</span></H1>
          <button id="save" class="btn" style="position:absolute;right:10px;width:150px;margin-left:800px;padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>登记</button>
           </TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
      <DIV id="colloaMenu2">
      <a class=textHighlight href=''><img border=0 src='BackJsp/gm/img/folder.png'> 车辆列表</a>
      <a  href=''><img border=0 src='BackJsp/gm/img/folder.png'> 用车申请</a>
      <a  href=''><img border=0 src='BackJsp/gm/img/folder.png'> 车辆保险</a>
      <a  href=''><img border=0 src='BackJsp/gm/img/folder.png'> 车辆维修保养</a>
      <a  href=''><img border=0 src='BackJsp/gm/img/folder.png'> 车辆年检</a>
      <a  href=''><img border=0 src='BackJsp/gm/img/folder.png'> 车辆加油</a>
      <a  href=''><img border=0 src='BackJsp/gm/img/folder.png'> 车辆事故</a>
      </DIV>
      <DIV id="colloaContent2">
      <TABLE  class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
          <TH width="400px">名称：</TH>
          <TH>牌号：</TH>
          <TH>下次年检日期：</TH>
          <TH>保险截止日期：</TH>
          <TH>上次保养日期：</TH>
          <TH>状态</TH></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="car in applys">
          <TD>{{car.cname}}</TD>
          <TD>{{car.cmarkname}}</TD>
          <TD>{{car.casdate}}</TD>
          <TD>{{car.cinsurancedate}}</TD>
          <TD>{{car.cmaintaindate}}</TD>
          <TD>{{car.cstate}}</TD>
         </TR>
</TBODY></TABLE>
<br/><span style="margin-left:100px">
 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a>
 <a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a>
 <span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span>
 <a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a>
 <a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
</span>
</span>
</DIV></TD></TR></TBODY>
</TABLE>
<!-- 分页 -->
</span>
</BODY></HTML>
<script>
     $(function(){
     $("#save").click(function(){
        window.location.href="BackJsp/gm/caradd.jsp"
     }) 
       var load=new Vue({
            el:'#app',
            data:{
               applys:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="/car/getAllCar";
                 this.$http.post(url,{pageNum:pageNum},{emulateJSON:true}).then(function(res){
                     this.applys=res.body.list
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