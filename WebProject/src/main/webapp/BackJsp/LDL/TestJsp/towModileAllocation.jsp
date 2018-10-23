<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'towModileAllocation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
		.userSeek{
			width: 100%;
			height: 50px;
			border: 1px solid #000;
		}
		.alootDiv{
			width: 100%;
			height: 35%;
			border: 1px solid #e3e3e3;
		}
		.alootDiv > div{
			float: left;
		}
		.alootTrue{
			width: 50%;
			height:100%;
			border: 1px solid #e3e3e3;
			overflow: auto;
		}
		.alootFalse{
			width: 50%;
			height:100%;
			border: 1px solid #e3e3e3;
			overflow: auto;
		}
		.alootTrueUser{
			width: 100%;
			height:35px;
			float: left;
			line-height:35px;
			font-weight:bold;
			text-align:center;
			border-bottom: 1px solid #e3e3e3;
			background-color: #F1e8e8;
		}
		.alootFalseUser{
			width: 100%;
			height:35px;
			float: left;
			line-height:35px;
			font-weight:bold;
			text-align:center;
			border-bottom: 1px solid #e3e3e3;
			background-color: #F1e8e8;
		}
		.alootTrueUser:HOVER {
			background-color: #fff;
			
		}
		.alootFalseUser:HOVER {
			background-color: #fff;
		}
	</style>
</head>
<body>

<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" id="alootUser">
	开始演示模态框
</button>
<!-- 模态框（Modal） -->
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
					<input type="text" name="uname" v-model="uname"  @blur="getUsers">
				</div>
				<div class="alootDiv">
					<div class="alootTrue">
						<div class="alootTrueUser" v-for="trueUser in trueUsers" @click="shiftTrueUser(trueUser.uid)">{{trueUser.uname}}</div>
					</div>
					<div class="alootFalse">
						<div class="alootFalseUser" v-for="falseUser in falseUsers"  @click="shiftFalseUser(falseUser.uid)">{{falseUser.uname}}</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div>
</div><!-- /.modal --><br>
</body>
  <script>
  $("#alootUser").click(
  	function alootUser(){
		  usersVue.getUsers();
	  }
  );
  var usersVue = new Vue({
  	el:"#usersVue",
  	data:{
  		trueUsers:"",
  		falseUsers:"",
  		userstowmodiles:"",
  		mTowId:1,
  		uname:""
  	},
  	methods:{
  		getUsers:function(){
  			this.$http.post("Users/aootUser",{
  				mTowId:this.mTowId,
  				uname:this.uname
  			},{emulateJSON: true}).then(function(data) {
  				this.trueUsers = data.body.alootTrueUser;
  				this.falseUsers = data.body.alootFalseUser;
  			}, function(dataError) {
  				
  			})
  		},
  		shiftTrueUser:function(uid){
  			this.$http.post("Userstowmodile/delUserstowmodile",{
  				uid:uid,
  				mtowid:this.mTowId
  			},{emulateJSON: true}).then(function(data) {
  				this.getUsers();
  			}, function(error) {
  				
  			})
  			
  		},
  		shiftFalseUser:function(uid){
  			this.$http.post("Userstowmodile/addUserstowmodile",{
  				uid:uid,
  				mtowid:this.mTowId
  			},{emulateJSON: true}).then(function(data) {
  				this.getUsers();
  			}, function(error) {
  				
  			})
  		}
  	}
  }); 
  </script>
</html>
