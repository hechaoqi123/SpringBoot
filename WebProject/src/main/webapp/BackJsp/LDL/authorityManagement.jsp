<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'authority management.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="../assets/images/colloa.ico">
	<!--悬浮样式  -->
	<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>assets/css/view.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/viewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/view.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
	
  </head>
  <body>
<table style="min-width:980px;width:100%;height:100%;" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr valign="top">
			<td id="colloaContent">
				<table cellspacing="0" cellpadding="0" border="0">
					<tbody>
				   		<tr>
				   			<td width="20%">
				   				<h1>
				   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 权限管理
				   				</h1>
							</td>
							<td class="textGray" align="center">
								* 用户具有自身、所属组织机构以及所属岗位角色的综合权限
							</td>
							<td id="oWorkflowList" align="right">
								<a class="button1 button1L" href="">
									<i class="fa">新增一级</i>
								</a><span id="oWorkflowList1"></span><a class="button1 button1R" href="">
									<i class="fa">新增二级</i>
								</a>
							</td>
							
							<td id="oWorkflowList" align="right">
								<a class="button1 button1L" title="后退" href="javaScript:windowClose();">
									<i class="fa fa-angle-left"></i>
								</a><span id="oWorkflowList1"><!-- <a href="#" class="button1 button1M">
										<i class="fa fa-plus"></i> 新增
								</a> --></span><a class="button1 button1R" title="刷新" href="javaScript:location.reload();">
									<i class="fa fa-bolt"></i>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<div id="colloaMenu2">
					<a class="textHighlight" href="">
						<img src="../assets/images/key.gif" border="0"> 模块访问权设置
					</a>
					<a href="">
						<img src="../assets/images/key2.gif" border="0"> 模块操作权设置
					</a>
					<a href="">
						<img src="../assets/images/share.gif" border="0"> 按用户设置权限
					</a>
				</div>
				<div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
						<colgroup>
							<col>
							<col width="100px">
							<col width="80px">
							<col width="80px">
							<col width="100px">
						</colgroup>
						<thead>
							<tr>
								<th>名称</th>
								<th>内部标志号</th>
								<th>排序号</th>
								<th>状态</th>
								<th>操作</th>
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
					</table>
				</div>
			</td>
		</tr>
	</tbody>
</table>
</body>
	
<script type="text/javascript">
	function sund(obj){
		$(".myTr").remove();
		var tr = "<tr class='myTr'>"+
					"<td>&nbsp;&nbsp;&nbsp;222</td>"+
					"<td>222</td>"+
					"<td>222</td>"+
					"<td>222</td>"+
					"<td>222</td>"+
				"</tr>";
				//通过after在标签后边追加内容
				$(obj).after(tr);
		
	}
	
	
</script>

</html>
