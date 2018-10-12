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

<div id="spanTest">
	<form  id="form-add" enctype="multipart/form-data">
		<table>
			<tr>
				<td>模块名字</td>
				<td><input type="text" name="mname"></td>
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
</body>
<script type="text/javascript">
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
