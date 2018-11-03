<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>岗位调动申请</title>
    
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
<form id="subform" action="Transfer/savePlay" method="post">

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
  <input id="e.dbf.subject" name="theme" class="fieldEditable" value="岗位调动申请-${CurrentUser.uname}  <%=new Date().toLocaleString() %>"></td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">
   <input type="text" style="border:0px" readonly="true" value="填单" name="status"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">
   <input type="text"  style="border:0px" name="dutypeople" readonly="true" value="${superUser.username}" /></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;结束时间:</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
<div onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/&lt;\/?.+?&gt;/g,&#39;&#39;);" id="e.dbf.endTime" class="fieldEditable" contenteditable="true">&nbsp;</div></td></tr></tbody></table>
<div>&nbsp;</div>
<div style="TEXT-ALIGN: center"><strong><span style="FONT-SIZE: 20px">岗位调动申请单</span></strong></div>
<div>

<table class="tableListBorder" style="border-layout: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="150">
<col>
<col width="150">
<col width="320"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请人</td>
<td id="dbf.operator" dbf.type="required"  dbf.value="李萌"> 
  <input id="e.dbf.text4" name="applypeople" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>入职日期</td>
<td id="入职日期" dbf.type="date,required" dbf.source="date">
  <input id="e.dbf.text4" name="entrydate" class="fieldEditable">
</td></tr>
<tr>
<td style="BACKGROUND-COLOR: lightyellow" dbf.type="" dbf.source="">&nbsp;</td>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" dbf.type="" dbf.source="">部门</td>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" dbf.type="" dbf.source="">岗位</td>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" dbf.type="" dbf.source="">备注</td></tr>
</span>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>由（现）</td>
<td id="dbf.text3" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034" dbf.value="销售部"> 
    <select id="dept1"   name="oldpart" style="border:0px;font-size:14px;width:300px;height:25px;">
	    <option  v-for="dept in depts" :value="dept.deptname">{{dept.deptname}}</option>
	</select>
</td>
<td id="dbf.text4" dbf.type="required" dbf.source="">
  <input id="e.dbf.text4" name="oldpost" class="fieldEditable">
</td>
<td id="现备注" dbf.type="" dbf.source="">
  <input id="e.现备注" name="field1" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>至（新）</td>
<td id="dbf.division" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
    <select  id="dept2"  name="newpart" style="border:0px;font-size:14px;width:300px;height:25px;">
	    <option v-for="dept in depts" :value="dept.deptname">{{dept.deptname}}</option>
	</select>
</td>
<td id="dbf.positionX" dbf.type="required" dbf.source="">
  <input id="e.dbf.positionX" name="newpost" class="fieldEditable"></td>
<td id="新备注" dbf.type="" dbf.source="">
  <input id="e.新备注" name="field2" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>调动原因</td>
<td id="调动原因" colspan="3" dbf.type="required" dbf.source="">
  <textarea id="e.调动原因" name="cause" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>调动类型</td>
<td colspan="3">
  <input id="dbf.text5" type="radio" value="正式调动" name="genre" autocomplete="off">正式调动 
  <input id="dbf.text5" type="radio" value="临时借调" name="genre" autocomplete="off">临时借调 
  <input id="dbf.text5" type="radio" value="晋升" name="genre" autocomplete="off">晋升 
  <input id="dbf.text5" type="radio" value="降职" name="genre" autocomplete="off">降职
</td>
</tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>现部门主管意见</td>
<td id="现部门主管意见" style="HEIGHT: 80px" colspan="3" dbf.type="required" dbf.source="">
  <textarea id="e.调动原因" name="oldsuperiorremark" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>新部门主管意见</td>
<td id="新部门主管意见" style="HEIGHT: 80px" colspan="3" dbf.type="required" dbf.source="">
  <textarea id="e.调动原因" name="newsuperiorremark" class="fieldEditable" style="HEIGHT: 80px"></textarea>
</td></tr>
<tr style="height:30px">
<td style="TEXT-ALIGN: center">人事处理</td>
<td colspan="3" dbf.type="" dbf.source=""><input disabled="" id="人事处理" type="checkbox" name="人事处理">人事手续已经办理 <input disabled="" id="人事处理" type="checkbox" name="人事处理">信息系统已经变更（请人事专员或系统管理员在本系统的【员工管理】模块中变更员工信息）</td></tr></tbody></table></div>
<div>&nbsp;</div>
</form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form><br><div id="_vWorkflowActionsShow" align="right">
<a class="button" id="sub" href="javascript:" >提交现部门主管审批</a>
<a class="button" id="ret" href="javascript:">取消</a></div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?703170&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>

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
  var deptVue=new Vue({
             el:'#dept1',
             data:{
               depts:null
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                 })
                 }
             }
       })
         var deptVue2=new Vue({
             el:'#dept2',
             data:{
               depts:null
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                 })
                 }
             }
       })
       deptVue.getAll();
       deptVue2.getAll();
      $("#sub").click(function(){
         $("#subform").submit();
      
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/transfer.jsp";
      })
</script>
