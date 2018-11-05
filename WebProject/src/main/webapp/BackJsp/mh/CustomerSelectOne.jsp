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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>My JSP 'CustomerSelectOne.jsp' starting page</title>
    
	  <link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
  
<style>


</style>
  </head>
  
  <body>
  
  <table style="padding-left:50px;padding-top:50px;" id="lotab">
   		<tr>
   			<td style="float:left;border:0px solid #000;"><img src="../assets/images/customersLogo.png" style="float:left;margin-top:10px;"><h1 style="float:left;margin-left:10px;">客户合同</h1></td>
   			<td style="float:right;margin-left:650px;">
   			</td>
   		</tr>
   </table>
  
  
  
  
  
  
  <table id="tab1" cellpadding="0" cellspacing="0" border="0" class="tableList" ><thead><tr>
  <th align="center">合同全称</th>
  <th align="center">合同编号</th>
  <th align="right">合同金额</th>
  <th align="center">回款额</th>
  <th align="center">开票额</th>
  <th align="center">签约日期</th>
  </thead>
 <tbody  >
 <c:forEach items="${contract}" var="ct">
 <tr valign="top">
			
 		<td class="ktd"><a href="contract/contractQueryes?cid=${ct.contractid}"><img src="img/customer.gif">${ct.clientname}-${ct.contracname}</a></td>
<td align="left">${ct.contracnumber}</td>

<td align=left>${ct.contracmoney}</td>
<td align=left>0.00</td>
<td align=left style='color:#85d579;'>0.00</td>
<td align=left>${ct.signingdate}</td>
</tr>
</c:forEach>



</tbody> 

</table>
  </body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>



