<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>绩效管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
  </head>
  
  <body style="padding-top:15px;padding-left:30px;">
  
  <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:10px;">绩效管理</span>
   <button id="save" class="btn" style="position:absolute;right:10px;width:150px;margin-left:800px;padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>绩效考核</button>

                        </H1></TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
      <DIV id="colloaMenu2"><A class="textHighlight" href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=703600&amp;name=%u7ee9%u6548%u7ba1%u7406&amp;ex.sid=703650"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 月度绩效考核</A><A href="javascript:"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 季度绩效考核</A><A href="javascript:"><IMG 
      src="BackJsp/hcq/img//folder.png" border="0"> 年度绩效考核</A></DIV>
      <DIV id="colloaContent2">
       <span id="app">
      <TABLE class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>所属部门</TH>
          <TH>被考核人</TH>
          <TH>主管评分</TH>
          <TH>考核结果</TH></TR></THEAD>
        <TBODY>
        <TR v-for="p in officials">
          <TD><A href="javascript:showItem('事务','1000967');">
          <img width="18" src="BackJsp/hcq/img/ico1.png"/>{{p.field20}}
          </A></TD>
          <TD>{{p.dept}}</TD>
          <TD>{{p.applypeople}}</TD>
          <TD>0</TD>
          <TD>{{p.personnelresult}}</TD></TR>
     </TBODY></TABLE>
    <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
     </DIV></TD></TR></TBODY></TABLE>
</BODY></HTML>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
     $("#save").click(function(){
        window.location.href="BackJsp/hcq/PersonnelApply.jsp"
     })
      $("#save").hover(function(){
        $(this).css("border","1px solid #5ea6eb")
     },function(){
       $(this).css("border","1px solid #E0E0E0")
     })
       var load=new Vue({
            el:'#app',
            data:{
               officials:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="/Performance/getAll";
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
