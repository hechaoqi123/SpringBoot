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
	<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/organization.css">
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
						<i class="fa" data-toggle="modal" data-target="#myModalSub">新增子公司</i>
					</a><span id="oWorkflowList1"></span><a class="button1 button1R">
						<i class="fa" data-toggle="modal" data-target="#myModalDept">新增部门</i>
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
	<div id="bottomDiv"><!-- ttt -->
		<div id="bottomRightDiv">
			<ul class="bottomRightDivUl">
				<li>编号</li>
				<li>名称</li>
				<li>描述</li>
				<li>信息</li>
				<li>状态</li>
				<li>操作</li>
			</ul>
			<div id="organizationVue">
				<ul class="nav nav-list">
						<li class="w www" v-for="groupcompany in groupcompanys">
							 <a class="dropdown-toggle" style="color: #000;font-weight:bold;  ">	
		                        <span>{{groupcompany.gcid}}</span>
		                        <span>{{groupcompany.gcname}}</span>
								<span>{{groupcompany.gcdepict}}</span>
								<span>{{groupcompany.gcjobdescription}}</span>
								<span v-if="groupcompany.gcstate=1">启用</span>
								<span v-if="groupcompany.gcstate=0">禁用</span>
								<span>修改  删除</span>
							</a>
						</li>
					</ul>
				<div id="sidebar" class="sidebar" style="padding-left: 20px;">
					<ul class="nav nav-list">
						<li class="w" v-for="subcompany in subcompanys">
							 <a href="#" class="dropdown-toggle">	
		                        <span>{{subcompany.scid}}</span>
								<span>{{subcompany.scname}}</span>
								<span>{{subcompany.scdepict}}</span>
								<span>{{subcompany.scjobdescription}}</span>
								<span v-if="subcompany.scstate=1">启用</span>
								<span v-if="subcompany.scstate=0">禁用</span>
								<span>修改  删除</span>
							</a>
							<ul class="submenu" style="display:none;padding:0px;">
								<li class="ww" v-for="dept in depts" v-if="!(dept.belong != subcompany.scid)"  > 
								  	<a style="color:#f7f7f7;font-size:12px;">
										<span>{{dept.deptid}}</span>
										<span>{{dept.deptname}}</span>
										<span>{{dept.deptdepict}}</span>
										<span>{{dept.deptjobdescription}}</span>
										<span v-if="dept.deptstate=1">启用</span>
										<span v-if="dept.deptstate=0">禁用</span>
										<span>修改  删除</span>
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div><!-- ddd -->
</div>


<!--增加公司 模态框（Modal） -->
<div class="modal fade" id="myModalSub" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					子公司信息
				</h4>
			</div>
			<div class="modal-body">
				<form  id="formSub">
					<table>
						<tr>
							<td>从属于</td>
							<td><input type="text" name="belong" value="1"style="display: none;"> 阿尔发集团</td>
						</tr>
						<tr>
							<td>名字</td>
							<td><input type="text" name="scname"></td>
						</tr>
						<tr>
							<td>描述</td>
							<td><input type="text" name="scdepict"></td>
						</tr>
						<tr>
							<td>职责说明</td>
							<td><input type="text" name="scjobdescription" ></td>
						</tr>
						<tr>
							<td>状态</td>
							<td>
								<input type="radio" checked="checked" name="scstate"  value="1">启用
								<input type="radio" name="scstate"  value="0">禁用
							</td>
						</tr>
						
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" v-on:click="formSub" >
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div>
</div>
<!-- /.modal -->
<!--增加部门 模态框（Modal） -->
<div class="modal fade" id="myModalDept" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					部门信息
				</h4>
			</div>
			<div class="modal-body">
				<form  id="formDept" enctype="multipart/form-data">
					<table>
						<tr>
							<td>从属于</td>
							<td>
								<select name="belong" id="formSel">
									<option v-for="getSub in getSubs" v-bind:value="getSub.scid">{{getSub.scname}}</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>名字</td>
							<td><input type="text" name="deptname"></td>
						</tr>
						<tr>
							<td>描述</td>
							<td><input type="text" name="deptdepict"></td>
						</tr>
						<tr>
							<td>职责说明</td>
							<td><input type="text" name="deptjobdescription"></td>
						</tr>
						<tr>
							<td>状态</td>
							<td><input type="radio" checked="checked" name="deptstate" value="1">启用
								<input type="radio" name="deptstate"  value="0">禁用</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" v-on:click="addDept" >
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div>
</div>
<!-- /.modal -->
</body>
	
<script type="text/javascript" src="<%=basePath%>BackJsp/LDL/js/organization.js"></script>
</html>