d<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap-fileinput.css">
	<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/personageSet.css">
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
	<div id="topdiv">
		<table>
  			<tr>
	   			<td width="20%">
	   				<h1 style="font-size: 25px;font-weight: bold;">
	   					<img style="cursor:pointer;" src="../assets/images/menu.png"> 个人设置
	   				</h1>
				</td>
				
				<td id="oWorkflowList" align="right">
					<a class="button1 button1L">
						<i class="fa" data-toggle="modal" data-target="#setUpass">修改口令</i>
					</a><span id="oWorkflowList1"></span><a class="button1 button1R">
						<i class="fa" data-toggle="modal" data-target="#myT">修改头像</i>
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
	<div id="bottomdiv"><!-- ttt -->
		<div class="boxBorder" id="personageSet" style="padding: 30px;" >
		<input value="${CurrentUser.uid }"id="uidInput" style="display: none;">
		<input value="${CurrentUser.upass }"id="upassInput" style="display: none;">
		<span v-for="(detail,index) in userDetail.slice(0, 1)"><!-- {{index}} -->
			<div style="margin: 0px 20px 20px 0px; vertical-align: top; display: inline-block;">
				<IMG :src="userDetail[0].file" width="100px" border="0">
			</div>
			<div style="vertical-align: top; display: inline-block;" >
				<span class="textBig">{{userDetail[0].username}}</span><br><br>
				从属于： <span>{{userDetail[0].deptName}}</span><br>
				岗位角色：<span v-for="detail in userDetail"> {{detail.pname}}&nbsp;</span> <br>
				个人状态：在线 <br>
				简短说明：这家伙很懒什么都没留下 <br>
				固定电话：{{userDetail[0].telephone}} <br>
				移动电话：{{userDetail[0].phone}} <br>
				电子邮件：{{userDetail[0].email}} <br>
				即时通信： 
			</div>
		</span>
			
		</div>
	</div><!-- tttt -->
</div>


<!--修改口令（Modal） -->
<div class="modal fade" id="setUpass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改口令
				</h4>
			</div>
			<div class="modal-body" id="formUpass">
				<form>
					<table>
						<tr>
							<td> 输入您的旧口令*  </td>
							<td>
								<input type="password"  onblur="userUpass1(this)" name="upass" >
							</td>
						</tr>
						<tr>
							<td> 输入您的新口令*</td>
							<td><input type="password" id="userup" onblur="userUpass2(this)" ></td>
						</tr>
						<tr>
							<td> 再次输入新口令以确认* </td>
							<td><input type="password" id="userup2" onblur="userUpass3(this)" name="upass" v-model="upass"></td>
						</tr>
					</table>
				</form>
				<script>
						
				</script>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="formSub()" >
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div>
</div>
<!-- /.modal -->
<!--修改头像 模态框（Modal） -->
<div class="modal fade" id="myT" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 100px;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改头像
				</h4>
			</div>
			<div class="container">
				<div class="modal-body page-header" style="width: 300px;">
					<form id="uploadForm" enctype="multipart/form-data">
						<div class="form-group">
							<div class="h4">图片预览</div>
							<div class="fileinput fileinput-new" data-provides="fileinput"id="exampleInputUpload">
								<div class="fileinput-new thumbnail"style="width: 200px;height: auto;max-height:150px;">
									<img id="picImg"style="width: 100%;height: auto;max-height: 140px;"src="../assets/images/noimage.png" alt="">
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"style="max-width: 200px; max-height: 150px;"></div>
								<div>
									<span class="btn btn-primary btn-file"> 
										<span class="fileinput-new">选择文件</span> 
										<span class="fileinput-exists">换一张</span>
										<input type="file" name="file" id="picID" accept="image/gif,image/jpeg,image/x-png">
									</span> 
									<a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
								</div>
							</div>
						</div>
						<button type="button" id="uploadSubmit" class="btn btn-info" data-dismiss="modal">提交</button>
					</form>
				</div>	
			</div>
		</div><!-- /.modal-content -->
	</div>
</div>
<!-- /.modal -->
</body>
	
<script type="text/javascript" src="<%=basePath%>BackJsp/LDL/js/personageSet.js"></script>
<script src="<%=basePath%>assets/js/bootstrap-fileinput.js"></script>
</html>