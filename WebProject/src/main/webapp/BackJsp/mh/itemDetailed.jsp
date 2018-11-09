<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <base href="<%=basePath%>">
  <title>项目详情* - Colloa</title>
	<link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
  <style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody"><table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer">

<form class="formTaskflow" id="itform"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">立项申请<input name="itstate" value="0" style="display:none"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource"><!-- <input name="detailid">-----, --></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
</tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="4" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>项目基本信息</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type=""><span style="COLOR: rgb(255,0,0)">*</span>项目名称</td>
<td id="dbf.subject" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="required">
${list[0].itemname}
</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px"><span style="COLOR: rgb(255,0,0)">*</span>项目分类</td>
<td id="dbf.psid2" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="select sid,name,psid,stype from categoryX where modello=&#39;categoryX.taskX.project&#39; and statusX&gt;0 order by sortId,name" dbf.type="required!0" dbf.key="400010">
<div id="e.dbf.psid2Source">${list[0].itemsort}</div></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">项目编号</td>
<td id="dbf.keyInfo" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="">
${list[0].itemnumber}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">所属部门</td>
<td id="dbf.division" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="form.fieldSource.division" dbf.type="" dbf.key="1000034">
<div id="e.dbf.divisionSource">${list[0].department}</div></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">计划开始时间</td>
<td id="dbf.startTime" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date">
${list[0].planstarttime}&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px"><span style="COLOR: rgb(255,0,0)">*</span>计划完成时间</td>
<td id="dbf.endTime" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date,required">
${list[0].planendtime}</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">客户名称</td>
<td id="dbf.text0" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="editable,prompt:" dbf.type="" dbf.key="">
${list[0].clientname}
<!-- <select>
	<option>
	
	
	</option>

</select> -->
&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">关联合同</td>
<td id="dbf.psid3" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="editable,prompt:" dbf.type="" dbf.key="0">
${list[0].contracname}

<!-- <select>
	<option>
	
	
	</option>

</select> -->
&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px">对方联系人</td>
<td id="联系人" style="WIDTH: 336px">${list[0].itemperson}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">固定电话</td>
<td id="固定电话" style="WIDTH: 336px">${list[0].ittelephone}</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px">移动电话</td>
<td id="移动电话" style="WIDTH: 336px">${list[0].itmobilephone}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">邮件/QQ</td>
<td id="邮件/QQ" style="WIDTH: 336px">${list[0].itemqq}</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">预估工作量</td>
<td id="dbf.numberTotal" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="amount">
${list[0].estimateworkload}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">预估成本费用</td>
<td id="dbf.budget" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="amount">
${list[0].estimatecost}</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="2" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>业务需求和目标</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="主要需求和目标附件" style="WIDTH: 798px" dbf.source="files" dbf.type=""><div id="e.主要需求和目标附件">&nbsp;</div></td></tr>
<tr>
<td id="主要需求和目标" style="VERTICAL-ALIGN: top" colspan="2" dbf.source="" dbf.type="">

</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="4" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>项目组织和分工</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type=""><span style="COLOR: rgb(255,0,0)">*</span>项目经理</td>
<td id="项目经理" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="form.fieldSource.userX0" dbf.type="required" dbf.key="">


<select id="username">
	<option>
	--请选择--
	</option>
</select>&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">项目赞助人</td>
<td id="项目赞助人" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="form.fieldSource.userX0" dbf.type="" dbf.key="">&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">项目组成员</td>
<td id="项目组成员" colspan="3" dbf.source="form.fieldSource.userX0" dbf.type="" dbf.key="">&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="项目组织和分工附件" style="WIDTH: 798px" colspan="3" dbf.source="files" dbf.type="">&nbsp;</td></tr>
<tr>
<td id="项目组织和分工" style="HEIGHT: 120px; VERTICAL-ALIGN: top" colspan="4" dbf.source="" dbf.type="">&nbsp;</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="2" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>实施计划和方案</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="实施计划和方案附件" style="WIDTH: 798px" dbf.source="files" dbf.type="">&nbsp;</td></tr>
<tr>
<td id="实施计划和方案" style="HEIGHT: 120px; VERTICAL-ALIGN: top" colspan="2" dbf.source="" dbf.type="">&nbsp;</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="4" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>项目成果和总结</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">实际开始时间</td>
<td id="dbf.time0" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date">&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px"><span style="COLOR: rgb(255,0,0)">*</span>实际完成时间</td>
<td id="dbf.time1" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date,required">&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="项目成果和总结附件" style="WIDTH: 798px" colspan="3" dbf.source="files" dbf.type="">&nbsp;</td></tr>
<tr>
<td id="项目成果和总结" style="HEIGHT: 120px; VERTICAL-ALIGN: top" colspan="4" dbf.source="" dbf.type="">&nbsp;</td></tr></tbody></table>
</form></div><form method="post">${list[0].viewState}
<input id="iid" value="${list[0].itemid}" style="display:none;">
</form><br>
<c:if test="${list[0].itstate==0}">
<div  id="_vWorkflowActionsShow" align="right"><a class="button" href="javascript:void(0)" id="butt">任命转执行</a></div><br>

</c:if>
<c:if test="${list[0].itstate==1}">
<div  id="_vWorkflowActionsShow" align="right"><a class="button" href="Itinfor/updateIdStateOne?iid=${list[0].itemid}" id="but">转审核关闭</a><!-- <a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转立项审核&#39;,1,1);return false;">转立项审核</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;直接转项目任命&#39;,1,1);return false;">直接转项目任命</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a> --></div><br>

</c:if> 
<c:if test="${list[0].itstate==2}">
<div  id="_vWorkflowActionsShow" align="right"><a class="button" href="Itinfor/updateIdStateTwo?iid=${list[0].itemid}" id="but">关闭项目</a><!-- <a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转立项审核&#39;,1,1);return false;">转立项审核</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;直接转项目任命&#39;,1,1);return false;">直接转项目任命</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a> --></div><br>

</c:if> 
 
 <table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">

</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table><div id="fieldGetValueBySource.dbf.startTime" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 350px; top: 156px; left: 317px; display: none;"><iframe src="./新增项目_ - Colloa_files/fieldDate.html" style="width:100%;height:95%;" frameborder="0"></iframe></div>
</body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
	$("#butt").click(function(){

		 $.ajax({
			url:"Itinfor/updateIdState.action",
	 			type:"post",
	 			data:{iid:$("#iid").val()},
				dataType:"json",
				success:function(data){
				
				}
				
		
			})
				$.ajax({
			url:"Itinfor/updateOrganization.action",
	 			type:"post",
	 			data:{itemid:$("#iid").val(),"organization":$("#username").val()},
				dataType:"json",
				success:function(data){
				
				}
		
		}) 
		
	alert("成功！");
	window.location.href = 'BackJsp/mh/itinforIdState.jsp';
	})
		$(function(){
			$.ajax({
				url:"Itinfor/selectUsers",
	 			type:"post",
				dataType:"json",
				success:function(data){
				var option="";
				for(i=0;i<data.length;i++)
				option+="<option value='"+data[i].username+"'>"+data[i].username+"</option>";
				$("#username").append(option)
				}
				
			
			})
		
		})

</script>