<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
     <base href="<%=basePath%>">
<head>
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>制定工作计划* - Colloa</title>
  <link rel="shortcut icon" href="http://cloud.10oa.com/trial/images/colloa.ico">
  <link rel="stylesheet" href="<%=basePath%>BackJsp/wsq/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=basePath%>BackJsp/wsq/css/view.css">
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/viewCn.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/view.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/utility.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
<script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/config.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>BackJsp/wsq/css/editor.css">
<script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/zh-cn.js"></script>
<script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/styles.js"></script>
<script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/plugin.js"></script>


</head>
<body id="colloaBody">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0">
<tbody>
<tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer">
<form action="/plan/addAll" method="post" class="formTaskflow" id="myform">
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">制定计划</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;优先级: <input id="dbf.priority" type="radio" value="-1"  autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0"  autocomplete="off">中<input id="dbf.priority" type="radio" value="1"  autocomplete="off">高</td></tr></tbody></table>
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td style="FONT-SIZE: 20px; FONT-WEIGHT: bold; TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type="required"></td>
 <td><input name="pname" id="pname" value="请输入计划标题" class="pname" style="height: 40px; width:1000px; font-size: 20px; font-weight: bold; text-align: center;">


</td>
</tr>
</tbody>
</table>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="100">
<col width="350">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center">计划分类</td>
<td>
  <input onclick="onTypeChange(10);" id="dbf.psid2" type="radio" value="10" name="type" autocomplete="off">年度
  <input onclick="onTypeChange(20);" id="dbf.psid2" type="radio" value="20" name="type" autocomplete="off">季度
  <input onclick="onTypeChange(30);" id="dbf.psid2" type="radio" value="30" name="type" autocomplete="off">月度 
  <input onclick="onTypeChange(40);" id="dbf.psid2" type="radio" value="40" name="type" autocomplete="off">周
  <input onclick="onTypeChange(100);" id="dbf.psid2" type="radio" value="100" name="type" autocomplete="off">项目
   <input onclick="onTypeChange(0);" id="dbf.psid2" checked="" type="radio" value="0" name="type" autocomplete="off">其他</td>
<td style="TEXT-ALIGN: center">从属于</td>
<td ><select style="width:445px; border: #F4F4F4" class="planname" id="planname" name="planname"></select></td>
</tr>
<tr>
<td style="TEXT-ALIGN: center">创建人</td>
<td><select style="width:342px; border: #F4F4F4" class="username" id="username" name="detailld"></select></td>
<td style="TEXT-ALIGN: center">所属部门</td>
<td><select style="width:445px; border: #F4F4F4" class="deptname" id="deptName" name="deptid"></select></td>
</tr>
<tr>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>开始时间</td>
<td ><input style="width:338px; border: #F4F4F4" name="ksdate" class="ksdate" id="ksdate"></td>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>结束时间</td>
<td ><input style="width:445px; border: #F4F4F4" name="jsdate" class="jsdate" id="jsdate"></td>
</tr>
<tr>
<td style="TEXT-ALIGN: center">评审人</td>
<td ><select style="width:342px; border: #F4F4F4" class="knmae" id="kname" name="kname"></select></td>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>执行人</td>
<td><select style="width:445px; border: #F4F4F4" class="letname" id="letname" name="letname"></select></td>
</tr>
<tr>
<td id="tableDetail" class="lllll" style="VERTICAL-ALIGN: top;height:200px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px" colspan="4" dbf.source="" dbf.type="">
   <table id="tt" style="border:1px solid #F4F4F4">    
         <tr>
            <td style="width:100px">序号</td>
            <td>计划事项</td>
            <td>执行人</td>
            <td>执行时间</td>
         </tr>
         <tr>
             <td>1</td>
              <td><input style="border: #F4F4F4"  name="list[0].plname"></td>
              <td><input style="border: #F4F4F4 " name="list[0].plperform"></td>
              <td><input style="border: #F4F4F4"  name="list[0].performdate"></td>
         </tr>
         <tr>
              <td>2</td>
              <td><input style="border: #F4F4F4"  name="list[1].plname"></td>
              <td><input style="border: #F4F4F4 " name="list[1].plperform"></td>
              <td><input style="border: #F4F4F4"  name="list[1].performdate"></td>
         </tr>
         <tr>
              <td>3</td>
              <td><input style="border: #F4F4F4"  name="list[2].plname"></td>
              <td><input style="border: #F4F4F4 " name="list[2].plperform"></td>
              <td><input style="border: #F4F4F4"  name="list[2].performdate"></td>
         </tr>
         
   </table>
</td>
</tr>

</tbody></table>

   <input style="margin-left:960px;height:30px;width:50px" type="submit" value="保存" id="add"/>


</form></div>
<br>

<br>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
<colgroup>
<col width="60%"><col width="2%">
<col>
</colgroup>
<tbody>
<tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?132010&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
   
</body></html>
<script type="text/javascript" src="BackJsp/wsq/js/jquery-1.8.3.min.js"></script>
<script language="javaScript">


     $(function(){
       //清空默认标题
         $("#pname").click(function(){
             if($(this).val()=="请输入计划标题"){
                $(this).val("")
             }
           }
         )
         //begin
        $.ajax({
        url:"plan/seltys",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#username").html();
         var option="<option>--请选择--</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].detailid+"'>"+data[i].username+"</option>";
          }
         $("#username").append(option);
         $("#kname").append(option);
         $("#letname").append(option);
         }
       }); 
       //begin
         $.ajax({
        url:"plan/selty",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#planname").html();
         var option="<option>--请选择--</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].pid+"'>"+data[i].planname+"</option>";
       
          }
         $("#planname").append(option);
       
         }
 
       });
     //begin
      $.ajax({
        url:"plan/seltys1",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#deptName").html();
         var option="<option>--请选择--</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].deptid+"'>"+data[i]. deptname+"</option>";
       
          }
         $("#deptName").append(option);
       
         }
 
       });
       //begin
     });
     

</script>
