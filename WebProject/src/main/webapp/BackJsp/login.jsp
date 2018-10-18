<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Login - Colloa</title>
	<link rel="shortcut icon" href="../assets/images/colloa.ico">
	<link rel="stylesheet" href="<%=basePath%>assets/css/font-awesome-4.7.0/css/font-awesomes.css" type="text/css"/>
	<link rel="stylesheet" href="<%=basePath%>assets/css/view.css"/>
	<script type="text/javascript" src="<%=basePath%>assets/js/viewCn.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/view.js"></script>
</head>

<body id=colloaBody>
<table style="height:100%;" cellspacing="0" cellpadding="0" border="0">
    <tr height=35px>
      <td style="color:lightyellow;">&nbsp; </td>
    </tr>
    <tr>
      <td id=colloaLogin align=center>
        <div id=colloaName><img src='/assets/img/10oa.png' height=40px></div>
        <img src="/assets/img/dotBlue.gif" style="cursor:pointer;"> <img src="/assets/img/dotGreen.gif" style="cursor:pointer;"> <img src="/assets/img/dotYellow.gif" style="cursor:pointer;"> <img src="/assets/img/dotRed.gif" style="cursor:pointer;"> <img src="/assets/img/dotGray.gif" style="cursor:pointer;"><br><br>
        <form id="login" action="../Users/getOne.action" method="post">
          <table cellspacing="0" cellpadding="5" border="0" style="width:250px;table-layout:fixed;" align=center><col width=40px><col>
            <tr>
            	<td class=left align=center><img src="/assets/img/person.png"></td>
            	<td class=right>
            		<input  placeholder="请输入用户名" type=text name="unum" maxLength=20 value="">
            	</td>
            </tr>
            <tr height=5px>
            	<td colspan=2></td>
            </tr>
            <tr>
            	<td class=left align=center>
            		<img src="/assets/img/lock.png">
            	</td>
            	<td class=right>
            		<input placeholder="请输入密码" type=password name="upass" maxLength=20 value="">
            	</td>
            </tr>
            <tr height=5px><td colspan=2></td></tr>
            <tr><td colspan=2 class=button align=center style="color: #cee2fc;"><input type="submit" value="登录系统"></td></tr>
            <tr height=5px><td colspan=2></td></tr>
            <tr><td colspan=2 id=oInform align=center>&nbsp;</td></tr>
        </table>
        </form>
        <br><br>
      </td>
    </tr>
    <tr height=35px>
      <td align=center><a>版权所有&copy; 二进制软件有限公司</a></td>
    </tr>
</table>

</body>
<script>
 /* function SendForm(){
	$("login").submit();
   } */

  
</script>
</html>
