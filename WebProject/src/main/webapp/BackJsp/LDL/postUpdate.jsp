<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'postUpdate.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesomes.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=basePath%>assets/css/view.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.css">
	<link rel="stylesheet" href="<%=basePath%>BackJsp/LDL/css/authorityManagement.css">
	
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
  </head>
  <body style="background-image: url('../assets/img/bg1.jpg');">
  <br>
	  <br>
	 <div id="usersVue">
  	<TABLE style="width: 100%; height: 100%; min-width: 950px;" border="0" cellspacing="0" cellpadding="0">
  <TBODY>
  <TR valign="top">
    <TD>&nbsp;</TD>
    <TD id="colloaForm">
      <FORM action="post/updateOnePost" method="post">
		<TABLE class="tableForm" style="table-layout: fixed;" border="0" cellspacing="0" cellpadding="0" summary="">
		<COLGROUP>
		<COL width="100">
		<COL>
		<TBODY>
		<TR>
		  <TD>&nbsp;名称<B style="color: red;">*</B></TD>
		  <TD id="dbf.name" dbf.type="required,unique(userX)">
		  	<INPUT class="fieldEditable" id="e.dbf.name" name="pid" value=" ${post.pid}"style="display: none;">
		  	<INPUT class="fieldEditable" id="e.dbf.name" name="deptid" value=" ${post.deptid}"style="display: none;">
		  	<INPUT class="fieldEditable" id="e.dbf.name" name="pname" value=" ${post.pname}">
		  </TD>
		 </TR>
		<TR>
		  <TD>&nbsp;描述</TD>
		  <TD id="dbf.description"><INPUT class="fieldEditable" id="e.dbf.description" value="${post.pname }"></TD></TR>
		<TR>
		  <TD>&nbsp;排序号<B style="color: red;">*</B></TD>
		  <TD id="dbf.sortId" dbf.type="number,required">
		  	<INPUT class="fieldEditable" id="e.dbf.sortId" value="${post.seq }" name="seq">
		  </TD>
		 </TR>
		<TR>
		  <TD>&nbsp;职责说明</TD>
		  <TD id="dbf.jobDesc">
		  	<TEXTAREA class="fieldEditable" id="e.dbf.jobDesc" style="height: 200px;" name="describes">
				${post.describes }
			</TEXTAREA>
		  </TD>
		  </TR>
		   <tr>
		 	<td></td>
		 	<td align="right">
		 		<input class="btn btn-default" type="button" value="修改角色用户" 
		 			@click="getUsers(${post.pid})" data-toggle="modal" data-target="#myModal"
		 		>
		 		<input class="btn btn-default" type="submit" value="提交修改">
		 	</td>
		 </tr>
	  </TBODY>
	  </TABLE>
      </FORM>
    </TD>
    <TD>&nbsp;</TD>
   </TR>
  </TBODY>
 </TABLE>
 
 
 
 
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
					<input type="text" class="form-control" v-model="uname">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" @click="getUsers">
							Go!
						</button>
					</span>
					</div><!-- /input-group -->
				</div>
				<div class="alootDiv">
					<div class="alootTrue">
						<div class="alootTrueUser">
							拥有用户
						</div>
						<div class="alootTrueUser" v-for="trueUser in trueUsers" @click="shiftTrueUser(trueUser.uid)">
							{{trueUser.uname}}
						</div>
					</div>
					<div class="alootFalse">
					<div class="alootTrueUser">
							未拥有用户
						</div>
						<div class="alootFalseUser" v-for="falseUser in falseUsers"  @click="shiftFalseUser(falseUser.uid)">
							{{falseUser.uname}}
						</div>
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
 </div> <!-- uservue -->
</BODY>
<script type="text/javascript">
//角色分配
function towModileAllocation (mTowId){
	usersVue.mTowId = mTowId;
	usersVue.getUsers();
}
var usersVue = new Vue({
  	el:"#usersVue",
	data:{
		trueUsers:"",
		falseUsers:"",
		pid:"",
		uname:""
	},
	methods:{
		getUsers:function(pid){
			this.pid = pid;
			this.$http.post("Users/postUser",{
					pid:this.pid,
					uname:this.uname
			},{emulateJSON: true}).then(function(data) {
				this.trueUsers = data.body.postTrueUser;
				this.falseUsers = data.body.postFalseUser;
		}, function(dataError) {
			
		})
	},
	shiftTrueUser:function(uid){
		this.$http.post("UsersPost/delUserspost",{
			uid:uid,
			pid:this.pid
		},{emulateJSON: true}).then(function(data) {
			this.getUsers(this.pid);
		}, function(error) {
			
		})
		
	},
	shiftFalseUser:function(uid){
		this.$http.post("UsersPost/addUserspost",{
	  				uid:uid,
	  				pid:this.pid
	  			},{emulateJSON: true}).then(function(data) {
	  				this.getUsers(this.pid);
	  			}, function(error) {
	  				
	  			})
	  		}
	  	}
	}); 
</script>
</html>
