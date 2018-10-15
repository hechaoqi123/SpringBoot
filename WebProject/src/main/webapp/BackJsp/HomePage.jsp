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
		<!--悬浮样式  -->
		<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"></link>
		<style type="text/css">
			.active{
				border: 1px solid #e3e3e3;
			}
			#sidebar{border-right: 1px solid #438EB9;}
			#navbar{height: 100px;}
			#demo{color: #f7f7f7;};
			.titles{
				font-size: 30px;
				text-align: center;
			}
			#tx .tx1{
			   float:left;
			}
			#im{
			   padding:10px; width:300px; height:50px;
			    border: 2px solid #000000;
			    -moz-border-radius: 15px; 
			    -webkit-border-radius: 15px; 
			    border-radius:15px;      
			}
			li{
			  list-style:none
			}
			.ww{
			  height:35px;
			  padding-left:50px;
			  line-height:35px;
			  margin-top:1px;
			}
			.ww:hover{
			  background:#08465B;
			}
			a:hover{
			   text-decoration:none
			}
			.Myli .submenu{
			  display:none;
			}
			.nav-list .w{
			   margin-top:1px;
			   opacity:0.8;
			   background-image:url(../assets/img/bg1.jpg);
			   background-position: -100px -100px;
			}
			.nav-list .w:hover{
			  background:#09384B;
			}
		</style>
</head>
	<body class="no-skin" style="background-image:url(../assets/img/bg1.jpg);background-position: -200px -100px;">
		<!-- /section:basics/navbar.layout -->
		<div style="width:300px" id="main-container" >
			<!-- #section:basics/sidebar -->
			<div id="sidebar"  class="sidebar responsive" style="font-size:17px;">
				<div id="tx" style="height:128px;border-bottom:1px solid #999">
					   <div class="tx1" style="margin-top:32px;margin-left:20px;background-image:url(../assets/img/img1.jpg);background-size:68px 68px;width:68px;height:68px; border-radius:68px;border:0px solid #fff"></div>
					   <div class="tx1" style="color:#f7f7f7;width:120px;font-size:14px;height:80px;margin-left:15px;padding-top:36px;">
					         <img src="../assets/img/userXStatus0.png"/>划水	<br/>
					        <p style="">探索协同运营管理之道</p>
					   </div>
				</div>
				<ul class="nav nav-list" id="oneModel">
				   <!-- 我的桌面 -->
					<li class="w">
						<a href="wsq/look.jsp" target="right_main" style="line-height:13px;color:#000;height:35px;font-size:13px;" id="home" >
							<span class="menu-text" style="margin-top:-10px;color:#E6E6E6">
							<img src="../assets/img/desktop.png" style="margin-right:10px;"/>我的桌面 </span>
						</a>
					</li>
					<!--  目标管理 -->
					<li  class="w">
                        <a href="#" class="dropdown-toggle" style="line-height:13px;height:35px;font-size:13px;">							
	                        <span class="menu-text" style="margin-top:-10px;color:#E6E6E6">
	                        <img src="../assets/img/persons.png" style="margin-right:10px;"/>目标管理 </span>
						</a>
						<ul class="submenu" style="background-image:url(../assets/img/bg1.jpg);background-position: -200px -100px;display:none;padding:0px;margin:0px;">
							<li class="ww" >
							  	<a href="wsq/gz.jsp" style="color:#f7f7f7;font-size:12px;" target="right_main">
									<span style="color:#E6E6E6">我的工作计划 </span>
									<b class="arrow"></b>
								</a>
							</li>
							<li class="ww">
								<a href="MyJsp.jsp" style="color:#f7f7f7;font-size:12px;" target="right_main">
								<span style="color:#E6E6E6">我的工作报告</span>
								</a>
							</li>
							<li class="ww">
								<a href="MyJsp.jsp" style="color:#f7f7f7;font-size:12px;" target="right_main">
								<span style="color:#E6E6E6">全部工作报告</span>
								</a>
								<b class="arrow"></b>
							</li>
						</ul>
					</li>
					<li class="w" v-for="Visitonemodile in Visitonemodiles">
						 <a href="#" class="dropdown-toggle" style="line-height:13px;height:35px;font-size:13px;">							
	                        <span class="menu-text" style="margin-top:-10px;color:#E6E6E6" v-bind:title="Visitonemodile.mdescribe">
	                        <img src="../assets/img/persons.png" style="margin-right:10px;"/>{{Visitonemodile.mname}}</span>
						</a>
						<ul v-for="Visittwomodile in Visittwomodiles" class="submenu" style="background-image:url(../assets/img/bg1.jpg);background-position: -200px -100px;display:none;padding:0px;margin:0px;">
							<li v-if="!(Visittwomodile.mOneId != Visitonemodile.mOneId)" class="ww" > 
							  	<a v-bind:href="Visittwomodile.murl" style="color:#f7f7f7;font-size:12px;" target="right_main">
									<span style="color:#E6E6E6">{{Visittwomodile.mname}}</span>
									<b class="arrow"></b>
								</a>
							</li>
						</ul>
					</li>
				<!-- 注销登陆 -->
					<li  class="w">
						<a href="#"target="right_main" id="cancel"  style="line-height:13px;color:#000;height:35px;font-size:13px;" id="home" >
							<span class="menu-text" style="margin-top:-10px;color:#E6E6E6">
							<img src="../assets/img/exit.png" style="margin-right:10px;"/>安全注销 </span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	
	</body>

<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
<script src="<%=basePath%>assets/js/ace.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
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
	$(".ww").click(function(){
	      $(".ww").each(function(){
	         $(this).css("background","")
	      })
	      $("a").css("text-decoration","none")
	      $(this).css("background","#08465B")
	     $(this).parent().css("background","")
	})
	var myTbody = new Vue({
		el:"#oneModel",
		data:{
			Visitonemodiles:"",
			Visittwomodiles:""
		}
	});
	var getvo = Vue.http.get(
	  	"/DuthorityManagementController/selectVisitonemodile"
	  ).then(function(data){
		  myTbody.Visitonemodiles=data.body;
		  return data.body;
	  },function(error){
	  	alert(1111);
	  });
	var getvt = Vue.http.get(
	  	"/DuthorityManagementController/selectVisittwomodile"
	  ).then(function(data){
		  myTbody.Visittwomodiles=data.body;
		  return data.body;
	  },function(error){
	  	alert(1111);
	  });
  </script>
</html>