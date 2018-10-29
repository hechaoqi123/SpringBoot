<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'carAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="BackJsp/gm/img/colloa.ico">
    <link rel="stylesheet" href="BackJsp/gm/css/font-awesome.min.css">
    <link rel="stylesheet" href="BackJsp/gm/css/view.css">
    <script type="text/javascript" src="BackJsp/gm/js/utility.js"></script>
    <script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/viewCn.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/view.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/ckeditor.js"></script>
  </head>
  
<body id=colloaBody>
<table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0>
<tr valign=top><td>&nbsp;</td><td id=colloaForm><form id="form"><DIV class=textBig>登记车辆</DIV><BR>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 summary="" border=0>
<COLGROUP>
<COL width=100>
<COL>
<COL width=100>
<COL width=380>
<TBODY>
<TR>
<TD><B style="COLOR: red">*</B>名称</TD>
<TD><INPUT name="cname"></TD>
<TD><B style="COLOR: red">*</B>牌号</TD>
<TD><INPUT name="cmarkname"></TD></TR>
<TR>
<TD>规格</TD>
<TD><INPUT name="cspecification"></TD>
<TD>油耗</TD>
<TD><INPUT name="coliconsumption"></TD></TR>
<TR>
<TD>单价</TD>
<TD><INPUT name="cprice" value=0></TD>
<TD>颜色</TD>
<TD><INPUT name="ccolour"></TD></TR>
<TR>
<TD>生产商</TD>
<TD><INPUT name="cmanufacturer"></TD>
<TD>生产日期</TD>
<TD><INPUT name="cmanudate"></TD></TR>
<TR>
<TD>供应商</TD>
<TD><INPUT name="csupplier"></TD>
<TD>采购日期</TD>
<TD><INPUT name="cpurchasing"></TD></TR>
<TR>
<TD>发动机号</TD>
<TD><INPUT name="cengine"></TD>
<TD>车架号</TD>
<TD><INPUT name="cframe"></TD></TR>
<TR>
<TD>存放区域</TD>
<TD><INPUT name="cdepositary"></TD>
<TD>管理人</TD>
<TD><INPUT name="ccustodian"></TD></TR>
<TR>
<TD>状态</TD>
<TD colSpan=3>
 <INPUT CHECKED type=radio value=正常 name="cstate">
  <IMG src="BackJsp/gm/img/userXStatus0.png">正常 
  <INPUT id=dbf.statusX type=radio value=维修 name="cstate">
  <IMG src="BackJsp/gm/img/userXStatus10.png">维修
  <INPUT id=dbf.statusX type=radio value=报废 name="cstate">
  <IMG src="BackJsp/gm/img/userXStatus-1.png">报废</TD></TR>
<TR>
<TD>附加描述</TD>
<TD colSpan=3><INPUT name="caddition"></TD></TR>
<TR>
<TD>相关附件</TD>
<TD colSpan=3>
<INPUT name="crelevant"></TD></TR>
<TR>
<TD>下次年检日期</TD>
<TD><INPUT name="casdate"></TD></TR>
<TR>
<TD>保险截止日期</TD>
<TD><INPUT name="cinsurancedate"></TD></TR>
<TR>
<TD>上次保养日期</TD>
<TD><INPUT name="cmaintaindate"></TD></TR>
<TR height=150>
<td><input type="button" value="确定" id="addCar"></td>
<TD>&nbsp;</TD>
<TD>&nbsp;</TD></TR></TBODY></TABLE>
</form>
</td><td>&nbsp;</td></tr></table>
</body>
</html>
<script>
            //表单异步提交
  $("#addCar").on("click",function(){
     $.ajax({ 
       url: 'car/addCar',
       type: 'post', 
       data: $('#form').serialize(), 
       dataType:'text', 
       success: function (data) {
          alert("success");
          window.location.href = "BackJsp/gm/car"+data;
       }   
     })
  })
