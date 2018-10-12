<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'staff.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <style>
         #hea div{
           float:left;
         }
      </style>
  </head>
  
  <body>
      <!-- head -->
      <div style="height:200px;padding-left:30px;" id="hea">
          <div style="padding-top:30px;width:500px;"><img src="BackJsp/hcq/img/log.png"/><b style="font-size:30px;">员工管理</b></div>
          <div style="padding-top:30px;">按钮</div>
      </div>
      <!-- BODY -->
      <div>
         qwe
      </div>
  </body>
</html>
