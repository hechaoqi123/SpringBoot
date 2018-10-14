<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <style>
         *{
           border:opx;
           margin:0px;
           padding:0px;
         }
      </style>
  </head>
  
  <body>
                 <iframe src="BackJsp/HomePage.jsp"  name="left_main" frameborder="0" scrolling="no" width="18%" height="1000px"></iframe><iframe src="BackJsp/hcq/recruit.jsp" name="right_main" frameborder="0" scrolling="no" width="82%" height="1000px"></iframe> 
  </body>
</html>
