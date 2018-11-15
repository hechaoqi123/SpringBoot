<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>招聘申请</title>
    
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
  <body id="colloaBody" style="margin-top:-10px;">
   <form id="subform" action="Recruit/savePlay" method="post">
  <table style="font-size:14px;min-width:800px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required"><input id="e.dbf.subject" class="fieldEditable" name="theme" value="招聘申请-${CurrentUser.uname} <%= new Date().toLocaleString()%>"/></td>
<td colspan="2" style="TEXT-ALIGN: right">&nbsp;</td>
</tr>
<tr>
<td style="text-align:right">步骤:</td>
<td><span id="mapping.dbf.procXSource"><input type="text" style="border:0px" readonly="true" value="填单" name="status"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <span id="mapping.dbf.responsorSource">
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div style="TEXT-ALIGN: center;margin-top:-10px"><span><b style="FONT-SIZE:20px">招聘申请单</b></span></div></div>
<div>
<table id="dept" class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="150">
<col width="300">
<col width="150">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN:center"><span style="COLOR:rgb(255,0,0)">*</span>申请人</td>
<td id="dbf.opera">
  <input id="e.dbf.subject" readonly="true"  value="${CurrentUser.uname}" class="fieldEditable" name="principal" /></td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td id="dbf.division" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
    <select class="fieldEditable"	  id="dept" v-model="dept"  name="department" @change="getPost()" style="border:0px;font-size:14px;width:355px;height:25px;">
    <option v-for="dept in depts"  :value="dept.deptname">{{dept.deptname}}</option>
  </select> </td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>需求岗位</td>
<td>
   <select class="fieldEditable" style="border:0px;font-size:14px;width:355px;height:25px;" name="post" id="aaaa">
   </select>
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>申请时间</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
<div>
  <input id="currentDate" name="other" class="fieldEditable"/>
</div></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>需求人数</td>
<td id="dbf.number0" dbf.type="number,required" dbf.source="">
  <input id="e.dbf.positionX" name="peoplenumber" class="fieldEditable"/>
</td>
<td style="TEXT-ALIGN: center"><span style="COLOR: rgb(255,0,0)">*</span>希望到岗日期</td>
<td id="dbf.time0" dbf.type="date,required" dbf.source="date"> 
  <input id="e.dbf.positionX" name="enddate" class="fieldEditable"/>
</td></tr>
<tr>
<td style="TEXT-ALIGN: center">招聘原因说明</td>
<td id="招聘原因说明" colspan="3" dbf.type="" dbf.source=""><textarea id="e.招聘原因说明" class="fieldEditable" name="cause" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center">工作内容及职责</td>
<td id="工作内容及职责" colspan="3" dbf.type="" dbf.source=""><textarea id="e.工作内容及职责" name="obligation" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
<tr>
<td style="TEXT-ALIGN: center">外语要求</td>
<td id="外语要求"><input id="e.外语要求" name="language" class="fieldEditable"></td>
<td style="TEXT-ALIGN: center">工作地点</td>
<td id="工作地点"><input id="e.工作地点" name="workspace" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center">年龄</td>
<td id="年龄"><input id="e.年龄" name="age" class="fieldEditable"></td>
<td style="TEXT-ALIGN: center">性别</td>
<td>&nbsp;<input id="性别" type="radio" value="男" name="sex">男 <input id="性别" type="radio" value="女" name="sex">女 <input id="性别" checked="" type="radio" value="不限" name="sex">不限</td></tr>
<tr>
<td style="TEXT-ALIGN: center">学历</td>
<td id="学历" dbf.type="">
  <input id="e.dbf.positionX" name="education" class="fieldEditable"/>
</td>
<td style="TEXT-ALIGN: center">专业</td>
<td id="专业"><input id="e.专业" name="major" class="fieldEditable"></td></tr>
<tr>
<td style="TEXT-ALIGN: center">工作经验</td>
<td id="工作经验" colspan="3" dbf.type="" dbf.source=""><textarea id="e.工作经验" name="experience" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr>
</tr></tbody></table></div>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
</table></form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form>
<br>
<div id="_vWorkflowActionsShow" align="right">
<a id="sub" class="button" href="javascript:">提交主管审批</a>
<a id="ret" class="button" href="javascript:">取消</a></div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?703110&#39;);return false;"></a></div>【处理过程】</div>

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
               depts:null,
               dept:"人事部"
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                   
                     var currentDate=new Date().toLocaleDateString();
                      $("#currentDate").val(currentDate) 
                 })
                 },getPost:function(){
                   postVue.get(this.dept);
                 }
             }
       })
       deptVue.getAll();
  })
   var postVue=new Vue({
         el:'#post',
         data:{
           post:null
         },created:function(){
            this.get("人事部")
         },methods:{
           get:function(dept){
           var url="/post/getPost";
                this.$http.post(url,{dept:dept},{emulateJSON:true}).then(function(res){
                 this.post=res.body
                 var html="";
                 $("#aaaa").html(html)
                 for(var i=0;i<res.body.length;i++){
                    html+=" <option value='"+res.body[i].pname+"'>"+res.body[i].pname+"</option>"      
                 }
                 $("#aaaa").append(html)
               })
           }
         }
      })
      $("#sub").click(function(){
         $("#subform").submit();
      
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/recruit.jsp";
      })
</script>
