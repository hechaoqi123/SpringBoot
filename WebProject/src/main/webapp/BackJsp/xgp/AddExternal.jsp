<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddExternal.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.0.3.min.js"></script>
  <style type="text/css">
    #zero{
      width:700px;
      height:100%;
      background-color:#FFFFFF;
      margin-left:150px;
    }
    #adds{
      width:700px;
      height:100%;
      background-color:#FFFFFF;
      margin-left:150px;
    }
    #adds input{
     border:2px solid #E5E5E5;
    }
    #add{
       margin-left:300px;
       margin-top:50px;
       width:100px;
       height:50px;
       font-size:20px;
    }
  </style>
  </head>
  
  <body style="background-image:url(../assets/img/bg1.jpg)">
  <div id="zero">
    <form id="adds">
		       分类&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		       <select name="wbfl"style="width:600px;border-right:none;">
		         <option></option>
		         <option>快递服务</option>
		         <option>外卖订餐服务</option>
		         <option>银行客服服务</option>
		         <option>其他服务</option>
		       </select>
		       <br>
		      姓名<i style="color:red">*</i>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="wbname"style="width:600px;border-right:none;"/><br>
		       头衔&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="wbtx"style="width:600px;border-right:none;"/><br>
		       性别&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" value="男" name="wbxb">男
		     <input type="radio" value="女" name="wbxb">女<br>
		       所属单位<input type="text" name="wbssdw"style="width:600px;border-right:none;"/><br>
		       电话<i style="color:red">*</i>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="wbphone"style="width:600px;border-right:none;"/><br>
		       移动电话<input type="text" name="wbphonenum"style="width:600px;border-right:none;"/><br>
		       电子邮件<input type="text" name="wbyj"style="width:600px;border-right:none;"/><br>
		       即时通讯<input type="text" name="wbjstx"style="width:600px;border-right:none;"/><br>
		       备注&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="wbbz"style="width:600px;border-right:none;"/><br>
       		<p>
   	         <button type="button" class="btn btn-primary btn-lg active" id="add">添加</button>
            </p>
       		
       </form>
       </div>
  </body>
</html>


<script>

    $("#add").click(function(){
        $.ajax({
            url:"Wb/addWb",
            //contentType:"application/json",
            type:"post",
            data:$("#adds").serialize(),//将数组转成json字符串
            dataType:"json",
            success:function(data){
               window.location.href="BackJsp/xgp/External.jsp";
            }
        })
    }) 

</script>

