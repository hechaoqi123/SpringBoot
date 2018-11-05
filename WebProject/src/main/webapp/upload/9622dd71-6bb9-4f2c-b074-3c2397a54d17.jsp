<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script></head>
  
  <body>
         <table border="1">
         <tr>
            
            <td>订单编号</td>
            <td>订单名</td>
            <td>订单总数</td>
            <td>订单日期</td>
            <td>订单价格</td>
            <td>商品名称</td>
            <td>商品库存</td>
            <td>商品价格</td>
         </tr>
         <tbody id="mybody">
         
         </tbody>
     </table>
  </body>
</html>
<script>
 $(function(){
         getOrAll();
     })
     
          function getOrAll(){
        $.ajax({
           url:"goods/getOrAll",
           type:"post",
           data:{},
           dataType:"json",
           success:function(data){
              $("#mybody").html("");
               /*   var datalist=data.list;
                 alert(datalist); */
             for(var i=0;i<data.length;i++){
                var tr="<tr>";
                 tr+="<td>"+data[i].orderId+"</td>";
                tr+="<td>"+data[i].customerName+"</td>";
                tr+="<td>"+data[i].goodsCount+"</td>";
                tr+="<td>"+data[i].orderDate+"</td>";
                tr+="<td>"+data[i].totalMoney +"</td>";
                tr+="<td>"+data[i].goodsName+"</td>";
                tr+="<td>"+data[i].goodsDesc+"</td>";
                tr+="<td>"+data[i].goodsUnitPrice+"</td>";
                
                tr+="</tr>";
                $("#mybody").append(tr);
             }
             }
             });
              }
</script>