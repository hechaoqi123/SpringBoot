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
		<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
		<script src="<%=basePath%>assets/js/ace.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
		<style type="text/css">
		.sidebar{
			width: 200px;
			}
			li{
			  list-style:none;
			  height: auto;
			}
			.ww{
			  height:35px;
			  padding-left:90px;
			  line-height:35px;
			  margin-top:1px;
			}
			.ww:hover{
			  background:#ffFF;
			}
			.nav-list .w{
			   margin-top:1px;
			   opacity:0.8;
			   padding-left:-10;
			   background-color: #e3e3e3;
			}
			.nav-list .w a > span{
				color:#000;
				background-color: #f84fa;
			}
			.nav-list .w:hover{
			  background:#09300;
			}
			.nav-list .w > a > span{
				margin: 0 50px;
			}
		</style>
</head>
	<body>
	
	<input type="checkbox" name="sname" id="c1" value="sid" class="c1"><span>1212</span>
	<input type="checkbox" name="sname" id="c1" value="sid" class="c1"><span>1212222</span>
	<input type="checkbox" name="sname" id="c1" value="sid" class="c1"><span>11111</span>
	<input type="text" id="t1">
	
	
	<input type="checkbox" name="sname" id="c1" value="sid" class="c1"><span>1212</span>
	<input type="checkbox" name="sname" id="c1" value="sid" class="c1"><span>1212222</span>
	<input type="checkbox" name="sname" id="c1" value="sid" class="c1"><span>11111</span>
	<input type="text" id="t1">
	<script type="text/javascript">
		var b="";
		$(".c1").change(function(){
				var	a = $(this).next().html()+",";
				alert(a);
				var bool = !($(this).is(':checked'));
				alert(bool+"zheshi    bool");
				if(bool){
					//$("#t1").val("");
					b = b.replace($(this).next().html()+",","");
					alert(b + "    zheshi b");
					$("#t1").val(b);
				}else{
					$("#t1").val(b+=a);
				}
		});
	</script>
		<!-- <div id="sidebar" class="sidebar">
			<ul class="nav nav-list" >
				<li class="w">
					 <a href="#" class="dropdown-toggle">							
                        <span>1</span>
					</a>
					<ul class="submenu" style="display:none;padding:0px;">
						<li class="ww"> 
						  	<a style="color:#f7f7f7;font-size:12px;">
								<span>22</span>
							</a>
						</li>
						<li class="ww"> 
						  	<a style="color:#f7f7f7;font-size:12px;">
								<span>22</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
			<ul class="nav nav-list" id="oneModel">
				<li class="w" v-for="Visitonemodile in Visitonemodiles">
					 <a href="#" class="dropdown-toggle">							
                        <span>{{Visitonemodile.mname}}</span>
					</a>
					<ul class="submenu" style="display:none;padding:0px;">
						<li class="ww" v-for="Visittwomodile in Visittwomodiles" v-if="!(Visittwomodile.mOneId != Visitonemodile.mOneId)"  > 
						  	<a style="color:#f7f7f7;font-size:12px;">
								<span>{{Visittwomodile.mname}}</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div> -->
	</body>


<script type="text/javascript">
	
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