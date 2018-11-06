<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>出差申请</title>
    
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
<body id=colloaBody>
<form id="subform" action="Evection/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0><tr valign=top><td>&nbsp;</td><td id=colloaForm><div class=formTaskflowContainer><form class=formTaskflow><TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=120></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="required">
  <INPUT id=e.dbf.subject name="theme" class=fieldEditable value="出差申请-${CurrentUser.uname} <%=new Date().toLocaleString()%>">
</TD>
<TD style="TEXT-ALIGN: right">&nbsp;</TD>
<TD>
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD colSpan=3><SPAN id=mapping.dbf.procXSource>
  <input type="text" style="border:0px" readonly="true" value="填单" name="status"/>
</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <SPAN id=mapping.dbf.responsorSource>
  <input type="text" style="border:0px" readonly="true"  name="dutypeople"/></SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <SPAN id=mapping.dbf.participantsSource></SPAN></TD></TR></TBODY></TABLE>
<DIV style="TEXT-ALIGN: center">&nbsp;</DIV>
<DIV style="TEXT-ALIGN: center"><SPAN style="FONT-SIZE: 20px"><STRONG>出差申请单</STRONG></SPAN></DIV>
<DIV>
<TABLE class=tableListBorder style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=100>
<COL width=180>
<COL width=100>
<COL width=250>
<COL width=100>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请人</TD>
<TD>
 <INPUT id=e.dbf.subject name="applypeople" class=fieldEditable >
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division>
  <select id="dept"  name="part" style="border:0px;font-size:14px;width:250px;height:25px;">
    <option v-for="dept in depts" v-bind:value="dept.deptname">{{dept.deptname}}</option>
  </select>
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请时间</TD>
<TD id=dbf.time2 dbf.type="date,required" dbf.source="date">
   <INPUT id="currentDate" name="applydate" class=fieldEditable >
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>出差时间</TD>
<TD id=dbf.time0 dbf.type="date,required" dbf.source="datetime,editable">
   <INPUT id=e.dbf.subject name="evectiondate" class=fieldEditable >
</TD>
<TD style="TEXT-ALIGN: center" dbf.type="" dbf.source="">~</TD>
<TD id=dbf.time1 dbf.type="date,required" dbf.source="datetime,editable">
   <INPUT id=e.dbf.subject name="evectionenddate" class=fieldEditable >
</TD>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>目的地</TD>
<TD id=dbf.text5 dbf.type="required" dbf.source="">
  <INPUT id=e.dbf.text5 name="destination" class=fieldEditable>
</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>出差事由</TD>
<TD id=出差事由 colSpan=5 dbf.type="required" dbf.source="">
   <TEXTAREA id=e.出差事由 class=fieldEditable name="cause" style="HEIGHT: 80px"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center">交通工具</TD>
<TD colSpan=5>&nbsp;
   <INPUT id=交通工具 type="radio" value="汽车" name="traffic">汽车&nbsp;&nbsp;
   <INPUT id=交通工具 type="radio" value="火车" name="traffic">火车&nbsp;&nbsp;
   <INPUT id=交通工具 type="radio" value="飞机" name="traffic">飞机&nbsp;&nbsp;
   <INPUT id=交通工具 type="radio" value="轮船" name="traffic">轮船&nbsp;&nbsp;
   <INPUT id=交通工具 type="radio" value="私家车" name="traffic">私家车&nbsp;&nbsp;
   </TD></TR>
<TR>
<TD style="TEXT-ALIGN: center">出差报告</TD>
<TD id=出差汇报 style="HEIGHT: 150px; VERTICAL-ALIGN: top" colSpan=5 dbf.type="" dbf.source="">&nbsp;</TD></TR>
<TR>
<TD style="TEXT-ALIGN: center">出差结果</TD>
<TD colSpan=5>&nbsp;<INPUT disabled id=出差结果 type=radio value="" name=出差结果>目标达成&nbsp; <INPUT disabled id=出差结果 type=radio name=出差结果>目标基本达成 <INPUT disabled id=出差结果 type=radio name=出差结果>目标未达成</TD></TR></TBODY></TABLE></DIV>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
</TBODY></TABLE>
<DIV>&nbsp;</DIV></form></div>
<span style="margin-left:700px">
 <a id="sub" class="button" href="javascript:">提交主管审批</a>
 <a id="ret" class="button" href="javascript:">取消</a>
</span><br/><br/>

<table border=0 cellPadding=0 cellSpacing=0 style="table-layout:fixed;"><col width=60%><col width=2%><col><tbody><tr valign=top><td class=boxBorder>
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen('../flow/view1.htm?703210');return false;"></a></div>【处理过程】</div>

</td><td></td><td>
<div class=boxBorder><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class=boxBorder>
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>
<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table>
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
       $("#currentDate").val(new Date().toLocaleDateString())
      $("#sub").click(function(){
         $("#subform").submit();
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/hcq/checking.jsp";
      })
        })
</script>
