<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>调休</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
    <style>
       #tt td{
          height:30px; 
       }
    </style>
  </head>
  <body style="padding-top:15px;padding-left:30px;">
 <TABLE  border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">考勤管理</span></H1>
 <button id="save" class="btn" style="position:absolute;right:10px;width:150px;margin-left:800px;padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>休假申请</button>
                        </TD>
          <TD align="right" id="oWorkflowList"></TD></TR></TBODY></TABLE><BR>
      <DIV id="colloaMenu2">
      <A href="BackJsp/hcq/checking.jsp"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 出差申请</A>
     <!--  <A  href="BackJsp/hcq/overtime.jsp"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 加班申请</A> -->
       <A href="BackJsp/hcq/leave.jsp" class="textHighlight"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 请休假申请</A>
      <A href="BackJsp/hcq/check.jsp"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 考勤记录</A>
      <A href="BackJsp/hcq/LeaveResources.jsp"><IMG 
      src="BackJsp/hcq/img/folder.png" border="0"> 调休资源查询</A></DIV>
      <DIV id="colloaContent2">
<SCRIPT language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=703220&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==110) workflowListOne("workflow.aspx","招聘申请*",703110,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==120) workflowListOne("workflow.aspx","入职申请*",703120,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==150) workflowListOne("workflow.aspx","转正申请*",703150,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==170) workflowListOne("workflow.aspx","岗位调动申请*",703170,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==190) workflowListOne("workflow.aspx","离职申请*",703190,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("workflow.aspx","出差申请*",703210,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==210) workflowListOne("finder.aspx","查找",703215,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("workflow.aspx","外出申请*",703220,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==220) workflowListOne("finder.aspx","查找",703225,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("workflow.aspx","加班申请*",703230,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==230) workflowListOne("finder.aspx","查找",703235,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("workflow.aspx","请休假申请*",703240,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==240) workflowListOne("finder.aspx","查找",703245,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("workflow.aspx","调休申请*",703250,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==250) workflowListOne("finder.aspx","查找",703255,"<i class='fa fa-search fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==510) workflowListOne("workflow.aspx","劳动合同登记*",703510,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==520) workflowListOne("workflow.aspx","员工培训安排*",703520,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==540) workflowListOne("workflow.aspx","员工生日关怀*",703540,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==550) workflowListOne("workflow.aspx","员工专项福利*",703550,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==650) workflowListOne("workflow.aspx","月度绩效考核单*",703650,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==660) workflowListOne("workflow.aspx","季度绩效考核单*",703660,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==670) workflowListOne("workflow.aspx","年度绩效考核单*",703670,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);if(stype==690) workflowListOne("workflow.aspx","奖励和处罚申请*",703690,"<i class='fa fa-plus fa-lg'></i>",703220,sObjects,bPortal,bSelf);}</SCRIPT>

<SCRIPT language="javaScript">workflowList(220);</SCRIPT>
       <span id="app">
      <TABLE  class="tableList" border="0" cellspacing="0" cellpadding="0">
        <THEAD>
        <TR>
          <TH>主题</TH>
          <TH>申请人</TH>
          <TH>所属部门</TH>
          <TH>请假时间</TH>
          <TH>类型</TH></TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="apply in applys">
          <TD><A :href="'Leave/detailInfo/'+apply.leaveid">
                 <img v-if="apply.status=='结束'" width="18" src="BackJsp/hcq/img/ico2.png"/>
                 <img v-else width="18" src="BackJsp/hcq/img/ico1.png"/>
             {{apply.theme}}</A></TD>
          <TD>{{apply.applydate}}&nbsp;</TD>
          <TD>{{apply.dept}}&nbsp;</TD>
          <TD>{{apply.begindate}} ~ {{apply.field2}}</TD>
          <TD>{{apply.leavetype}}</TD>
         </TR>
</TBODY></TABLE>
<br/><span style="margin-left:100px">
 <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
</span>
</span>
</DIV></TD></TR></TBODY>
</TABLE>
<!-- 分页 -->
</BODY></HTML>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
     $("#save").click(function(){
        window.location.href="BackJsp/hcq/leaveApply.jsp"
     })
       var load=new Vue({
            el:'#app',
            data:{
               applys:null,
               pageInfo:null
            },methods:{
               execute:function(pageNum){
                 var url="/Leave/getAll";
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
