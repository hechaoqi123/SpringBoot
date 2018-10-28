<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'collapse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
  </head>
  
  <body>
   <div id="accordion">
	<span class="panel">
			<a data-toggle="collapse" data-parent="#accordion" 
			   href="#collapseTwo">
				点击我进行展开，再次点击我进行折叠。第 2 部分
			</a>
		<div id="collapseTwo" class="panel-collapse collapse">
			Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
			cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
			vice lomo.
		</div>
	</span>
	<span class="panel panel-default">
		<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
			点击我进行展开，再次点击我进行折叠。第 3 部分
		</a>
		<div id="collapseThree" class="panel-collapse collapse">
			Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
			cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
			vice lomo.
		</div>
	</span>
	<span class="panel">
	
	</span>
</div>

    
  </body>
</html>
