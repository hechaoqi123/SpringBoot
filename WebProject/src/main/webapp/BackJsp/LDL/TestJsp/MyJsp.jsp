
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     	<tbody>
   		<tr>
   			<td>
   				<h1>
   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 权限管理
   				</h1>
			</td>
			<td class="textGray" align="center">
				* 用户具有自身、所属组织机构以及所属岗位角色的综合权限
			</td>
			<td id="oWorkflowList" align="right">
				<a class="button1 button1L" title="后退" href="javaScript:windowClose();">
					<i class="fa fa-angle-left"></i>
				</a>
				<span id="oWorkflowList1"></span>
				<a class="button1 button1R" title="刷新" href="javaScript:location.reload();">
					<i class="fa fa-bolt"></i>
				</a>
			</td>
		</tr>
	</tbody>
	<br>
  </body>
</html>
