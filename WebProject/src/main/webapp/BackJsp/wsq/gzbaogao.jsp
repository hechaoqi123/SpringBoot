<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<base href="<%=basePath%>">
<head>

  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>撰写工作报告* - Colloa</title>
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
<tr valign="top">
<td>&nbsp;</td>
<td id="colloaForm">
<div class="formTaskflowContainer">
<form action="/report/addAll";method="post" class="formTaskflow" id="refrom">
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">撰写</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td>&nbsp;优先级: <input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr></tbody></table>
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td style="FONT-SIZE: 20px; FONT-WEIGHT: bold; TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type="required"> </td>
 <td><input name="rname" id="rname" value="请输入报告标题" class="rname"   style="height: 40px; width:1000px; font-size: 20px; font-weight: bold; text-align: center;">
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
<td style="TEXT-ALIGN: center">报告分类</td>
<td>
<input onclick="onTypeChange('年度');" id="dbf.psid2" type="radio" value="年度" name="rtype" autocomplete="off">年度 
<input onclick="onTypeChange('季度');" id="dbf.psid2" type="radio" value="季度" name="rtype" autocomplete="off">季度
 <input onclick="onTypeChange('月度');" id="dbf.psid2" type="radio" value="月度" name="rtype" autocomplete="off">月度
  <input onclick="onTypeChange('周');" id="dbf.psid2" type="radio" value="周" name="rtype" autocomplete="off">周
   <input onclick="onTypeChange('项目');" id="dbf.psid2" type="radio" value="项目" name="rtype" autocomplete="off">项目 
   <input onclick="onTypeChange('其他'));" id="dbf.psid2" checked="" type="radio" value="其他" name="rtype" autocomplete="off">其他</td>
<td style="TEXT-ALIGN: center">从属于</td>
<td ><select style="width:445px; border: #F4F4F4" class="pid" id="pid" name="pid"></select></td></tr>
<tr>
<td style="TEXT-ALIGN: center">创建人</td>
<td>${detail.username}<input name="detailld" value="${detail.detailid}" readonly="true" style="display:none;border:0px;"/></td>
<td style="TEXT-ALIGN: center">所属部门</td>
<td><select style="width:445px; border: #F4F4F4" class="deptname" id="deptName" name="deptid"></select></td></tr>
<tr>
<td style="TEXT-ALIGN: center">创建时间</td>
<td><input style="width:338px; border: #F4F4F4"    name="creationdate" class="creationdate" id="creationdate"></td>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>评审人</td>
<td ><select style="width:445px; border: #F4F4F4" class="knmae" id="kname" name="kname"></select></td></tr>
<tr>
<td id="tableDetail" style="VERTICAL-ALIGN: top; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px" colspan="4" dbf.source="" dbf.type="html">
<table id="tt" style="border:1px solid #F4F4F4">    
         <tr>
            <td style="width:30px">序号</td>
            <td style="text-align:center">计划事项</td>
           
         </tr>
         <tr>
              <td>1</td>
              <td><input style="border: #F4F4F4; height:50px;width:800px;"  name="list[0].renames"></td>
              
         </tr>
         <tr>
              <td>2</td>
              <td><input style="border: #F4F4F4; height:50px;width:800px;"  name="list[1].renames"></td>
            
         </tr>
         <tr>
              <td>3</td>
              <td><input style="border: #F4F4F4; height:50px;width:800px;"  name="list[2].renames"></td>
             
         </tr>
         
   </table>
</td>
</tr>

</tbody></table>

 <input style="margin-left:900px;height:30px;width:50px" type="submit" value="保存" id="add" />

 <input  id="tast"  type="button" value="取消" style="margin-left:950px; margin-top:-30px;  height:30px;width:50px" >
 
<!--  <div id="_vWorkflowActionsShow" align="right">
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;保存&#39;,150,1);return false;">保存</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转评审&#39;,1,1);return false;">转评审</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a>
</div> -->
</form></div>
 
<form method="post"><input type="hidden" id="viewState" name="viewState"></form>
<br>
<!-- <div id="_vWorkflowActionsShow" align="right">
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;保存&#39;,150,1);return false;">保存</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转评审&#39;,1,1);return false;">转评审</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a>
</div> -->
<br>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
<colgroup>
<col width="60%"><col width="2%"><col>
</colgroup>
<tbody>
<tr valign="top">
<td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?134010&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table></body></html>
<script type="text/javascript" src="BackJsp/wsq/js/jquery-1.8.3.min.js"></script>
<script language="javaScript">
 $(function(){
       //清空默认标题
         $("#rname").click(function(){
             if($(this).val()=="请输入报告标题"){
                $(this).val("")
             }
           }
         )
  
         //begin
   /*      $.ajax({
        url:"plan/seltys",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#username").html();
         var option="<option>admin</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].detailid+"'>"+data[i].username+"</option>";
          }

         $("#kname").append(option);
         
         }
       }); */ //
        $.ajax({
        url:"plan/seltys",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#username").html();
         var option="<option>admin</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].username+"'>"+data[i].username+"</option>";
          }
     
         $("#kname").append(option);
         
         }
       }); 
       //begin
         $.ajax({
        url:"plan/selty",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#planname").html();
         var option="<option>admin</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].pid+"'>"+data[i].pname+"</option>";
       
          }
         $("#pid").append(option);
         }
 
       });
     //begin
      $.ajax({
        url:"plan/seltys1",
        type:"post",
        dataType:"json",
        success:function(data){
         $("deptName").html();
         var option="<option>admin</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].deptid+"'>"+data[i].deptname+"</option>";
       
          }
         $("#deptName").append(option);
       
         }
 
       });
           //begin
        $("#tast").click(function(){
        window.location.href="BackJsp/wsq/report.jsp";
      })
    
     });
	
     



</script>
