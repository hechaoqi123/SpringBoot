<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>休假申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">  
    <script src="BackJsp/hcq/js/viewCn.js"></script>
    <script src="BackJsp/hcq/js/utility.js"></script> 
    <script src="BackJsp/hcq/js/view.js"></script>  
    <script src="BackJsp/hcq/js/jquery-2.0.3.min.js"></script>  
    <style>
       *{
         font-size:14px;
       }
    </style>
  </head>
<body id="colloaBody">
<form id="subform" action="Leave/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">
  <input id="e.dbf.subject" name="theme" class="fieldEditable" value="请休假申请-${CurrentUser.uname} <%=new Date().toLocaleString() %>">
</td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td>
</td></tr>
<tr>
<td style="TEXT-ALIGN: right">步骤：</td>
<td><span id="mapping.dbf.procXSource">
  <input type="text" style="border:0px" readonly="true" value="填单" name="status"/>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.responsorSource">
  <input type="text" style="border:0px" name="dutypeople" readonly="true" name="status"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>请休假申请单</strong></span></div>
<div>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col width="200">
<col width="120">
<col width="200">
<col width="120">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请人</td>
<td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX&gt;0 and name like &#39;%[!prompt]%&#39; order by name" dbf.key="1000071" dbf.value="李萌">
  <INPUT id=e.dbf.subject name="applydate"  class=fieldEditable>
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required!0,required" dbf.source="form.fieldSource.division" dbf.key="1000034">
  <select id="dept"  name="dept" style="border:0px;font-size:14px;width:250px;height:25px;">
    <option v-for="dept in depts" v-bind:value="dept.deptname">{{dept.deptname}}</option>
  </select></td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请时间</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
   <INPUT id="currentDate"  name="begindate"  class=fieldEditable>
</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>请休假时间</td>
<td id="dbf.time0" dbf.type="date,required" dbf.source="datetime,editable">
    <INPUT id=e.dbf.subject name="enddate" class=fieldEditable>
</td>
<td style="TEXT-ALIGN: center">～</td>
<td id="dbf.time1" dbf.type="date,required" dbf.source="datetime,editable">
   <INPUT id=e.dbf.subject name="field2" class=fieldEditable>
</td>
<td style="TEXT-ALIGN: center" dbf.type="date,required" dbf.source="datetime,editable">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>共计时长</td>
<td dbf.type="date,required" dbf.source="datetime,editable"><input id="dbf.number3" style="WIDTH: 40px" value="0" name="field3" dbf.type="number,required"> 天 </td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>请假类别</td>
<td colspan="5" style="height:30px;">
     <input id="dbf.text5" type="radio" value="事假" name="leavetype" autocomplete="off">事假&nbsp;&nbsp;
     <input id="dbf.text5" type="radio" value="病假" name="leavetype" autocomplete="off">病假&nbsp;&nbsp;
     <input id="dbf.text5" type="radio" value="年假" name="leavetype" autocomplete="off">年假&nbsp;&nbsp;
     <input id="dbf.text5" type="radio" value="婚假" name="leavetype" autocomplete="off">婚假&nbsp;&nbsp;
     <input id="dbf.text5" type="radio" value="产假" name="leavetype" autocomplete="off">产假&nbsp;&nbsp;
     <input id="dbf.text5" type="radio" value="丧假" name="leavetype" autocomplete="off">丧假&nbsp;&nbsp;
     <input id="dbf.text5" type="radio" value="调休" name="leavetype" autocomplete="off">调休</td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>请休假事由</td>
<td id="请休假事由" colspan="5" dbf.type="required" dbf.source="">
   <textarea id="e.请休假事由" name="cause" class="fieldEditable" style="HEIGHT: 80px"></textarea>
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">调休资源</td>
<td  colspan="5"  dbf.source="">
   <textarea name="field1" class="fieldEditable" style="HEIGHT: 30px"></textarea>
</td></tr>
</tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
</table></form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form>
</div><br>
<span style="margin-left:700px">
  <a id="sub" class="button" href="javascript:">提交主管审批</a>
  <a id="ret" class="button" href="javascript:">取消</a></span><br><br>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?703240&#39;);return false;"></a></div>【处理过程】</div>

</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body></html>
 <script src="BackJsp/hcq/js/Vue.js"></script>
 <script src="BackJsp/hcq/js/vue-resource.min.js"></script>
 <script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
  $(function(){
   var deptVue=new Vue({
             el:'#dept',
             data:{
               depts:null
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                   
                     var currentDate=new Date().toLocaleDateString();
                      $("#currentDate").val(currentDate) 
                 })
                 }
             }
       })
       deptVue.getAll();
       $("#sub").click(function(){
         $("#subform").submit();
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/leave.jsp";
      })
      $("#currentDate").val(new Date().toLocaleDateString())
      })
</script>