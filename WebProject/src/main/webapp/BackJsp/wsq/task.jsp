<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'External.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
	<!--悬浮样式  -->
	  <link rel="stylesheet" href="BackJsp/wsq/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/wsq/css/view.css">
  <script type="text/javascript" src="BackJsp/wsq/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/wsq/js/view.js"></script>
		<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"><nk>
	<link rel="stylesheet" href="<%=basePath%>assets/cssiew.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiew.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsue.min.js"></script>
<style>

.btn:hover {
    background-color: #4CAF50;
    color:#A1A1A1;
}
</style>
  
  </head>

  <body>
 <table cellpadding="0" cellspacing="0" border="0" style="margin-top:30px;">
 <tbody>
 <tr>
   <td>
   <h1 style="margin-left:10px;"><img style="cursor:pointer;" src="BackJsp/wsq/img/menu.png" onclick="var cm=document.getElementById(&#39;colloaMenu&#39;); if(cm.style.display==&#39;none&#39;) cm.style.display=&#39;inline&#39;; else cm.style.display=&#39;none&#39;;"> 我的工作计划</h1>
   </td>
 <td align="right">
       <div class="btn-group" style="margin-left:220px;margin-top:0px;">
        <button type="button" style="background-color:white;font-size:16px;border-radius: 6px; " class="btn btn-default">》<tton>
	    <button type="button" style="background-color:white;font-size:16px " class="btn btn-default"><a href="BackJsp/wsq/jihua.jsp">《+撰写工作报告*</a><tton>
	    <button type="button" style="background-color:white;font-size:16px;border-radius: 6px; " class="btn btn-default">刷新<tton>
     </div>
       </script>
         
       <script language="javaScript">workflowList(0);</script>
 
 </td>
 </tr></tbody></table><br>

<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed;">
<colgroup>
<col width="20%"><col width="2%"><col>
</colgroup>
<tbody>
<tr valign="top">
<td>
<table cellpadding="0" cellspacing="0" border="0" class="tableList" style="margin-left:10px ;">
<thead>
<tr>
 <th style="padding-left:16px;">分类</th>
</tr>
</thead>
<tbody>
  <tr>
   <td style="padding:16px;" class="treeOfNavigation">
 <a class="textHighlight" href="javascript:catalogue();"><img src="BackJsp/wsq/img/folder.png" border="0"> (显示所有)</a>
 <a href="javascript:catalogue(10,1,&#39;评审中的报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 评审中的报告 <span class="tipCount">20</span></a>
 <a href="javascript:catalogue(30,1,&#39;已关闭的报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 已关闭的报告 <span class="tipCount">27</span></a>
 </td>
</tr>
<tr>
<td style="padding:16px;" class="treeOfNavigation">
<a href="javascript:catalogue(10000,10,&#39;年度报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 年度报告 <span class="tipCount">11</span></a>
<a href="javascript:catalogue(10000,20,&#39;季度报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 季度报告 <span class="tipCount">14</span></a>
<a href="javascript:catalogue(10000,30,&#39;月度报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 月度报告 <span class="tipCount">7</span></a>
<a href="javascript:catalogue(10000,40,&#39;周报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 周报告 <span class="tipCount">12</span></a>
<a href="javascript:catalogue(10000,100,&#39;项目报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 项目报告 <span class="tipCount">2</span></a>
<a href="javascript:catalogue(10000,0,&#39;其他报告&#39;);"><img src="BackJsp/wsq/img/folder.png" border="0"> 其他报告 <span class="tipCount">1</span></a>
</td>
</tr>
</tbody>
</table>
</td>
<td></td>
<td>

<table cellpadding="0" cellspacing="0" border="0" class="tableList">

<tr>
  <td><img src="BackJsp/wsq/img/priority0.gif">计划名称</td><td>创建人</td><td>所属部门</td><td>开始时间</td><td>结束时间</td>
  </tr>
   <tbody id="tbody"></tbody>

 
 </table>

</script>
<div id="colloaPages">
  <a class="button1 button1L" title="首页"><i class="fa fa-step-backward"></i></a>
 <a class="button1 button1M" title="上页" id="prepage"><i class="fa fa-backward"></i></a>
 <span class="button1M" id="nowPage"></i></span>
 <a class="button1 button1M" title="下页" id="nextpage"><i class="fa fa-forward"></i></a>
 <a class="button1 button1R" title="尾页" ><i class="fa fa-step-forward"></i></a>
</div>
</td></tr></tbody></table>


</body></html>
<script type="text/javascript" src="BackJsp/wsq/js/jquery-1.8.3.min.js"></script>
<script language="javaScript">
 
  
  
  $(function(){
          getAll(1);
      });
   function getAll(pageNum){
      $.ajax({
        url:"plan/getAll",
        type:"post",
        data:{"pageNum":pageNum},
        dataType:"json",
        success:function(data){
           $("#tbody").html("");
           var datalist=data.list;
              for(var i=0; i<datalist.length;i++){
                 var tr="<tr>";
                 tr+="<td>"+datalist[i].pname+"</td>";
                   tr+="<td>"+datalist[i].username+"</td>";
                   tr+="<td>"+datalist[i].deptName+"</td>";
                   tr+="<td>"+datalist[i].ksdate+"</td>";
                   tr+="<td>"+datalist[i].jsdate+"</td>";
                     tr+="</tr>";
                   $("#tbody").append(tr);
             }
              $("#nowPage").html(data.pageNum);
          
             
      
           
            }
             
      })
   
 }
 $("#prepage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage-1);
      })
 $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      });
      
      
    
</script>