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
		      姓名<i style="color:red">*</i>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" readonly="readonly" name="wbname"style="width:600px;border-right:none;"value="${all[0].wbname}"/><br>
		       头衔&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" readonly="readonly" name="wbtx"style="width:600px;border-right:none;"/><br>
		       性别&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"readonly="readonly"  value="${all[0].wbxb}" name="wbxb">
		     <br>
		       所属单位<input type="text" name="wbssdw"readonly="readonly" style="width:600px;border-right:none;"value="${all[0].wbssdw}"/><br>
		       电话<i style="color:red">*</i>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" readonly="readonly" name="wbphone"style="width:600px;border-right:none;"value="${all[0].wbphone}"/><br>
		       移动电话<input type="text" name="wbphonenum"style="width:600px;border-right:none;"readonly="readonly" value="${all[0].wbphonenum}"/><br>
		       电子邮件<input type="text" name="wbyj"style="width:600px;border-right:none;"readonly="readonly" value="${all[0].wbyj}"/><br>
		       即时通讯<input type="text" name="wbjstx"style="width:600px;border-right:none;"readonly="readonly" value="${all[0].wbjstx}"/><br>
		       备注&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="wbbz"readonly="readonly" style="width:600px;border-right:none;"value="${all[0].wbbz}"/><br>
       		<p>
            
            
            </p>
       		
       </form>
       </div>
  </body>
</html>


