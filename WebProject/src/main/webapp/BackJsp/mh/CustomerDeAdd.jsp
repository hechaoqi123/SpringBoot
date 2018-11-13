<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CustomerDetailed.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
	*{
		margin:0px;
		padding:0px;
		
	}
	#tabde{
		 font-family: "微软雅黑"; 
	}
	#tabde td{
	 border:1px solid #c0c0c0;
		padding-top:5px;
		border-left:0px;
		margin-left:5px;
 		border-collapse: collapse;
 		background-color:#f3faff;
	}
	input{
	background-color:#f3faff;
		border:0px solid #c0c0c0;
		outline:none;
		width:300px;
	}
	.fieldLable{
		border:1px solid #c0c0c0;
		border-right:1px solid #c0c0c0; 
	}
</style>
  </head>
  <body style=" font-family:'微软雅黑';">
   <div style="width:1200px;height:800px;border:0px solid #000;background-color:#ffffff;padding-top:20px;">
   <form id="myform">
   <table id="tabde" cellspacing="0" cellpadding="0" summary="" border="0" style="table-layout:fixed;margin-left:100px;margin-top:50px;"><col width=100px><col><col width=100px><col>
    <tbody>
    <tr>
    	<th colspan="4" align="center">新增客户</th>
    </tr>
	<tr>
		<td colspan="4" dbf.source="" dbf.type="" style="font-size: 14px;background-color:lightyellow;height:30px;width:1000px;line-height:30px;border-top:4px solid #c0c0c0;"><b>&nbsp;基本信息</b></td>
	</tr>
	<tr>
	<td align=right class=fieldLable> 客户名称<b style="color:red">*</b></td>
	<td><input name="clientname"/>&nbsp;</td>
	<td align=right class=fieldLable> 拼      音</td>
	<td><input name="clientspell"/>&nbsp;</td>

        </tr>
        <tr>
	<td  align=right class=fieldLable> 分     类</td>
	<td><select name="clientclassify" style="background-color:#f3faff;width:310px;border:0;">
		<option value="商务">商务</option>
		<option value="经济">经济</option>
		<option value="娱乐">娱乐</option>
		<option value="电竞">电竞</option>

	</select>&nbsp;</td>
	<td align=right class=fieldLable> 客户来源</td>    
	<td><select name="clientsource" style=" background-color:#f3faff;width:310px;border:0;">
		<option value="电话">电话</option>
		<option value="推荐">推荐</option>
		<option value="广告">广告</option>
	</select>&nbsp;</td>
        </tr>
        <tr>
	<td  align=right class=fieldLable> 所属行业</td>
	<td><select name="industry" style="background-color:#f3faff;width:310px;border:0;">
	
	<option value="计算机">计算机</option>
	<option value="农业">农业</option>
	<option value="运营">运营</option>
	<option value="开发">开发</option>
	</select>&nbsp;</td>
	<td align=right class=fieldLable> 客户网址 </td>
	<td><input name="clienturl"/>&nbsp;</td>
       </tr>
        <tr>
	<td align=right class=fieldLable> 国家/地区</td>
	<td><input name="region"/>&nbsp;</td>
	<td align=right class=fieldLable> 所在城市</td>
	<td><input name="city"/>&nbsp;</td>
         </tr>
        <tr>
	<td align=right class=fieldLable> 详细地址</td>
	<td  colspan=3><input name="address"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right  class=fieldLable> 邮政编码</td>
	<td ><input name="clientpostcode"/>&nbsp;</td>
	<td align=right class=fieldLable> 传      真 </td>
	<td><input name="clientfax"/>&nbsp;</td>
        </tr>
         <tr>
	<td align=right class=fieldLable> 联系人<b style="color:red">*</b></td>
	<td ><input name="linkman"/>&nbsp;</td>
	<td align=right class=fieldLable> 部      门 </td>
	<td><input name="clientdept"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 职      务 </td>
	<td><input name="position"/>&nbsp;</td>
	<td align=right class=fieldLable> 办公电话</td>
	<td><input name="officephone"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 移动电话</td>
	<td ><input name="movephone"/>&nbsp;</td>
	<td align=right class=fieldLable> 邮件/QQ </td>
	<td><input name="qq"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 法人代表</td>
	<td><input name="legal"/>&nbsp;</td>
	<td align=right class=fieldLable> 注册资本 </td>
	<td><input name="registered"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 附加说明</td>
	<td colspan=3 style="height:80px;"><input name="clientexplain"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 附件资料</td>
	<td colspan=3><input/>&nbsp;</td>
        </tr>
        <tr>
	<td  colspan="4"style="font-size: 14px;background-color:lightyellow;"><b>&nbsp;财务信息</b></td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 银行账号</td>
	<td><input name="clientaccount"/>&nbsp;</td>
	<td align=right class=fieldLable> 开户名称 </td>
	<td><input name="accountname"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 开户银行</td>
	<td><input name="clientbank"/>&nbsp;</td>
	<td align=right class=fieldLable> 银行地址 </td>
	<td><input name="bankaddress"/>&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 税      号</td>
	<td><input name="clientduty"/>&nbsp;</td>
	<td align=right class=fieldLable> 电      话 </td>
	<td><input name="reservedphone"/>&nbsp;</td>
        </tr>
        <tr height="50px">
        	<td align="right" colspan="4" style="background-color: #fff;">
        		<div id="but" style="border: 1px solid #c0c0c0;border-radius:20px;width:70;height:30px;margin-right: 50px;">
					<a href="javascript:void(0)">
						<span style="float:left;margin-top:5px;margin-left:20px;">添加</span>
					</a>
				</div>
        	</td>
        </tr>
    </tbody>

</form>
 </div>

   
  </body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
	
	 $("#but").click(function(){
	 		$.ajax({
	 			url:"client/clientInsert.action",
	 			type:"post",
	 			data:$("#myform").serialize(),
				dataType:"json",
				success:function(data){
				
					
				}
				
	 		})
	 		alert("添加成功！");
	 		window.location.href = 'BackJsp/mh/Allcustomers.jsp';
	 })

</script>
