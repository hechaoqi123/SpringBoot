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
<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/Mytransaction.css?ver=1.01">

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
	<table id="tranVue" style="width: 100%; height: 100%; min-width: 980px;" border="0" cellspacing="0" cellpadding="0">
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
								<td><input id="uid" value="${CurrentUser.uid }" style="display: none;"><input id="uname" value="${CurrentUser.uname }" style="display: none;">
									<div class="treeOfNavigation" id="treeOfNavigation">
										<div class="myTransaction" id="accordion" >
											<div class="panel" v-for="(Visitonemodile, index) in Visitonemodiles">
												<a data-toggle="collapse" data-parent="#accordion" :href='"#collapse"+index'>
													<span>{{Visitonemodile.mname}}</span>
												</a>
												<div :id='"collapse"+index' class="panel-collapse collapse">
													<div v-for="(tran, index) in trans" v-if="tran.mOneId == Visitonemodile.mOneId">
														<a @click="getRightData(tran.field1,index+1,tran.field2)">{{tran.trname}}</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</td>
								<td></td>
								<td>
									<table class="tableList" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<th>主题</th>
											<th>申请人</th>
											<th>所属部门</th>
											<th>需求岗位</th>
										</tr>
										<tbody>
											<tr v-for="rightData in rightDatas">
												<td>
													<img v-if="rightData.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
													<img v-else-if="rightData.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
													<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
													<a :href="url+'/'+rightData.recruitId">{{rightData.theme}}</a>
												</td>
												<td>{{rightData.principal}}</td>
												<td>{{rightData.department}}&nbsp;</td>
												<td>{{rightData.post}}</td>
											</tr>
											<tr>
												<td colspan="6">
													<span  style="margin-left:100px">
														<a @click="getRightData('',1)" class="button1 button1L" title="首页">首页</a><a @click="getRightData('',pageInfo.pageNum-1)" class="button1 button1M" title="上页">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="getRightData('',pageInfo.pageNum+1)" class="button1 button1M" title="下页">下一页</a><a @click="getRightData('',pageInfo.pages)"class="button1 button1R" title="尾页">尾页</a></span>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	
	
	
</body>

<script type="text/javascript" src="<%=basePath%>BackJsp/LDL/js/Mytransaction.js?ver=1.0.0.23"></script>

</html>
