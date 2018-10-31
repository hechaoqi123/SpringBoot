<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>事务 - Colloa</title>
  <link rel="shortcut icon" href="http://cloud.10oa.com/trial/images/colloa.ico">
  <link rel="stylesheet" href="BackJsp/hcq2/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/hcq2/css/view.css">
  <script type="text/javascript" src="BackJsp/hcq2/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/view.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/utility.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/ckeditor.js"></script>
  <style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody"><table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><table style="TABLE-LAYOUT: fixed" class="tableForm" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">${apply.theme}</td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input id="dbf.priority" name="dbf.priority" value="-1" type="radio" autocomplete="off" disabled="">低<input id="dbf.priority" name="dbf.priority" value="0" checked="" type="radio" autocomplete="off" disabled="">中<input id="dbf.priority" name="dbf.priority" value="1" type="radio" autocomplete="off" disabled="">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">${apply.status}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">&nbsp;</td></tr></tbody></table>
<div>&nbsp;</div>
   <div class="formTaskflowContainer">
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>差旅费报销单</strong></span></div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col width="180">
<col width="100">
<col width="280">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>出差人姓名</td>
<td>
  <input name="username" class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td>
  <select id="dept" name="dept" style="border: 0px; font-size: 14px; width: 275px; height: 25px;"><option value="人事部">人事部</option><option value="总经办">总经办</option><option value="财务部">财务部</option><option value="技术部">技术部</option><option value="营销部">营销部</option></select>
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>报销日期</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
  <input name="submitdate" class="fieldEditable">
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">出差事由</td>
<td colspan="5" style="padding:0px;margin:0px;">
  <textarea name="cause" class="fieldEditable" style="HEIGHT: 84px"></textarea>
</td></tr></tbody>
  </table>
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col width="120">
<col>
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="50"></colgroup>
<tbody id="tb">
<tr>
<td style="TEXT-ALIGN: center">起止时间</td>
<td style="TEXT-ALIGN: center">起止地点</td>
<td style="TEXT-ALIGN: center">描述</td>
<td style="TEXT-ALIGN: center">长途交通费</td>
<td style="TEXT-ALIGN: center">市内交通费</td>
<td style="TEXT-ALIGN: center">住宿费</td>
<td style="TEXT-ALIGN: center">出差补贴</td>
<td style="TEXT-ALIGN: center">其他费用</td>
<td style="TEXT-ALIGN: right">
   <input onclick="addRow();" style="width:30px" type="button" value="+" name="增加行">
</td></tr>
<tr>
	<td><input name="costs[0].begindate" class="fieldEditable"></td>
	<td><input name="costs[0].beginaddress" class="fieldEditable"></td>
	<td><input name="costs[0].remark" class="fieldEditable"></td>
	<td><input name="costs[0].field1" onblur="cachea(this)" onfocus="cachea(this)" onchange="money1(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field2" onblur="cachea(this)" onfocus="cachea(this)" onchange="money2(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field3" onblur="cachea(this)" onfocus="cachea(this)" onchange="money3(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field4" onblur="cachea(this)" onfocus="cachea(this)" onchange="money4(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field5" onblur="cachea(this)" onfocus="cachea(this)" onchange="money5(this)" class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-"></td>
</tr>
<tr>
	<td><input name="costs[1].begindate" class="fieldEditable"></td>
	<td><input name="costs[1].beginaddress" class="fieldEditable"></td>
	<td><input name="costs[1].remark" class="fieldEditable"></td>
	<td><input name="costs[1].field1" onblur="cachea(this)" onfocus="cachea(this)" onchange="money1(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field2" onblur="cachea(this)" onfocus="cachea(this)" onchange="money2(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field3" onblur="cachea(this)" onfocus="cachea(this)" onchange="money3(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field4" onblur="cachea(this)" onfocus="cachea(this)" onchange="money4(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field5" onblur="cachea(this)" onfocus="cachea(this)" onchange="money5(this)" class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-"></td>
</tr>
<tr>
	<td><input name="costs[2].begindate" class="fieldEditable"></td>
	<td><input name="costs[2].beginaddress" class="fieldEditable"></td>
	<td><input name="costs[2].remark" class="fieldEditable"></td>
	<td><input name="costs[2].field1" onblur="cachea(this)" onfocus="cachea(this)" onchange="money1(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field2" onblur="cachea(this)" onfocus="cachea(this)" onchange="money2(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field3" onblur="cachea(this)" onfocus="cachea(this)" onchange="money3(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field4" onblur="cachea(this)" onfocus="cachea(this)" onchange="money4(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field5" onblur="cachea(this)" onfocus="cachea(this)" onchange="money5(this)" class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-"></td>
</tr>
</tbody></table>
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="50"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">小计</td>
<td id="money1">&nbsp;</td>
<td id="money2">&nbsp;</td>
<td id="money3">&nbsp;</td>
<td id="money4">&nbsp;</td>
<td id="money5">&nbsp;</td>
<td>&nbsp;</td></tr></tbody></table>
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col>
<col width="80">
<col width="130"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">合计（大写）</td>
<td id="合计大写" dbf.type="" dbf.source="">
  <input id="daxie" name="field1" readonly="true" style="border:0px;width:500px;text-align:center;">&nbsp;</td>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">合计 <input onclick="calculate();" type="button" value="=" name="合计按钮"></td>
<td id="dbf.budget" style="COLOR: rgb(204,0,0); TEXT-ALIGN: right" dbf.type="amount,required" dbf.source="">
  <input name="total" readonly="true" id="jisuan" class="fieldEditable textAmount" value="0"></td></tr></tbody></table>
<div style="TEXT-ALIGN: left">* 填单人根据规定，提交给主管审批。在主管审批或上级审批通过后，请打印本电子单据并且粘贴上原始票据，传递给财务处理。</div>
</div>
<br/><br/>
<table style="TABLE-LAYOUT: fixed" class="tableForm" border="0" cellspacing="0" cellpadding="0" align="center">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view.htm?1000041,1000475&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>
<div style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;"><img src="./事务 - Colloa_files/userX0.gif"> 李萌 <span class="textGray">(2016/4/12 10:03)</span></div>
<div style="padding:0px 10px 5px 30px;">[<b>提交主管审批</b>] </div><div style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;"><img src="./事务 - Colloa_files/userX0.gif"> 李萌 <span class="textGray">(2016/4/12 10:32)</span></div>
<div style="padding:0px 10px 5px 30px;">[<b>同意并转填单人贴单</b>] </div><div style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;"><img src="./事务 - Colloa_files/userX0.gif"> 李萌 <span class="textGray">(2016/5/7 17:26)</span></div>
<div style="padding:0px 10px 5px 30px;">[<b>传递给财务处理</b>] </div><div style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;"><img src="./事务 - Colloa_files/userX0.gif"> 严必行 <span class="textGray">(2016/7/7 18:01)</span></div>
<div style="padding:0px 10px 5px 30px;">[<b>付款并通知填单人</b>] </div><div style="padding:5px 10px 0px 10px;border-top:1px dotted #ddd;"><img src="./事务 - Colloa_files/userX0.gif"> 李萌 <span class="textGray">(2016/7/7 18:01)</span></div>
<div style="padding:0px 10px 5px 30px;">[<b>结束流程</b>] </div>
</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table></body></html>