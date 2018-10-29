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
	<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/post.css">
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
	<br>
	<div id="topDiv">
		<table>
  			<tr>
	   			<td width="20%">
	   				<h1>
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 岗位角色
	   				</h1>
				</td>
				<td class="textGray" align="center">
					* 根据不同的部门管理分配不同的角色
				</td>
				<td id="oWorkflowList" align="right">
					<a href="../BackJsp/LDL/postadd.jsp" class="button1 button1L" style="boder-radius: 5px;">
						<i class="fa" data-toggle="modal" data-target="#myModalOne" >新增</i>
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
	<div class="bottomDiv">
		<div class="bottomDivLeft" id="organizationVue">
			<div id="sidebar" class="sidebar">
				<ul class="nav nav-list" id="oneModel">
					<li class="w" v-for="subcompany in subcompanys">
						 <a href="#" class="dropdown-toggle">	
							<span>{{subcompany.scname}}</span>
						</a>
						<ul class="submenu" style="display:none;padding:0px;">
							<li class="ww" v-for="dept in depts" v-if="!(dept.belong != subcompany.scid)" @click="getDeptPost(dept.deptid)" > 
							  	<a style="color:#f7f7f7;font-size:12px;">
									<span>{{dept.deptname}}</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="bottomDivRight" id="myPost">
			 <TABLE class="tableList" border="0" cellspacing="0" cellpadding="0">
	              <TR>
	                <TH>编号</TH>
	                <TH>名称</TH>
	                <TH>状态</TH>
	                <TH>职责说明</TH>
	                <TH>操作</TH>
	                </TR>
	              <TR v-for="post in posts" valign="top">
	                <TD>{{post.pid}}</TD>
	                <TD>{{post.pname}}</TD>
	                <TD>有效</TD>
	                <TD>{{post.describes}}</TD>
	                <TD>
	                	<img src='../assets/img/user_add.png' width='15px'  @click="getVisit(post.pid)" data-toggle="modal" data-target="#myModal"> 
	                	<a :href="'post/getOnePost?pid=' + post.pid" style="text-decoration: none;">
	                		<img src="../assets/images/update.png" width="15px" title="修改">&nbsp;
	                	</a>
						<img src="../assets/images/del.png" width="15px" title="删除" @click="delOnePost(post.pid)">
	                </TD>
	               </TR>
               </TABLE>
			<a @click="execute(1)" class="button1 button1L" title="首页" >首页</a>
			<a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" >上一页</a>
			<span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span>
			<a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页">下一页</a>
			<a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页">尾页</a>
		<!-- 权限分配模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" id="usersVue">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							模块分配
						</h4>
					</div>
					<div class="modal-body">
						<div class="userSeek">
							<div class="input-group">
							<input type="text" class="form-control" v-model="mname">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" @click="getVisit">
									Go!
								</button>
							</span>
							</div><!-- /input-group -->
						</div>
						<div class="alootDiv">
							<div class="alootTrue">
								<div class="alootTrueUser">已拥有访问权限</div>
								<div class="alootTrueUser" v-for="trueVisit in trueVisits" @click="delpostVisittwomodile(trueVisit.mTowId)">{{trueVisit.mname}}</div>
							</div>
							<div class="alootFalse">
								<div class="alootFalseUser">未拥有访问权限</div>
								<div class="alootFalseUser" v-for="falseVisit in falseVisits" @click="insertpostVisittwomodile(falseVisit.mTowId)" >{{falseVisit.mname}}</div>
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
	</div>
</div>
	
</body>
	
<script type="text/javascript" src="<%=basePath%>BackJsp/LDL/js/post.js"></script>
</html>