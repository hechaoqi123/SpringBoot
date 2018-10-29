<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登记 - Colloa</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="BackJsp/gm/img/colloa.ico">
    <link rel="stylesheet" href="BackJsp/gm/css/font-awesome.min.css">
    <link rel="stylesheet" href="BackJsp/gm/css/view.css">
    <script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/viewCn.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/view.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/ckeditor.js"></script>

  </head>
  
  <body id=colloaBody>
  <table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0>
  <tr valign=top><td>&nbsp;</td><td id=colloaForm><form id="form"><DIV class=textBig>登记会议室</DIV><BR>
<DIV class=boxBorder style="PADDING-BOTTOM: 30px; PADDING-TOP: 30px; PADDING-LEFT: 30px; PADDING-RIGHT: 30px">
<DIV style="VERTICAL-ALIGN: top; DISPLAY: inline-block; WIDTH: 330px">
<TABLE cellSpacing=0 cellPadding=0 summary="" border=0>
<TBODY>
<TR>
<TD>
<IMG onclick="fieldGetValueBySource('dbf.thumbnails',this);" class=fieldGetValueBySource src="BackJsp/gm/img/fieldSource.gif">
<DIV id=e.dbf.thumbnails><IMG class=radius style="WIDTH: 300px" border=0 src="BackJsp/gm/img/noThumb.jpg"></DIV>
</TD></TR></TBODY></TABLE></DIV>
<DIV style="VERTICAL-ALIGN: top; DISPLAY: inline-block; WIDTH: 540px">
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 summary="" border=0>
<COLGROUP>
<COL width=80>
<COL>
<TBODY>
<TR vAlign=top>
<TD><B style="COLOR: red">*</B>名称</TD>
<TD><INPUT name="mname"></TD></TR>
<TR>
<TD>编号</TD>
<TD><INPUT name="mid" readonly="readonly"></TD></TR>
<TR>
<TD>容量</TD>
<TD><INPUT name="mcapacity"></TD></TR>
<TR>
<TD>位置</TD>
<TD><INPUT name="mlocation"></TD></TR>
<TR>
<TD>内部设备</TD>
<TD><INPUT name="mfacility"></TD></TR>
<TR>
<TD>管理人</TD>
<TD><INPUT name="mcustodian"></TD></TR>
<TR>
<TD>状态</TD>
<TD>
 <INPUT name="mstate" CHECKED type=radio value="正常">
 <IMG src="BackJsp/gm/img/userXStatus0.png">正常
 <INPUT type=radio value="维修" name="mstate">
 <IMG src="BackJsp/gm/img/userXStatus10.png">维修 
 <INPUT type=radio value="报废" name="mstate">
 <IMG src="BackJsp/gm/img/userXStatus-1.png">报废</TD></TR>
<TR>
<TD>附加描述</TD>
<TD><INPUT name="mdescribe"></TD></TR>
<TR>
<TD>相关附件</TD>
<TD><INPUT name="mdescribe"></TD></TR>
<tr>
<td><input type="button" value="确定" id="addMetting"></td>
</TR></TBODY>
</TABLE>
</DIV></DIV>
</form>
</td>
<td>&nbsp;</td></tr></table>

</body>
</html>


<script>
            //表单异步提交
        $("#addMetting").on("click",function(){
            $.ajax({ 
             url: 'metting/addMetting',
               type: 'post', 
               data: $('#form').serialize(), 
               dataType:'text', 
               success: function (data) {
                  alert("success");
                  window.location.href = "BackJsp/gm/metting"+data;
            }   
        })})
    
</script>
