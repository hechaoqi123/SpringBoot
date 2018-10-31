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
      <FORM action="post/addOnePost" method="post">
		<TABLE class="tableForm" style="table-layout: fixed;" border="0" cellspacing="0" cellpadding="0">
		<COLGROUP>
		<COL width="100">
		<COL>
		<TBODY>
		
		<TR>
		  <TD>&nbsp;名称<B style="color: red;">*</B></TD>
		  <TD id="dbf.name" dbf.type="required,unique(userX)">
		  	<INPUT class="fieldEditable" id="e.dbf.name" name="pname" value="">
		  </TD>
		 </TR>
		 <TR>
		  <TD>&nbsp;属于<B style="color: red;">*</B></TD>
		  <TD id="dbf.name" dbf.type="required,unique(userX)">
		  	<select name="deptid" id="deptVue">
		  		<option v-for="dept in depts" v-bind:value="dept.deptid">{{dept.deptname}}</option>
		  	</select>
		  </TD>
		 </TR>
		<TR>
		  <TD>&nbsp;描述</TD>
		  <TD id="dbf.description"><INPUT class="fieldEditable" id="e.dbf.description" value=""></TD></TR>
		<TR>
		  <TD>&nbsp;排序号<B style="color: red;">*</B></TD>
		  <TD id="dbf.sortId" dbf.type="number,required">
		  	<INPUT class="fieldEditable" id="e.dbf.sortId" value="" name="seq">
		  </TD>
		 </TR>
		<TR>
		  <TD>&nbsp;职责说明</TD>
		  <TD id="dbf.jobDesc">
		  	<TEXTAREA class="fieldEditable" id="e.dbf.jobDesc" style="height: 200px;" name="describes">
				
			</TEXTAREA>
		  </TD>
		  </TR>
		   <tr>
		 	<td></td>
		 	<td align="right">
		 		<input class="btn btn-default" type="submit" value="添加">
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
 
 
</BODY>
<script type="text/javascript">
$(function(){
	deptVue.getDeptVue();
});
  var deptVue = new Vue({
  	el:"#deptVue",
  	data:{
  		depts:""
  	},
  	methods:{
  		getDeptVue:function(){
  			this.$http.post('DeptController/selectDept',{
  				//参数
				},{emulateJSON:true}).then(function(data){
					this.depts = data.body;
				}),function(error){
					alert(error);
			}
  		}
  	}
  });
</script>
</html>
