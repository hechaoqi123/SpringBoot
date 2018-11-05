<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <base href="<%=basePath%>">
<head>	
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>新增工作任务* - Colloa</title>
  <link rel="shortcut icon" href="http://cloud.10oa.com/trial/images/colloa.ico">
  <link rel="stylesheet" href="<%=basePath%>BackJsp/wsq/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=basePath%>BackJsp/wsq/css/view.css">
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/viewCn.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/view.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/utility.js"></script>
  <script type="text/javascript" src="<%=basePath%>BackJsp/wsq/js/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
</head>
<body id="colloaBody">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody>
<tr valign="top"><td>&nbsp;</td><td id="colloaForm">
<div class="formTaskflowContainer">
<form action="/task/insert" method="post" class="formTaskflow" id="formflow">
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">新增任务</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource"><input name="detailid" value="${didd}" style="display:none">${name}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td>&nbsp;优先级: <input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr></tbody></table>
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td id="dbf.subject" style="FONT-SIZE: 20px; FONT-WEIGHT: bold; TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type="required">
 <!-- 标题 --><input name="tname" id="tname" value="请输入任务标题" class="pname"  style="height:40px;width:1000px; font-size: 20px; font-weight: bold; text-align: center;"></input>
</td>
</tr></tbody></table>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="100">
<col width="350">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center">任务分类</td>
<td>
<input id="dbf.psid2"  type="radio" value="0" name="rwfl" autocomplete="off">常规 
<input id="dbf.psid2" type="radio" value="10" name="rwfl" autocomplete="off">行政
 <input id="dbf.psid2" type="radio" value="20" name="rwfl" autocomplete="off">人事
  <input id="dbf.psid2" type="radio" value="30" name="rwfl" autocomplete="off">财务 
  <input id="dbf.psid2" type="radio" value="40" name="rwfl" autocomplete="off">业务
  <input  type="text" value="0" name="rwfl" style="display:none">  
  <input id="dbf.psid2" checked type="radio" value="项目" name="rwfl	" autocomplete="off">项目</td>
<td style="TEXT-ALIGN: center">从属于</td>
<td ><select style="width:445px; border: #F4F4F4" class="planname" id="planname" name="itemid"></select></td></tr>
<tr>
<td style="TEXT-ALIGN: center">创建人</td>
<td><select style="width:342px; border: #F4F4F4" class="username" id="username" name="detailld"></select></td>
<td style="TEXT-ALIGN: center">所属部门</td>
<td><select style="width:445px; border: #F4F4F4" class="deptname" id="deptName" name="deptid"></select></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>开始时间</td>
<td><input style="width:338px; border: #F4F4F4" name="ksdeta" class="ksdeta" id="ksdeta"></td>
<td style="TEXT-ALIGN: center">结束时间</td>
<td><input style="width:445px; border: #F4F4F4" name="jsdeta" class="jsdeta" id="jsdeta"></td></tr>
<tr>
<td style="TEXT-ALIGN: center"><strong><font color="#ff0000">*</font></strong>执行人</td>
<td ><select style="width:342px; border: #F4F4F4" class="Kname" id="Kname" name="Kname"></select></td>
<td style="TEXT-ALIGN: center">工作量</td>
<td><input style="width:338px; border: #F4F4F4" name="workload" class="workload" id="workload"></td>
</tr>
<tr>
<td style="TEXT-ALIGN: center">任务说明</td>
<td id="任务说明" style="VERTICAL-ALIGN: top ;height:150px;" colspan="3" dbf.source="" dbf.type="">
<input style="width:900px; height:150px; border: #F4F4F4" name="rwsm" class="rwsm" id="rwsm">
</td>
</tr>

<tr>
<td style="TEXT-ALIGN: center">执行结果</td>
<td id="执行结果" style="HEIGHT: 150px; VERTICAL-ALIGN: top" colspan="3" dbf.source="" dbf.type="">
<input style="width:900px; height:150px; border: #F4F4F4" name="zsjg" class="zsjg" id="zsjg								">
</td>
</tr>
</tbody></table>
<input style="margin-left:60px;height:30px;width:50px" type="submit" value="保存" id="add"/>
</form></div>
<form method="post"><input type="hidden" id="viewState" name="viewState"></form>
 
<!-- <div id="_vWorkflowActionsShow" align="right">
  
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;保存&#39;,150,1);return false;">保存</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转执行&#39;,1,1);return false;">转执行</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;直接关闭任务&#39;,1,1);return false;">直接关闭任务</a>
<a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a>
</div> --><br>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
<colgroup>
<col width="60%"><col width="2%"><col>
</colgroup><tbody>
<tr valign="top">
<td class="boxBorder">
<div style="padding:2px 10px;">
<div style="float:right;">
<a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?133010&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>
</td>
<td></td>
<td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
<div id="fieldGetValueBySource.dbf.endTime" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow: hidden auto; height: 250px; width: 358px; top: 171px; left: 749px; display: none;">
<iframe src="BackJsp/wsq/css/fieldDate.html" style="width:100%;height:95%;" frameborder="0"></iframe>
</div>
<div id="fieldGetValueBySource.dbf.psid" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow: hidden auto; height: 250px; width: 358px; top: 122px; left: 749px; display: none;"><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="0" style="height:auto;" class="">(空)</div>
<div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000290" style="height:auto;" class="">销售部2016年度工作计划</div>
<div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000285" style="height:auto;" class="">销售部2016年2季度工作计划</div>
<div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000734" style="height:auto;" class="">2016年2季度工作计划（李萌）</div>
<div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000680" style="height:auto;" class="">销售部2016年5月份工作计划</div>
<div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000684" style="height:auto;" class="">2016年5月份工作计划（李萌）</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000806" style="height:auto;" class="">2016年1月份第4周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000577" style="height:auto;" class="">2016年4月份工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000275" style="height:auto;" class="">销售部2016年4月份工作计划</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000578" style="height:auto;">2016年4月份第3周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000790" style="height:auto;" class="">2016年4月份第2周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000276" style="height:auto;">销售部2016年4月份第3周工作计划</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000792" style="height:auto;">2016年4月份第1周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000799" style="height:auto;" class="">2016年3月份第4周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000798" style="height:auto;">2016年3月份第3周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000796" style="height:auto;">2016年3月份第2周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000795" style="height:auto;" class="">2016年3月份第1周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000801" style="height:auto;">2016年2月份第4周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000802" style="height:auto;" class="">2016年2月份第3周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000803" style="height:auto;" class="">2016年2月份第2周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000807" style="height:auto;" class="">2016年1月份第3周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000808" style="height:auto;" class="">2016年4月份第2周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000809" style="height:auto;" class="">2016年1月份第1周工作计划(李萌)</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000752" style="height:auto;" class="">2015年度工作计划（销售部）</div><div onmouseover="this.className=&#39;fieldEditable&#39;;" onmouseout="this.className=&#39;&#39;;" id="1000728" style="height:auto;">销售部2014年度工作计划</div></div>
<div id="fieldGetValueBySource.dbf.startTime" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow: hidden auto; height: 250px; width: 350px; top: 171px; left: 299px; display: none;">
<iframe src="BackJsp/wsq/css/fieldDate(1).html" style="width:100%;height:95%;" frameborder="0"></iframe></div><div id="fieldGetValueBySource.dbf.text1" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow: hidden auto; height: 250px; width: 350px; top: 196px; left: 299px; display: none;">
<div style="float:right;width:40%;" class="textGray">快速查找 <input type="text" onkeyup="javascript:quickFilter(this.parentNode.parentNode.childNodes,this.value,1);"></div>
<div style="padding-left:0px">
<input type="checkbox" id="10050" name="超级管理员"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 超级管理员</div><div style="padding-left:0px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 阿尔法集团</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 总经办</div><div style="padding-left:30px"><input type="checkbox" id="1000061" name="陈杰"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈杰</div><div style="padding-left:30px"><input type="checkbox" id="1000056" name="陈宗涛"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈宗涛</div><div style="padding-left:30px"><input type="checkbox" id="1000054" name="刘军"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘军</div><div style="padding-left:30px"><input type="checkbox" id="1000111" name="王刚"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王刚</div><div style="padding-left:30px"><input type="checkbox" id="1000059" name="王耀中"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王耀中</div><div style="padding-left:30px"><input type="checkbox" id="1000053" name="周立强"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 周立强</div><div style="padding-left:30px"><input type="checkbox" id="1000060" name="朱铁桥"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 朱铁桥</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 人事部</div><div style="padding-left:30px"><input type="checkbox" id="1000069" name="陈莹"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈莹</div><div style="padding-left:30px"><input type="checkbox" id="1000068" name="王萍"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王萍</div><div style="padding-left:30px"><input type="checkbox" id="1000067" name="吴燕"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 吴燕</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 财务部</div><div style="padding-left:30px"><input type="checkbox" id="1000076" name="陈有道"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈有道</div><div style="padding-left:30px"><input type="checkbox" id="1000073" name="刘长玉"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘长玉</div><div style="padding-left:30px"><input type="checkbox" id="1000075" name="严必行"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 严必行</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 科技公司</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 采购部</div><div style="padding-left:45px"><input type="checkbox" id="1000086" name="陈龙天"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈龙天</div><div style="padding-left:45px"><input type="checkbox" id="1000094" name="陈慧红"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈慧红</div><div style="padding-left:45px"><input type="checkbox" id="1000088" name="何以书"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 何以书</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 技术部</div><div style="padding-left:45px"><input type="checkbox" id="1000110" name="程茜"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 程茜</div><div style="padding-left:45px"><input type="checkbox" id="1000100" name="高大山"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 高大山</div><div style="padding-left:45px"><input type="checkbox" id="1000109" name="姜大声"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 姜大声</div><div style="padding-left:45px"><input type="checkbox" id="1000112" name="李浩"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李浩</div><div style="padding-left:45px"><input type="checkbox" id="1000104" name="李华林"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李华林</div><div style="padding-left:45px"><input type="checkbox" id="1000099" name="王美丽"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王美丽</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 生产部</div><div style="padding-left:45px"><input type="checkbox" id="1000064" name="李跃"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李跃</div><div style="padding-left:45px"><input type="checkbox" id="1000077" name="刘峰"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘峰</div><div style="padding-left:45px"><input type="checkbox" id="1000066" name="石杰"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 石杰</div><div style="padding-left:45px"><input type="checkbox" id="1000083" name="赵斌"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 赵斌</div><div style="padding-left:45px"><input type="checkbox" id="1000070" name="赵玉龙"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 赵玉龙</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 营销部</div><div style="padding-left:45px"><input type="checkbox" id="1000105" name="李海燕"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李海燕</div><div style="padding-left:45px"><input type="checkbox" id="1000106" name="刘建华"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘建华</div><div style="padding-left:45px"><input type="checkbox" id="1000108" name="杨磊"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 杨磊</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 工程公司</div><div style="padding-left:30px"><input type="checkbox" id="1000135" name="李琪"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李琪</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 工程部</div><div style="padding-left:45px"><input type="checkbox" id="1000082" name="李白军"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李白军</div><div style="padding-left:45px"><input type="checkbox" id="1000136" name="孙末"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 孙末</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 售后部</div><div style="padding-left:45px"><input type="checkbox" id="1000138" name="王兰英"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王兰英</div><div style="padding-left:45px"><input type="checkbox" id="1000093" name="王霞美"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王霞美</div><div style="padding-left:45px"><input type="checkbox" id="1000139" name="朱红"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 朱红</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 网络部</div><div style="padding-left:45px"><input type="checkbox" id="1000065" name="陈曦"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈曦</div><div style="padding-left:45px"><input type="checkbox" id="1000081" name="李倩"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李倩</div><div style="padding-left:45px"><input type="checkbox" id="1000079" name="徐超"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 徐超</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 销售部</div><div style="padding-left:45px"><input type="checkbox" id="1000071" name="李萌"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李萌</div><div style="padding-left:45px"><input type="checkbox" id="1000103" name="沈华"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 沈华</div><div style="padding-left:45px"><input type="checkbox" id="1000089" name="沈涛辉"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 沈涛辉</div><div style="padding-left:45px"><input type="checkbox" id="1000062" name="张旭"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张旭</div><div style="padding-left:45px"><input type="checkbox" id="1000085" name="张瑶瑶"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张瑶瑶</div><div style="padding-left:45px"><input type="checkbox" id="1000107" name="季道晓"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 季道晓</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 现代事务所</div><div style="padding-left:30px"><input type="checkbox" id="1000125" name="李静"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李静</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 产权部</div><div style="padding-left:45px"><input type="checkbox" id="1000130" name="谭升"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 谭升</div><div style="padding-left:45px"><input type="checkbox" id="1000126" name="王芳"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王芳</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 法务部</div><div style="padding-left:45px"><input type="checkbox" id="1000127" name="刘伟"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘伟</div><div style="padding-left:45px"><input type="checkbox" id="1000132" name="秦志强"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 秦志强</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 税务部</div><div style="padding-left:45px"><input type="checkbox" id="1000128" name="王磊"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王磊</div><div style="padding-left:45px"><input type="checkbox" id="1000133" name="王中磊"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王中磊</div><div style="padding-left:30px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 咨询部</div><div style="padding-left:45px"><input type="checkbox" id="1000129" name="刘杰"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘杰</div><div style="padding-left:45px"><input type="checkbox" id="1000134" name="赵媛媛"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 赵媛媛</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 北京机构</div><div style="padding-left:30px"><input type="checkbox" id="1000045" name="范晶"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 范晶</div><div style="padding-left:30px"><input type="checkbox" id="1000040" name="舒文杰"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 舒文杰</div><div style="padding-left:30px"><input type="checkbox" id="1000044" name="汤家鹏"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 汤家鹏</div><div style="padding-left:30px"><input type="checkbox" id="1000038" name="王伟中"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王伟中</div><div style="padding-left:30px"><input type="checkbox" id="1000037" name="王艳"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王艳</div><div style="padding-left:30px"><input type="checkbox" id="1000042" name="萧利"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 萧利</div><div style="padding-left:30px"><input type="checkbox" id="1000043" name="张超"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张超</div><div style="padding-left:30px"><input type="checkbox" id="1000041" name="张娜娜"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张娜娜</div><div style="padding-left:30px"><input type="checkbox" id="1000036" name="张倩"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张倩</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 杭州机构</div><div style="padding-left:30px"><input type="checkbox" id="1000046" name="陈斌"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈斌</div><div style="padding-left:30px"><input type="checkbox" id="1000047" name="张传栋"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张传栋</div><div style="padding-left:30px"><input type="checkbox" id="1000048" name="陈君"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈君</div><div style="padding-left:30px"><input type="checkbox" id="1000049" name="胡梦泉"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 胡梦泉</div><div style="padding-left:30px"><input type="checkbox" id="1000050" name="薛明伟"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 薛明伟</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 上海机构</div><div style="padding-left:30px"><input type="checkbox" id="1000101" name="李欣"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 李欣</div><div style="padding-left:30px"><input type="checkbox" id="1000095" name="王红梅"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王红梅</div><div style="padding-left:30px"><input type="checkbox" id="1000096" name="张秀云"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张秀云</div><div style="padding-left:30px"><input type="checkbox" id="1000102" name="张志强"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 张志强</div><div style="padding-left:15px"><img src="BackJsp/wsq/img/userX10000.gif" border="0"> 深圳机构</div><div style="padding-left:30px"><input type="checkbox" id="1000051" name="王丽萍"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 王丽萍</div><div style="padding-left:30px"><input type="checkbox" id="1000052" name="魏海洋"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 魏海洋</div><div style="padding-left:30px"><input type="checkbox" id="1000055" name="刘浩然"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 刘浩然</div><div style="padding-left:30px"><input type="checkbox" id="1000057" name="吴微"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 吴微</div><div style="padding-left:30px"><input type="checkbox" id="1000058" name="陈建华"><img src="BackJsp/wsq/img/userX0.gif" border="0"> 陈建华</div>





</div></body></html>
<script type="text/javascript" src="BackJsp/wsq/js/jquery-1.8.3.min.js"></script>
<script language="javaScript">
  $(function(){
   $("#tname").click(function(){
             if($(this).val()=="请输入任务标题"){
                $(this).val("")
             }
           }
         )
  //begin
     $.ajax({
        url:"plan/seltys",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#username").html();
         var option="<option>--请选择--</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].detailid+"'>"+data[i].username+"</option>";
          }
         $("#username").append(option);       
         $("#Kname").append(option);
         }
       });
       //begin
         $.ajax({
        url:"Itinfor/select",
        type:"post",
        dataType:"json",
        success:function(data){
         $("#planname").html();
         var option="<option>--请选择--</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].itemid+"'>"+data[i].itemname+"</option>";
       
          }
         $("#planname").append(option);
       
         }
 
       });//begin
        $.ajax({
        url:"plan/seltys1",
        type:"post",
        dataType:"json",
        success:function(data){
         $("deptName").html();
         var option="<option>--请选择--</option>";
          for(var i=0;i<data.length;i++){
           option+="<option value='"+data[i].deptid+"'>"+data[i].deptname+"</option>";
       
          }
         $("#deptName").append(option);
       
         }
 
       });
  
  });
  </script>