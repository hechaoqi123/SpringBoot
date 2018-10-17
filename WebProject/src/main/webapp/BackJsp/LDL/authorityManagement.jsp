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
	<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesomes.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>assets/css/view.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.css">
	<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/authorityManagement.css">
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/viewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/view.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>assets/js/ace.min.js"></script>
  </head>
  <body>
  
<div>
<br>
	<div id="topDiv">
		<table>
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
					<a class="button1 button1L">
						<i class="fa" data-toggle="modal" data-target="#myModalOne">新增一级</i>
					</a><span id="oWorkflowList1"></span><a class="button1 button1R">
						<i class="fa" data-toggle="modal" data-target="#myModalTwo">新增二级</i>
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
  		</table>
	</div>
	<div id="bottomDiv">
		<div id="colloaMenu2"><!--  bottomRightDiv-->
			<a class="" href="javascript:getvo();">
				<img src="../assets/images/key.gif" border="0"> 模块访问权设置
			</a>
			<a href="javascript:getvo();">
				<img src="../assets/images/key2.gif" border="0"> 模块操作权设置
			</a>
			<a href="javascript:getvo();">
				<img src="../assets/images/share.gif" border="0"> 按用户设置权限
			</a>
		</div>
		<div id="bottomRightDiv">
				<ul class="bottomRightDivUl">
					<li>编号</li>
					<li>名称</li>
					<li>描述</li>
					<li>状态</li>
					<li>信息</li>
					<li>操作</li>
				</ul>
				
				<div id="myTbody">
					<div id="sidebar" class="sidebar">
						<ul class="nav nav-list">
							<li class="w" v-for="Visitonemodile in Visitonemodiles">
								 <a href="#" class="dropdown-toggle">							
			                        <span>{{Visitonemodile.mOneId}}</span>
			                        <span>{{Visitonemodile.mname}}</span>
									<span>{{Visitonemodile.mdescribe}}</span>
									<span v-if="Visitonemodile.msequnce=1">启用</span>
									<span v-if="Visitonemodile.msequnce=0">禁用</span>
									<span><img v-bind:src="Visitonemodile.mimageurl"/></span>
									<span><img v-bind:src="Visitonemodile.mimageurl"/></span>
								</a>
								<ul class="submenu" style="display:none;padding:0px;">
									<li class="ww" v-for="Visittwomodile in Visittwomodiles" v-if="!(Visittwomodile.mOneId != Visitonemodile.mOneId)"  > 
									  	<a style="color:#f7f7f7;font-size:12px;">
											<span>{{Visittwomodile.mTowId}}</span>
											<span>{{Visittwomodile.mname}}</span>
											<span>{{Visittwomodile.mdescribe}}</span>
											<span style="margin: 10;">{{Visittwomodile.msequnce}}</span>
											<span style="margin: 10;">{{Visittwomodile.murl}}</span>
											<span style="margin: 0;">{{Visittwomodile.mname}}</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
		</div>
	</div>
</div>



				

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalOne" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					增加一级导航
				</h4>
			</div>
			<div class="modal-body">
				<form  id="form-add" enctype="multipart/form-data">
					<table>
						<tr>
							<td>模块名字</td>
							<td><input type="text" name="mname" v-model="mname"></td>
						</tr>
						<tr>
							<td>模块描述</td>
							<td><input type="text" name="mdescribe" v-model="mdescribe"></td>
						</tr>
						<tr>
							<td>模块状态</td>
							<td><input type="radio" checked="checked" name="msequnce" v-model="msequnce" value="1">启用
								<input type="radio" name="msequnce"  v-model="msequnce" value="0">禁用</td>
						</tr>
						<tr>
							<td>模块标志图</td>
							<td><input type="file" name="file" v-model="file"></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="submitFunction()" >
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalTwo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					增加一级导航
				</h4>
			</div>
			<div class="modal-body">
				<form  id="formTwo">
					<table>
						<tr>
							<td>模块名字</td>
							<td><input type="text" name="mname" v-model="mname"></td>
						</tr>
						<tr>
							<td>模块描述</td>
							<td><input type="text" name="mdescribe" v-model="mdescribe"></td>
						</tr>
						<tr>
							<td>模块状态</td>
							<td><input type="radio" checked="checked" name="msequnce" v-model="msequnce" value="1">启用
								<input type="radio" name="msequnce"  v-model="msequnce" value="0">禁用</td>
						</tr>
						<tr>
							<td>模块路径</td>
							<td><input type="text" name="murl"></td>
						</tr>
						<tr>
							<td>父级归属</td>
							<td>
								<select name="moneid" id="selectTwo">
									<option v-for="Visitonemodile in Visitonemodiles" v-bind:value="Visitonemodile.mOneId">{{Visitonemodile.mname}}</option>
								</select>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="submitFunctionTwo()" >
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
	
<script type="text/javascript" src="<%=basePath%>assets/js/LDL/authorityManagement.js"></script>
</html>