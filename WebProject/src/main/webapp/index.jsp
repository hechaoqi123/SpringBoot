<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.0.3.min.js"></script>
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
          getAll(1);
      });
      function getAll(){
         $.ajax({
            url:"stu/getAll",
            type:"post",
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td><input type='checkbox' value='"+datalist[i].sid+"'/></td>";
                   tr+="<td>"+datalist[i].sid+"</td>";
                   tr+="<td>"+datalist[i].sname+"</td>";
                   tr+="<td>"+datalist[i].sdate+"</td>";
                   tr+="<td>"+datalist[i].cname+"</td>";
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
      $("#delAll").click(function(){
           //判断是否选中
           var arr=new Array();
           $("#tbody :checkbox").each(function(){
               if($(this).prop("checked")){
                  //封装json字符
                  //使用数组
                  arr.push($(this).val())
                  //将所有的id都通过一个特殊字符拼成字符串，通过特殊字符变成数组
                 //str.join(",")  str.split()
               }
           });
            $.ajax({
            url:"stu/delAll/"+arr,
            type:"post",
            data:{},
            dataType:"json",
            success:function(data){
            var nowpage=parseInt($("#nowPage").html());
                  getAll(nowpage);
            }
            })
      
      })

</script>


