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
    
    <title>My JSP 'CustomerDetailed.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="BackJsp/mh/js/Vue.js"></script>
<style>
	*{
		margin:0px;
		padding:0px;
		font-family: "微软雅黑";
	}
	#tabde td{
	 border:1px solid #c0c0c0;
		padding-top:5px;
		border-left:0px;
		margin-left:5px;
 		border-collapse: collapse;
	}
	.fieldLable{
		border:1px solid #c0c0c0;
		
		border-right:1px solid #c0c0c0; 
	}
</style>
  </head>
  <body >
  
   <div style="width:1200px;height:800px;border:0px solid #000;background-color:#ffffff;padding-top:50px;">
   <table style="margin-left:100px;margin-top:0px;" id="lotab">
   		<tr>
   			<td style="float:left;border:0px solid #000;"><h2 style="float:left;margin-left:10px;"> 
${client.clientname} 
 </h2></td>
   			<td style="float:right;margin-left:550px;">
   				<div style="float:right;margin-left:-100px;height:36px;width:260px;border:1px solid #c0c0c0;border-radius:5px; background: -webkit-linear-gradient(#FFFFFF, #F5F5F5);"">
   					<a href=""><div style="float:left;height:37px;width:50px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:5px;margin-left:18px;color:#a6a6a6;"><b> < </b> </span> </div></a>
   					<a href="client/clientOnes?cid=${client.clientid}" style="color:#a6a6a6;"><div style="float:left;height:37px;width:80px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:7px;margin-left:20px;"><b>修改</b></span></div></a>
   					<a href="javascript:void(0)" style="color:#a6a6a6;" id="dele"><div style="float:left;height:37px;width:70px;border:1px solid #c0c0c0;border-left:0px;border-top:0px;border-bottom:0px;"><span style="float:left;padding-top:7px;margin-left:20px;"><b>删除</b></span></div></a>
   				
   				</div>
   			</td>
   		</tr>
   </table>

   <table id="tabde" cellspacing="0" cellpadding="0" summary="" border="0" style="table-layout:fixed;margin-left:100px;margin-top:50px;"><col width=100px><col><col width=100px><col>
    
   
        <tr>
	<td colspan="4" dbf.source="" dbf.type="" style="font-size: 14px;background-color:lightyellow;height:30px;width:1000px;line-height:30px;border-top:4px solid #c0c0c0;"><b>&nbsp;基本信息</b></td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 客户名称<b style="color:red">*</b></td>
	<td>${client.clientname}&nbsp;</td>
	<td align=right class=fieldLable> 拼      音</td>
	<td>${client.clientspell}&nbsp;</td>

        </tr>
        <tr>
	<td  align=right class=fieldLable> 分     类</td>
	<td>${client.clientclassify}&nbsp;</td>
	<td align=right class=fieldLable> 客户来源</td>    
	<td>${client.clientsource}&nbsp;</td>
        </tr>
        <tr>
	<td  align=right class=fieldLable> 所属行业</td>
	<td>${client.industry}&nbsp;</td>
	<td align=right class=fieldLable> 客户网址 </td>
	<td>${client.clienturl}&nbsp;</td>
       </tr>
        <tr>
	<td align=right class=fieldLable> 国家/地区</td>
	<td>${client.region}&nbsp;</td>
	<td align=right class=fieldLable> 所在城市</td>
	<td>${client.city}&nbsp;</td>
         </tr>
        <tr>
	<td align=right class=fieldLable> 详细地址</td>
	<td align=right colspan=3>${client.address}&nbsp;</td>
        </tr>
        <tr>
	<td align=right  class=fieldLable> 邮政编码</td>
	<td >${client.clientpostcode}&nbsp;</td>
	<td align=right class=fieldLable> 传      真 </td>
	<td>${client.clientfax}&nbsp;</td>
        </tr>
         <tr>
	<td align=right class=fieldLable> 联系人<b style="color:red">*</b></td>
	<td >${client.linkman}&nbsp;</td>
	<td align=right class=fieldLable> 部      门 </td>
	<td>${client.clientdept}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 职      务 </td>
	<td>${client.position}&nbsp;</td>
	<td align=right class=fieldLable> 办公电话</td>
	<td>${client.officephone}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 移动电话</td>
	<td >${client.movephone}&nbsp;</td>
	<td align=right class=fieldLable> 邮件/QQ </td>
	<td>${client.qq}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 法人代表</td>
	<td>${client.legal}&nbsp;</td>
	<td align=right class=fieldLable> 注册资本 </td>
	<td>${client.registered}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 附加说明</td>
	<td colspan=3 style="height:80px;">${client.clientexplain}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 附件资料</td>
	<td colspan=3>&nbsp;</td>
        </tr>
        <tr>
	<td  colspan="4"style="font-size: 14px;background-color:lightyellow;"><b>&nbsp;财务信息</b></td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 银行账号</td>
	<td>${client.clientaccount}&nbsp;</td>
	<td align=right class=fieldLable> 开户名称 </td>
	<td>${client.accountname}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 开户银行</td>
	<td>${client.clientbank}&nbsp;</td>
	<td align=right class=fieldLable> 银行地址 </td>
	<td>${client.bankaddress}&nbsp;</td>
        </tr>
        <tr>
	<td align=right class=fieldLable> 税      号</td>
	<td>${client.clientduty}&nbsp;</td>
	<td align=right class=fieldLable> 电      话</td>
	<td>${client.reservedphone}&nbsp;</td>
	
        </tr>
    </tbody>
   
</table>

   </div>
   
   
  </body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
  $("#dele").click(function(){
  
  var con=confirm("确定删除吗？");
  if(con==true){
  	$.ajax({
  		url:"client/clientDelete.action",
	 			type:"post",
	 			data:{cid:${client.clientid}},
				dataType:"json",  
				success:function(data){
				alert("删除成功！");
				
				}
  	})
  }
  else{
  	alert("打扰了！")
  }
  window.location.href = 'BackJsp/mh/Allcustomers.jsp';
  })
/* $(function(){
	alert(111);
	alert($("#cid").val())
})
	  $.post("/client/clientOne.action",{cid:7},{emulateJSON:true},function(data){
        var vm = new Vue({
            el:'#table',
            data:data,
            timeout:3000,
            success:function(result){
             alert(11221);
                new Vue({
                    el:'#table',
                    data:myModel
                    
                });
               
            },
            error:function(){
                alert('咦~出错了！');
            }
          })
    }); */

</script>
