<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <script src="BackJsp/gm/js/Vue.js"></script>
    <script src="BackJsp/gm/js/vue-resource.min.js"></script>
    <script src="../../assets/js/jquery-2.0.3.min.js"></script>
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
      <A href="BackJsp/gm/metting.jsp"><IMG 
      src="BackJsp/gm/img/folder.png" border="0"> 会议室列表</A>
      <A href="BackJsp/gm/reserve.jsp"><IMG 
      src="BackJsp/gm/img/folder.png" border="0"> 会议室预定</A>
      </DIV>
      <DIV id="colloaContent2">

<!-- <SCRIPT language="javaScript">workflowList(220);</SCRIPT> -->
      <TABLE  class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
          <TH width="400px">名称</TH>
          <TH>编号</TH>
          <TH>容量</TH>
          <TH>位置</TH>
          <TH>内部设备</TH>
          <TH>状态</TH>
          <TH>操作</TH></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="metting in applys">
          <TD><A href="javascript:showItem('事务','1000539');">
                 <img v-else width="18" src="BackJsp/gm/img/ico1.png"/>
              {{metting.mname}}</A></TD>
          <TD>{{metting.mid}}</TD>
          <TD>{{metting.mcapacity}}</TD>
          <TD>{{metting.mlocation}}</TD>
          <TD>{{metting.mfacility}}</TD>
          <TD>{{metting.mstate}}</TD>
          <TD><a @click="remove(metting.mid)" href="javascript:">删除</a></TD>
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
       $("#save").click(function(){
         window.location.href="BackJsp/gm/mettingadd.jsp "
       }) 
       var load=new Vue({
            el:'#app',
            data:{
               applys:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="metting/getAllMetting";
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
     /*  var page=new Vue({
		    el :'#app',
		    data:{
		      users:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(PageNumber){
			        pageUtil.part=0;//设置全部加载
			        pageUtil.execute(PageNumber);//加载数据
		        },remove:function(mid){
		           if(confirm("您确定要删除？")){
		               var url="metting/remove";
		               this.$http.post(url,{mid:mid},{emulateJSON:true}).then(function(res){})
		               flashPage();
		           }
		        }
		    }
		}) */
  })
</script>
      
