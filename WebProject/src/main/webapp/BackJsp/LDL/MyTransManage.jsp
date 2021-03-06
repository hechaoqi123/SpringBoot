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
<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/authorityManagement.css">

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
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 新建事务
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
	<div id="bottomDiv" style="background-color: #fff;">
		
		<div id="bottomRightDiv">
			<div id="authorityVue">
				<table cellpadding=0 cellspacing=0 border=0 class="tableList">
					<thead>
						<tr>
							<th style="width: 50px;">编号</th>
							<th>名称</th>
							<th>描述</th>
						</tr>
					</thead>
					<tbody>
						<tr v-for="(Visitonemodile,index) in Visitonemodiles" @click="getMytransaction(Visitonemodile.mOneId,$event)"> 
							<td style="width: 50px;"><img :src="Visitonemodile.mimageurl" style="margin-right:10px;"/></td>
							<td>{{Visitonemodile.mname}}</td>
							<td>{{Visitonemodile.mdescribe}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	
	<!-- 权限分配模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" id="usersVue">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					事务管理
				</h4>
			</div>
			<div class="modal-body">
				<div class="userSeek">
					<div class="input-group">
					<input type="text" class="form-control" v-model="pname">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" @click="getUsers">
							Go!
						</button>
					</span>
					</div><!-- /input-group -->
				</div>
				<div class="alootDiv">
					<div class="alootTrue">
						<div class="alootTrueUser">可以访问角色</div>
						<div class="alootTrueUser" v-for="trueTran in trueTrans" @click="shiftTrueUser(trueTran.pid)">{{trueTran.pname}}</div>
					</div>
					<div class="alootFalse">
						<div class="alootFalseUser">不可以访问角色</div>
						<div class="alootFalseUser" v-for="falseTran in falseTrans"  @click="shiftFalseTran(falseTran.pid)">{{falseTran.pname}}</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div>
</div><!-- /.modal -->		
	
	
</body>
<script type="text/javascript" src="<%=basePath%>BackJsp/LDL/js/MytransManage.js?ver=1.13"></script>
</html>
