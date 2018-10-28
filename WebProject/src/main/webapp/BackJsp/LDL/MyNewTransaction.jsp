<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Mytransaction.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<link rel="shortcut icon" href="../assets/images/colloa.ico">
<!--悬浮样式  -->
<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesomes.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath%>assets/css/view.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.css">
<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/Mytransaction.css">

<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/viewCn.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/view.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
<script src="<%=basePath%>assets/js/ace.min.js"></script>

</head>

<body id="colloabody">
	<div style="background-color: #fff; padding: 20px;">
		<table>
  			<tr>
	   			<td width="20%">
	   				<h2>
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 发起的事务
	   				</h2>
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
  		</table>
	</div>
	<table style="width: 100%; height: 100%; min-width: 980px;" border="0"
		cellspacing="0" cellpadding="0">
		<tbody>
			<tr valign="top">
				<td id="colloaContent">
					<table style="table-layout: fixed;" border="0" cellspacing="0"
						cellpadding="0">
						<colgroup>
							<col width="20%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td>
									
									<div class="treeOfNavigation" id="treeOfNavigation">
										<div class="myTransaction" id="accordion" >
											<div class="panel">
												<a data-toggle="collapse" data-parent="#accordion" href="#one">
													<span>财务中心</span>
												</a>
												<div id="one" class="panel-collapse collapse">
													<div>
														<a>报销审批</a>
													</div>
													<div>
														<a>报销审批</a>
													</div>
													<div>
														<a>报销审批</a>
													</div>
												</div>
											</div>
											<div class="panel">
												<a data-toggle="collapse" data-parent="#accordion" href="#two">
													<span>财务中心</span>
												</a>
												<div id="two" class="panel-collapse collapse">
													<div>
														<a>报销审批</a>
													</div>
													<div>
														<a>报销审批</a>
													</div>
													<div>
														<a>报销审批</a>
													</div>
												</div>
											</div>
											<div class="panel">
												<a data-toggle="collapse" data-parent="#accordion" href="#Three">
													<span>财务中心</span>
												</a>
												<div id="Three" class="panel-collapse collapse">
													<div>
														<a>报销审批</a>
													</div>
													<div>
														<a>报销审批</a>
													</div>
													<div>
														<a>报销审批</a>
													</div>
												</div>
												
											</div>
										</div>
									</div>
								</td>
								<td></td>
								<td>
									<table class="tableList" border="0" cellspacing="0"
										cellpadding="0">
										<tr>
											<th>主题</th>
											<th>当前步骤</th>
											<th>当前责任人</th>
											<th>更新时间</th>
										</tr>
										<tbody>
											<tr>
												<td><a href="javascript:showItem('事务','1001944');"><I
														class="fa fa-lock fa-lg" style="color: rgb(44, 135, 240);">
													</I> IPD-新品研发项目流程 <IMG
														src="我发起的事务%20-%20colloa_files/priority0.gif" border="0"></a></td>
												<td>实施中&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/11/21 16:13</td>
											</tr>
											<tr>
												<td><a href="javascript:showItem('事务','1001598');">
														<I class="fa fa-calendar-check-o fa-lg"
														style="color: rgb(60, 188, 60);"></I> 系统验证 <IMG
														src="我发起的事务%20-%20colloa_files/priority0.gif" border="0">
												</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:22</td>
											</tr>
										</tbody>
									</table> <SCRIPT language="javaScript">cataloguePages(504,20);</SCRIPT>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>

</body>
</html>
