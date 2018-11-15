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
<form id="form" action="car/updateCar" method="post">
  <input name="cid" value="${car.cid}"style="display:none;"/>
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
<TD><INPUT id=e.dbf.name name="cname" class=fieldEditable value="${car.cname}"></TD>
<TD class=fieldLable><B style="COLOR: red">*</B>牌号</TD>
<TD><INPUT id=e.dbf.sno name="cmarkname" :value="${car.cmarkname}" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>规格</TD>
<TD><INPUT id=e.dbf.specification name="cspecification" :value="${car.cspecification}" class=fieldEditable></TD>
<TD class=fieldLable>油耗</TD>
<TD><INPUT id=e.dbf.text3 name="coliconsumption" :value="${car.coliconsumption}" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>单价</TD>
<TD><INPUT id=e.dbf.unitPrice name="cprice" :value="${car.cprice}" class="fieldEditable textAmount" value></TD>
<TD class=fieldLable>颜色</TD>
<TD><INPUT id=e.dbf.text2 name="ccolour" :value="${car.ccolour}" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>生产商</TD>
<TD><INPUT id=e.dbf.produceXSource name="cmanufacturer" :value="${car.cmanufacturer}" class=fieldEditable></TD>
<TD class=fieldLable>生产日期</TD>
<TD>
<input type="date" name="cmanudate"/></TD></TR>
<TR>
<TD class=fieldLable>供应商</TD>
<TD><INPUT id=e.dbf.supplyXSource name="csupplier" :value="${car.csupplier}" class=fieldEditable></TD>
<TD class=fieldLable>采购日期</TD>
<TD>
<input type="date" name="cpurchasing"/></TD></TR>
<TR>
<TD class=fieldLable>发动机号</TD>
<TD><INPUT id=e.dbf.text0 name="cengine" :value="${car.cengine}" class=fieldEditable></TD>
<TD class=fieldLable>车架号</TD>
<TD><INPUT id=e.dbf.text1 name="cframe" :value="${car.cframe}" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>存放区域</TD>
<TD><INPUT id=e.dbf.regionXSource name="cdepositary" :value="${car.cdepositary}" class=fieldEditable></TD>
<TD class=fieldLable>管理人</TD>
<TD><INPUT id=e.dbf.ownerXSource name="ccustodian" :value="${car.ccustodian}" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>状态</TD>
<TD>
<INPUT id=dbf.statusX CHECKED type=radio value=正常 name="cstate" :value="${car.cstate}">
<IMG src="BackJsp/gm/img/userXStatus0.png">正常 
<INPUT id=dbf.statusX type=radio value=维修 name="cstate" :value="${car.cstate}">
<IMG src="BackJsp/gm/img/userXStatus10.png">维修 
<INPUT id=dbf.statusX type=radio value=报废 name="cstate" :value="${car.cstate}">
<IMG src="BackJsp/gm/img/userXStatus-1.png">报废</TD></TR>
<TR>
<TD class=fieldLable>附加描述</TD>
<TD><INPUT id=e.dbf.description name="caddition" :value="${car.caddition}" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>相关附件</TD>
<TD>
<INPUT id=e.dbf.description name="crelevant" :value="${car.crelevant}" class=fieldEditable>
<DIV id=e.dbf.memoLinks></DIV></TD></TR>
<TR>
<TD class=fieldLable>下次年检日期</TD>
<TD>
<input type="date" name="casdate"/></TD></TR>
<TR>
<TD class=fieldLable>保险截止日期</TD>
<TD>
<input type="date" name="cinsurancedate"/>
</TD></TR>
<TR>
<TD class=fieldLable>上次保养日期</TD>
<TD>
<input type="date" name="cmaintaindate"/>
</TD></TR>
<TR height=150>
<TD class=fieldLable>&nbsp;</TD>
<TD>&nbsp;</TD></TR>

</TBODY></TABLE>
<a class="button" id="sub" href="javascript:" >确认</a>
<a class="button" id="ret" href="javascript:">取消</a>
</form>
</body>
</html>
<script>
      $("#sub").click(function(){
           $("#form").submit();
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/gm/car.jsp";
      })  
</script>