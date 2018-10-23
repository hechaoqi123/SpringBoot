<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery-1.10.2.min.js"></script>
  </head>
  
  <body>
    <table>
      <tr>
       <td><input type="checkbox"/></td>
         <td>学号</td>
         <td>姓名</td>
         <td>入学时间</td>
         <td>班级名称</td>
      </tr>
      <tbody id="tbody"></tbody>
   </table>


  </body>
</html>

<script>
      $(function(){
          getAll();
      });
      function getAll(){
      alert(1)
         $.ajax({
            url:"userdetail/getAllUser",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                  
                  tr+="<td>"+datalist[i].detailid+"</td>";
                   tr+="<td>"+datalist[i].usernum+"</td>";
                   tr+="<td>"+datalist[i].entrydate+"</td>";
                   tr+="<td>"+datalist[i].phone+"</td>";
                   tr+="</tr>";
                   $("#tbody").append(tr);
               }
               $("#nowPage").html(data.pageNum);
               //alert(data.isFirstPage)
               if(data.isFirstPage){$("#prepage").hide()}else{
                 $("#prepage").show()
               }
                if(data.isLastPage){$("#nextpage").hide()}else{
                  $("#nextpage").show()
                }
            },error:function(){
              alert(33)
            }
         
         })
      }
      $("#prepage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage-1);
      })
       $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      })
     
      
    

</script>


