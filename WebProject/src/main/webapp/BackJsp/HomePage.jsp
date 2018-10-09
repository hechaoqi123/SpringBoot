<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><!--强制IE8采用低版本方式渲染  -->
		<meta charset="utf-8" />
		<title>首页</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/ace.min.css" id="main-ace-style" />
		<!--悬浮样式  -->
		<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"></link>
		<style type="text/css">
			.active{
				border: 1px solid #e3e3e3;
			}
			#sidebar{border-right: 1px solid #438EB9;}
			#navbar{height: 100px;}
			#demo{color: #fff;};
			.titles{
				font-size: 30px;
				text-align: center;
			}
		</style>
</head>
	<body class="no-skin">
		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive" style="font-size:17px">
				<ul class="nav nav-list" id="ulb">
					<li class="active">
						<a href="getAllLog2.action" id="home" target="right_main">
							<i class="menu-icon fa fa-television"></i>
							<span class="menu-text"> 首页 </span>
						</a>
						<b class="arrow"></b>
					</li>
					
					<!-- 权限管理 -->
					<li class="Myli" style="display:none">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-cog"></i>
							<span class="menu-text">系统设置</span>
							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>

						<ul class="submenu">
							<li class="ww">
								<a href="MyJsp.jsp" class="test" target="right_main">
									<i class="menu-icon fa fa-caret-right"></i>
									MyJsp.jsp
								</a>
								<b class="arrow"></b>
							</li>
							<li class="ww">
								<a href="MyJsp.jsp" class="test" target="right_main">
									<i class="menu-icon fa fa-caret-right"></i>
									MyJsp.jsp
								</a>
								<b class="arrow"></b>
							</li>
							<li class="ww">
								<a href="cancel.action"  id="cancel" class="test">
								    注销登陆
								</a>
								<b class="arrow"></b>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="main-content">
				<div class="page-content">
					<iframe src="MyJsp.jsp" name="right_main" frameborder="0" scrolling="auto" width="100%" height="1900px"></iframe> 
				</div>
			</div>
		</div>


	</body>

<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
<script src="<%=basePath%>assets/js/ace.min.js"></script>
<script type="text/javascript">

	$("#cancel").click(function(){
	      if(confirm("是否退出？")){
	         return true;
	      }else{
	        return false;
	      }
	 })
	function quit_login(){
		if(confirm('是否要退出系統？'))window.top.location='login.jsp';
	};
	function Myli_none(){
		var myli_html = $(".Myli ul").html();
		if(myli_html == ""){
			$(".Myli").css("display","none");
		}
	};
	$("#home").click(function(){
	  $(".test").css("background","#ffffff")
	})
	$(".test").click(function(){
	      $(".test").css("background","#ffffff")
	      $(this).css("background","#AFEEEE")
	})
  //显示功能菜单
	$(".ww").each(function(){
	  $(this).parent().parent().css("display","block")
	})
  </script>
</html>