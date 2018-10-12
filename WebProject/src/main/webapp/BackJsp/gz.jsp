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
	 <link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css">  
	<script src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
	<link rel="shortcut icon" href="../assets/images/colloa.ico">
	<!--悬浮样式  -->
	<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"><nk>
	<link rel="stylesheet" href="<%=basePath%>assets/cssiew.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsiew.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/jsue.min.js"></script>
	
	
   <style type="text/css">
    #i{
    position:absolute;
     margin-top:3px;
    }
    #zero{
	  height:1000px;
	  width:100%;
	  float:left;
	}
	
	#zero1{
	  height:1000px;
	  width:20%;
	  background-color:white;
	}
	
	#zero2{
	  height:700px;
	  width:75%;
	  background-color:white;
	border:1px solid #bbf;
	   position:absolute;
	 
	}
	.zero11{
	  height:40px;
	  width:200px;
	  border:1px solid #bbf;
	  font-size:14;
	  background-color:#E8E8E8;
	  margin-top:-500px;
	}
	
	.zerob{
	  height:150px;
	  width:200px;
	  border:1px solid #bbf;
	  font-size:16px;

	}
	.zero12{
	  height:150px;
	  width:200px;
	  border:1px solid #bbf;
	  font-size:16px;
	}
	.zero12 div{
	  margin-top:8px;
	  margin-left:22px;
	}
	.tableList  tr td{
border-top:1px solid #bbf;
 height:30px;
	 	
	}
   
   </style>
  </head>
  
  <body>
      <i id="i"><img src="../img/menu.png"/></i> <h2 style="margin-left:30px;"><i>我的工作计划</i></h2>
	     <div class="btn-group" style="margin-left:790px;margin-top:-50px;">
	         <button type="button" class="btn btn-default"><<tton>
		     <button type="button" class="btn btn-default">+制定工作计划<tton>
		     <button type="button" class="btn btn-default">查询<tton>
	      	 <button type="button" class="btn btn-default">刷新<tton>>
	     </div>
     </br>
     <table id="zero">
       <tr>
           <td id="zero1">
              <div class="zero11"><i style="display:block;margin-top:10px;font-weight:bold;font-family:黑体">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp分类</i></div>
                 <div class="zero12">
                 <div><img src="../img/folder.png"><span style="position:absolute;">显示所有</span></div>
                 <div><img src="../img/folder.png"><span style="position:absolute;">我创建的计划</span></div>
                 <div><img src="../img/folder.png"><span style="position:absolute;">我评审的计划</span></div>
                 <div><img src="../img/folder.png"><span style="position:absolute;">我执行的计划</span></div>
                 </div>
               
                 <div class="zerob">
                 <div style="padding-left:20px;"><img src="../img/folder.png"><span style="position:absolute;">年度计划</span></div>
              
                 <div style="padding-left:20px;"><img src="../img/folder.png"><span style="position:absolute;">季度计划</span></div>
                 <div style="padding-left:20px;"><img src="../img/folder.png"><span style="position:absolute;">月度计划</span></div>
                 <div style="padding-left:20px;"><img src="../img/folder.png"><span style="position:absolute;">周计划</span></div>
                 <div style="padding-left:20px;"><img src="../img/folder.png"><span style="position:absolute;">项目计划</span></div>
                 <div style="padding-left:20px;"><img src="../img/folder.png"><span style="position:absolute;">其他计划</span></div>	
                 </div>
           </td>
           <td id="zero2">
             <div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
						<colgroup>
							<col width="420px" >
							<col width="105px">
							<col width="105px">
							<col width="105px">
							<col width="105px">
						</colgroup>
						<thead>
							<tr style="height:40px;">
								<th style="float:left; margin-top:7px;">计划名称</th>
								<th>创建人</th>
								<th>所属部门</th>
								<th>开始时间</th>
								<th>结束时间</th>
							</tr>
						</thead>
						
						<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
							<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
							<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
							<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
							<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
							<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
							<tr onclick="sund(this)">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
					</table>
					</div>
		<div class="btn-group" style="margin-left:220px;margin-top:430px;">
	      <button type="button" class="btn btn-default">首页<tton>
	      <button type="button" class="btn btn-default">上页<tton>
	      <button type="button" class="btn btn-default">当前页<tton>
	      <button type="button" class="btn btn-default">下页<tton>
	      <button type="button" class="btn btn-default">尾页<tton>
        </div>
					
			
          </td>
       </tr>
     </table>
 


  </body>
</html>
