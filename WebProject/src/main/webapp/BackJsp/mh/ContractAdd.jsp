<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ContractAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
	.tbodyOne td{
	border:1px solid  #c0c0c0;
	height:30px;
	border-collapse: collapse;
	font-family: '微软雅黑';
	background-color:#f3faff;
	}
	.tbodyOne input{
	background-color:#f3faff;
		border:0px solid #c0c0c0;
		
		outline:none;
		width:400px;
	} 

</style>
  </head>
  
  <body  id=colloaBody>
   <div style="width:1200px;height:800px;border:0px solid #000;background-color:#ffffff;padding-top:50px;">
  
  <table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0><tr valign=top><td>&nbsp;</td><td id=colloaForm><div class=formTaskflowContainer><form id="myform" class=formTaskflow><TABLE style="HEIGHT: 40px; TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY style="float:right;">
<TR>
<TD id=dbf.subject style="FONT-SIZE: 20px; FONT-WEIGHT: bold; COLOR: rgb(0,0,0); TEXT-ALIGN: center; LINE-HEIGHT: 1" dbf.source="" dbf.type=""></TD>
<TD style="TEXT-ALIGN: right">&nbsp;优先级:</TD>
<TD><INPUT id=dbf.priority type=radio value=-1 name=dbf.priority autocomplete="off">低<INPUT id=dbf.priority CHECKED type=radio value=0 name=dbf.priority autocomplete="off">中<INPUT id=dbf.priority type=radio value=1 name=dbf.priority autocomplete="off">高</TD></TR></TBODY></TABLE>
<TABLE class=tableListBorder cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY class="tbodyOne">
<TR style="border:1px solid #000;">
<TD style="TEXT-ALIGN: center; WIDTH: 133px">*</SPAN>客户名称</TD>
<TD id=dbf.text0 style="WIDTH: 320px" dbf.source="editable,prompt:" dbf.type="required" dbf.colmax="1" dbf.key="">
<select id="clientid" name="clientid" style="width:310px; background-color:#f3faff;border:0">
<option>--请选择--</option>
</select></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">所属行业</TD>
<TD id=dbf.text3 style="WIDTH: 319px" dbf.source="list:IT|互联网|通信|电子,金融|银行|保险,房产|建筑建设|物业,广告|传媒|印刷出版,消费零售|贸易|交通物流,加工制造|仪表设备,管理咨询|教育科研|中介服务,医药生物|医疗保健,酒店旅游,能源矿产|石油化工,政府|非赢利机构|科研,其他" dbf.type="">
<input name="contracplc"></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">所在城市</TD>
<TD id=dbf.text2 style="WIDTH: 320px"><input name="contraccity"></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">详细地址</TD>
<TD id=详细地址 style="WIDTH: 319px"><input name="contracaddress"></TD></TR></TBODY></TABLE>
<TABLE class=tableListBorder cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY class="tbodyOne">
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>合同名称</TD>
<TD id=dbf.subSubject style="WIDTH: 320px" dbf.source="" dbf.type="required"><input name="contracname"></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>合同编号</TD>
<TD id=dbf.keyInfo style="WIDTH: 319px" dbf.source="" dbf.type="required"><input name="contracnumber"></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">合同金额</TD>
<TD id=dbf.budget style="WIDTH: 320px" dbf.source="" dbf.type="amount"><input name="contracmoney" value=0></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>签约日期</TD>
<TD id=dbf.time0 style="WIDTH: 319px" dbf.source="date" dbf.type="date,required">
<input name="signingdate"></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">生效日期</TD>
<TD id=dbf.time1 style="WIDTH: 320px" dbf.source="date" dbf.type="date">
<input name="effectivedate"></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">服务期至</TD>
<TD id=dbf.endTime style="WIDTH: 319px" dbf.source="date" dbf.type="date">
<input name="saasdate"></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px"><SPAN style="COLOR: rgb(255,0,0)">*</SPAN>对方联系人</TD>
<TD id=联系人 style="WIDTH: 320px" dbf.type="required"><input name="linkman"></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">固定电话</TD>
<TD id=固定电话 style="WIDTH: 319px"><input name="telephone"></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">移动电话</TD>
<TD id=移动电话 style="WIDTH: 320px"><input name="cellphone"></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">邮件/QQ</TD> 
<TD id=邮件/QQ style="WIDTH: 319px"><input name="contracqq" value="0" style="display:none;"></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">主要技术条款</TD>
<TD id=主要技术条款 colSpan=3 dbf.source="" dbf.type=""><TEXTAREA id=e.主要技术条款 name="terms" class=fieldEditable style="HEIGHT: 100px ;width:850px;;background-color:#f3faff;" >【产品交付和时间】？？？</TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">主要商务条款</TD>
<TD id=主要商务条款 colSpan=3 dbf.source="" dbf.type=""><TEXTAREA id=e.主要商务条款 name="businessterms" class=fieldEditable style="HEIGHT: 100px;width:850px;;background-color:#f3faff;">【收款方式和时间】？？？</TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">相关附件</TD>
<TD id=dbf.links colSpan=3 dbf.source="files" dbf.type="">
<DIV id=e.dbf.links>&nbsp;</DIV></TD></TR></TBODY></TABLE>
<TABLE class=tableListBorder cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY class="tbodyOne">
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">合同所属部门</TD>
<TD id=dbf.division style="WIDTH: 320px" dbf.source="form.fieldSource.division" dbf.type="" dbf.key="1000034">
<select name="department" style="width:310px;border:0;background-color:#f3faff;">
	<option value="人事部">人事部</option>
	<option value="总经办">总经办</option>
	<option value="财务部">财务部</option>
	<option value="技术部">技术部</option>
	<option value="营销部">营销部</option>

</select>
<input name="department"></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 133px">关联人员</TD>
<TD id=dbf.observer style="WIDTH: 319px" dbf.source="form.fieldSource.userX0" dbf.type="" dbf.key="">
<input name="detailid">
<input name="contracstate" value="0" style="display:none">

</TD></TR>
	
</TBODY>
<tr>
	<td><a href="javascript:void(0)" id="but"><div style="border: 1px solid #c0c0c0;border-radius:20px;width:70px;height:30px;margin-top:20px;"><span style="float:left;margin-top:5px;margin-left:20px;">转主管审批</span></div></a></td>

</tr>

</TABLE>



</form></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></table>
</div>
</body></html>

<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
	$(function(){
		$.ajax({
     			url:"client/clientSelect.action",
	 			type:"post",
				dataType:"json",  
				success:function(data){
				
					for(var i=0;i<data.length;i++){
				var tr="<option value='"+data[i].clientid+"'>"+data[i].clientname+"</option>";
				$("#clientid").append(tr);
				}
				
				}
     	}) 
        
     })
	
	

	
	 $("#but").click(function(){
	 		$.ajax({
	 			url:"contract/contractInsert.action",
	 			type:"post",
	 			data:$("#myform").serialize(),
				dataType:"json",
				success:function(data){
				
					
				}
	 		})
	 		alert("保存成功！");
				window.location.href = 'BackJsp/mh/AllContract.jsp';
	 })
	


</script>


