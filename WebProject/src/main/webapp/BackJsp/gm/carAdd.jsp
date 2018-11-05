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
    <script type="text/javascript" src="BackJsp/gm/js/utility.js"></script>
    <script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/viewCn.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/view.js"></script>
    <script type="text/javascript" src="BackJsp/gm/js/ckeditor.js"></script>
  </head>
<body id=colloaBody>
<form id="form">
<table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0>
<tr valign=top><td>&nbsp;</td><td id=colloaForm>
<DIV class=textBig>登记车辆</DIV><BR>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 summary="" border=0>
<COLGROUP>
<COL width=100>
<COL>
<COL width=100>
<COL width=380>
<TBODY>
<TR>
<TD class=fieldLable><B style="COLOR: red">*</B>名称</TD>
<TD><INPUT id=e.dbf.name name="cname" class=fieldEditable></TD>
<TD class=fieldLable><B style="COLOR: red">*</B>牌号</TD>
<TD><INPUT id=e.dbf.sno name="cmarkname" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>规格</TD>
<TD><INPUT id=e.dbf.specification name="cspecification" class=fieldEditable></TD>
<TD class=fieldLable>油耗</TD>
<TD><INPUT id=e.dbf.text3 name="coliconsumption" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>单价</TD>
<TD><INPUT id=e.dbf.unitPrice name="cprice" class="fieldEditable textAmount"></TD>
<TD class=fieldLable>颜色</TD>
<TD><INPUT id=e.dbf.text2 name="ccolour" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>生产商</TD>
<TD><INPUT id=e.dbf.produceXSource name="cmanufacturer" class=fieldEditable></TD>
<TD class=fieldLable>生产日期</TD>
<TD>
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.produceXTime name="cmanudate" class=fieldEditable contentEditable=true></DIV></TD></TR>
<TR>
<TD class=fieldLable>供应商</TD>
<TD id=dbf.supplyXSource><INPUT id=e.dbf.supplyXSource name="csupplier" class=fieldEditable></TD>
<TD class=fieldLable>采购日期</TD>
<TD>
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.supplyXTime name="cpurchasing" class=fieldEditable contentEditable=true></DIV></TD></TR>
<TR>
<TD class=fieldLable>发动机号</TD>
<TD><INPUT id=e.dbf.text0 name="cengine" class=fieldEditable></TD>
<TD class=fieldLable>车架号</TD>
<TD><INPUT id=e.dbf.text1 name="cframe" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>存放区域</TD>
<TD><INPUT id=e.dbf.regionXSource name="cdepositary" class=fieldEditable></TD>
<TD class=fieldLable>管理人</TD>
<TD><INPUT id=e.dbf.ownerXSource name="ccustodian" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>状态</TD>
<TD>
<INPUT id=dbf.statusX CHECKED type=radio value=正常 name="cstate" autocomplete="off">
<IMG src="BackJsp/gm/img/userXStatus0.png">正常 
<INPUT id=dbf.statusX type=radio value=维修 name="cstate" autocomplete="off">
<IMG src="BackJsp/gm/img/userXStatus10.png">维修 
<INPUT id=dbf.statusX type=radio value=报废 name="cstate" autocomplete="off">
<IMG src="BackJsp/gm/img/userXStatus-1.png">报废</TD></TR>
<TR>
<TD class=fieldLable>附加描述</TD>
<TD><INPUT id=e.dbf.description name="caddition" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>相关附件</TD>
<TD>
<INPUT id=e.dbf.description name="crelevant" class=fieldEditable>
<DIV id=e.dbf.memoLinks></DIV></TD></TR>
<TR>
<TD class=fieldLable>下次年检日期</TD>
<TD>
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.time0 name="casdate" class=fieldEditable contentEditable=true></DIV></TD></TR>
<TR>
<TD class=fieldLable>保险截止日期</TD>
<TD>
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.time1 name="cinsurancedate" class=fieldEditable contentEditable=true></DIV></TD></TR>
<TR>
<TD class=fieldLable>上次保养日期</TD>
<TD>
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.time2 name="cmaintaindate" class=fieldEditable contentEditable=true></DIV></TD></TR>
<TR height=150>
<TD class=fieldLable>&nbsp;</TD>
<TD>&nbsp;</TD></TR>
<tr><td><input type="button" value="确定" id="addCar"></td>
</tr>
</TBODY></TABLE>
</form>
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
   
 </script>