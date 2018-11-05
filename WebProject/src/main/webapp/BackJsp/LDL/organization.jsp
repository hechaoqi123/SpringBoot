<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 组织机构
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
			<div id="organizationVue">
				<table cellpadding=0 cellspacing=0 border=0 class="tableList">
					<thead>
						<tr>
							<th>名称</th>
							<th>描述</th>
							<th>工作内容</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr v-for="groupcompany in groupcompanys">
							<td style='padding-left:10px'><img src="../assets/images/userX10000.gif"> {{groupcompany.gcname}}</td>
							<td>{{groupcompany.gcdepict}}</td>
							<td>{{groupcompany.gcjobdescription}}</td>
							<td>有效&nbsp;</td>
							<td></td>
						</tr>
						<tr v-for="subcompany in subcompanys" v-on:click="getDeptVue(subcompany.scid,$event)">
							<td style='padding-left:25px'><img src="../assets/images/userX10000.gif">{{subcompany.scname}}</td>
							<td>{{subcompany.scdepict}}</td>
							<td>{{subcompany.scjobdescription}}</td>
							<td>有效&nbsp;</td>
							<td>
								<img src="../assets/images/update.png" width="15px" title="修改">&nbsp;
								<img src="../assets/images/del.png" width="15px" title="删除" @click="delSub(subcompany.scid)">
							</td>
						</tr>
						
					</tbody>
				</table>
				
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
	
<script type="text/javascript" src="<%=basePath%>BackJsp/LDL/js/organization.js?var=1"></script>
</html>