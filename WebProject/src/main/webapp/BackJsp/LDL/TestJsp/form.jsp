<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'form.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
<script type="text/javascript"
	src="<%=basePath%>assets/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>assets/js/jquery.form.js"></script>
</head>

<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>

<body>
<div style="width: 150px;height: 50px; overflow: auto; border: 1px solid #cccccc;">
	<div style="width: 140px;height: 30px; background: #e3e3e3; float: left;"></div>
	<div style="width: 140px;height: 30px; background: #e3e3e3; float: left;"></div>
	<div style="width: 140px;height: 30px; background: #e3e3e3; float: left;"></div>
</div>

					[{"workspace":"","other":"2018/10/30","education":"","endDate":"132","sex":"2","cause":"21312","language":"","experience":"","principal":"admin","post":"123","major":"","peopleNumber":"","obligation":"312312","recruitId":55,"theme":"招聘申请-admin","department":"人事部","age":"3123","status":"驳回"},{"workspace":"","other":"2018/11/1","education":"","endDate":"2018/10/20","sex":"2","cause":"","language":"","experience":"","principal":"admin","post":"开发人员","major":"","peopleNumber":"10","obligation":"","recruitId":56,"theme":"招聘申请-流程1","department":"人事部","age":"","status":"填单"},{"workspace":"","other":"2018/11/1","education":"","endDate":"2018/10/19","sex":"2","cause":"","language":"","experience":"","principal":"admin","post":"1998/07/10","major":"","peopleNumber":"100","obligation":"","recruitId":57,"theme":"招聘申请-流程2","department":"人事部","age":"","status":"填单"},{"workspace":"","other":"2018/11/4","education":"","endDate":"","sex":"2","cause":"","language":"","experience":"","principal":"admin","post":"","major":"","peopleNumber":"","obligation":"","recruitId":58,"theme":"招聘申请-admin 2018-11-4 19:16:59","department":"人事部","age":"","status":"填单"}]

<div id="spanTest">
	<form  id="formadd" enctype="multipart/form-data">
		<table>
			<tr>
				<td>模块名字</td>
				<td><input type="text" name="mname" onblur="fu(this)"></td>
			</tr>
			<tr>
				<td>模块描述</td>
				<td><input type="text" name="mdescribe"></td>
			</tr>
			<tr>
				<td>模块状态</td>
				<td><input type="radio" checked="checked" name="msequnce">启用
					<input type="radio" name="msequnce">禁用</td>
			</tr>
			<tr>
				<td>模块标志图</td>
				<td><input type="file" name="file"></td>
			</tr>
		</table>
		 <button type="button" v-on:click="get">提交</button>    
	</form>
</div>
<span id="ss"></span>
</body>
<script type="text/javascript">
function fu(obj){
 	var datas = new FormData($("#formadd")[0]);
 	var a = [datas];
 	$("ss").html(a);	alert(a.toString().toLocaleLowerCase());
}
/* 
new Vue({
	el:'#form-add',
	data:{
		formData:new FormData($("#form-add")[0])
	},
	methods:{
		gets:function(){
			this.$http.get("submit",
				{
					params:{
						data:this.formData
					}
				}
			).then(function(data){
	                alert(data.bodyText);    
            },function(){
                console.log('请求失败处理');
            });
		}
	}
});
 */
function submitFunction() {
    //这里唯一需要注意的就是这个form-add的id
    var formData = new FormData($("#form-add")[0]);
   
    $.ajax({
        //接口地址
        url: '/submit' ,
        type: 'POST',
        data: formData,
        async: false,
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
        alert(data);
            //成功的回调
            if(data.code == 300){

            }

        },
        error: function (returndata) {
           //请求异常的回调
           // modals.warn("网络访问失败，请稍后重试!");
        }
    });
}

</script>
</html>
