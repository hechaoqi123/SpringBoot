<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CustomerDeUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://cdn.staticfile.org/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="BackJsp/mh/js/Vue.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
		*{
		margin:0px;
		padding:0px;
		font-family: "微软雅黑";
		
	}
	#tabdeup input{
		background-color:#f3faff;
		border:0px solid #c0c0c0;
		outline:none;
		width:400px;
	}
	#tabdeup td{
		border:1px solid #c0c0c0;
		background-color:#f3faff;
		text-align:right;
		padding-top:5px;
		line-height:25px;
		border-left:0px;
		margin-left:5px;
 		border-collapse: collapse;
	}
	td{
	
	}
</style>
  </head>
  
   
   <body id=colloaBody><div style="width:1200px;height:800px;border:0px solid #000;background-color:#ffffff;padding-top:100px;"><table style="margin-left:100px;" id="lotab"><tr valign=top><td>&nbsp;</td><td id=colloaForm>
   <form action="client/clientUpdate.action?clientid=${client.clientid}" method="post"> <TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 summary="" border=0>
<COLGROUP>
<COL width=100>
<COL>
<COL width=100>
<COL>
<TBODY id="tabdeup" >
<TR>
<TD  style="text-align:left;FONT-SIZE: 14px; BACKGROUND-COLOR: lightyellow;border-top:4px solid #c0c0c0;width:1000px;" colSpan=4 ><B>&nbsp;基本信息</B></TD></TR>
<TR>
<TD class=fieldLable>客户名称<B style="COLOR: red">*</B></TD>
<TD id=dbf.name dbf.type="required"><INPUT name="clientname" id=e.dbf.name class=fieldEditable value="${client.clientname}"></TD>
<TD class=fieldLable>拼 音</TD>
<TD id=dbf.pinYin><INPUT id=e.dbf.pinYin name="clientspell"  class=fieldEditable value="${client.clientspell}"></TD></TR>
<TR>
<TD class=fieldLable>分 类</TD>
<TD id=dbf.psid2 dbf.type="" dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.customerX.customer' and statusX>0 order by sortId,name" dbf.key="331130"><IMG onclick="fieldGetValueBySource('dbf.psid2',this);" class=fieldGetValueBySource >
<DIV id=e.dbf.psid2Source><input name="clientclassify" value="${client.clientclassify}"></DIV></TD>
<TD class=fieldLable>客户来源</TD>
<TD id=dbf.sourceX dbf.type="" dbf.source="list:老客户,代理商,互联网,独立开发,客户介绍,合作伙伴,促销活动,媒体宣传,电话访问,客户来电,二次销售,公开招标,研讨会和展会,其他"><IMG onclick="fieldGetValueBySource('dbf.sourceX',this);" class=fieldGetValueBySource >
<DIV id=e.dbf.sourceX><input name="clientsource" value="${client.clientsource}"></DIV></TD></TR>
<TR>
<TD class=fieldLable>所属行业</TD>
<TD id=dbf.industry dbf.type="" dbf.source="list:IT|互联网|通信|电子,金融|银行|保险,房产|建筑建设|物业,广告|传媒|印刷出版,消费零售|贸易|交通物流,加工制造|仪表设备,管理咨询|教育科研|中介服务,医药生物|医疗保健,酒店旅游,能源矿产|石油化工,政府|非赢利机构|科研,其他"><IMG onclick="fieldGetValueBySource('dbf.industry',this);" class=fieldGetValueBySource>
<DIV id=e.dbf.industry><input name="industry" value="${client.industry}"></DIV></TD>
<TD class=fieldLable>客户网址 </TD>
<TD id=dbf.webSite><INPUT name="clienturl" value="${client.clienturl}" id=e.dbf.webSite class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>国家/地区</TD>
<TD id=dbf.region><INPUT name="region" value="${client.region}" id=e.dbf.region class=fieldEditable></TD>
<TD class=fieldLable>所在城市</TD>
<TD id=dbf.city><INPUT name="city" id=e.dbf.city class=fieldEditable value="${client.city}"></TD></TR>
<TR>
<TD class=fieldLable>详细地址</TD>
<TD id=dbf.address colSpan=3><INPUT name="address" value="${client.address}" id=e.dbf.address class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>邮政编码</TD>
<TD id=dbf.zipCode><INPUT name="clientpostcode" value="${client.clientpostcode}" id=e.dbf.zipCode class=fieldEditable></TD>
<TD class=fieldLable>传 真 </TD>
<TD id=dbf.fax><INPUT name="clientfax" value="${client.clientfax}" id=e.dbf.fax class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>联系人<B style="COLOR: red">*</B></TD>
<TD id=dbf.contact dbf.type="required"><INPUT name="linkman" id=e.dbf.contact class=fieldEditable value="${client.linkman}"></TD>
<TD class=fieldLable>部 门 </TD>
<TD id=dbf.contactDepartment><INPUT name="clientdept" value="${client.clientdept}" id=e.dbf.contactDepartment class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>职 务 </TD>
<TD id=dbf.title><INPUT name="position" value="${client.position}" id=e.dbf.title class=fieldEditable></TD>
<TD class=fieldLable>办公电话</TD>
<TD id=dbf.phone><INPUT name="officephone" value="${client.officephone}" id=e.dbf.phone class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>移动电话</TD>
<TD id=dbf.mobile><INPUT name="movephone" id=e.dbf.mobile class=fieldEditable value="${client.movephone}"></TD>
<TD class=fieldLable>邮件/QQ </TD>
<TD id=dbf.email><INPUT name="qq" value="${client.qq}" id=e.dbf.email class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>法人代表</TD>
<TD id=dbf.legalRepresentative><INPUT name="legal" value="${client.legal}" id=e.dbf.legalRepresentative class=fieldEditable></TD>
<TD class=fieldLable>注册资本 </TD>
<TD id=dbf.registerCapital><INPUT name="registered" value="${client.registered}" id=e.dbf.registerCapital class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable >附加说明</TD>
<TD id=dbf.remarks colSpan=3 style="text-align:left;"><TEXTAREA name="clientexplain" id=e.dbf.remarks class=fieldEditable style="HEIGHT: 80px" >${client.clientexplain}</TEXTAREA></TD></TR>
<TR>
<TD class=fieldLable>附件资料</TD>
<TD id=dbf.memoLinks colSpan=3 dbf.source="files">
<DIV id=e.dbf.memoLinks></DIV></TD></TR>
<TR>
<TD style="text-align:left; FONT-SIZE: 14px; BACKGROUND-COLOR: lightyellow" colSpan=4 dbf.type="" dbf.source=""><B>&nbsp;财务信息</B></TD></TR>
<TR>
<TD class=fieldLable>银行账号</TD>
<TD id=dbf.bankAccount1><INPUT name="clientaccount" value="${client.clientaccount}" id=e.dbf.bankAccount1 class=fieldEditable></TD>
<TD class=fieldLable>开户名称 </TD>
<TD id=dbf.accountName1><INPUT name="accountname" value="${client.accountname}" id=e.dbf.accountName1 class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>开户银行</TD>
<TD id=dbf.bank1><INPUT name="clientbank" value="${client.clientbank}" id=e.dbf.bank1 class=fieldEditable></TD>
<TD class=fieldLable>银行地址 </TD>
<TD id=dbf.bankAddress1><INPUT name="bankaddress" value="${client.bankaddress}" id=e.dbf.bankAddress1 class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>税 号</TD>
<TD id=dbf.taxNo1><INPUT name="clientduty" value="${client.clientduty}" id=e.dbf.taxNo1 class=fieldEditable></TD>
<TD class=fieldLable>电 话 </TD>
<TD id=dbf.bankPhone1><INPUT name="reservedphone" value="${client.reservedphone}" id=e.dbf.bankPhone1 class=fieldEditable></TD></TR>

</TBODY>
</TABLE>
<input type="submit" id="but" value="提交" style="width:100px;height:50px;;margin-left:360px;margin-top:30px;background-color:#ffffff;">
</form><form method='post'><input type=hidden id=viewState name=viewState></form>
<script language=javaScript>workflowActionsShow('okCancelWithForm');formOnLoad();</script></td><td>&nbsp;</td></tr></table>

  </div>
  </body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
	/* $("#but").click(function(){
	$.post("/client/clientUpdate.action",{cid:${client.clientid}},{emulateJSON:true},function(data){
        var vm = new Vue({
            el:'#colloaForm',
            data:data,
            timeout:3000,
            success:function(result){
             alert(11221);
                new Vue({
                    el:'#colloaForm',
                    data:myModel
                    
                });
               
            },
            error:function(){
                alert('咦~出错了！');
            }
          })
    });
	}) */
 
    </script>

