<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公告管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     <link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css">  
	<script src="<%=basePath%>assets/js/jquery.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery-1.10.2.min.js"></script>
  
     <style type="text/css">
    #i{
    position:absolute;
     margin-top:3px;
     margin-left:30px;
    }
    #zero{
	  height:500px;
	  width:100%;
	  float:left;
	  margin-left:50px;
	}
	
	#zero1{
	  height:500px;
	  width:20%;
	  margin-left:20px;
	}
	
	#zero2{
	  height:432px;
	  width:69%;
	   	
	
	   position:absolute;
	 
	}
	.zero11{
	  height:40px;
	  width:210px;
	  border:1px solid #bbf;
	  font-size:14;
	  background-color:#F4F4F4;
	  margin-top:-190px;
	}
	.zero12{
	  height:170px;
	  width:210px;
	  border:1px solid #bbf;
	  font-size:16px;
	}
	.zero13{
	  height:100px;
	  width:210px;
	  border:1px solid #bbf;
	  font-size:16px;
	}
	.zero12 div{
	  margin-top:8px;
	  margin-left:22px;
	}
	.zero12 div span:hover{
	 color:#3366FF;
	}
	.zero13 div{
	  margin-top:8px;
	  margin-left:22px;
	}
	.zero13 div span:hover{
	 color:#3366FF;
	}
	#zero2 {
	border:1px solid #bbf;
	}
    #zero2 table tr td{
     border-top:1px solid black;
     border-bottom:1px solid black;
     
   }
     *{
        color:#000
     }
   </style>
  </head>
  
  <body>
         <i id="i"><img src="<%=basePath%>BackJsp/img/menu.png"/></i> <h2 style="margin-left:60px;"><i>公告管理</i></h2>
     
     <div class="btn-group" style="margin-left:800px;margin-top:-70px;">
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default"><a href="<%=basePath%>BackJsp/xgp/AddNotice.jsp">发布新公告</a></button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default"><span onclick="replaceDoc()">刷新</span></button>
     </div>
     </br>
     <table id="zero">
       <tr>
           <td id="zero1">
              <div class="zero11"><i style="display:block;margin-top:10px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp分类</i></div>
                 <div class="zero12">
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one1">(显示所有)</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one2">新闻资讯</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one3">通知公告</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one4">规章制度</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one5">行业动态</span></div>
                 </div>
                 <div class="zero13">
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one6">本周新增</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one7">本月新增</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one8">本季度新增</span></div>
                </div>
           </td>
           <td id="zero2">
              <div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
						<colgroup>
							<col width="400px">
							<col width="120px">
							<col width="120px">
							<col width="120px">
						</colgroup>
						<thead>
							<tr>
								<th style="height:40px">主题</th>
								<th>发布部门</th>
								<th>创建时间</th>
								<th>更新时间</th>
							</tr>
						</thead>
					   <tbody id="tbody"></tbody>
						
					</table>
				</div>
              
           </td>       
       </tr>
     </table>
    <!--  分页按钮 -->
     <div class="btn-group" style="margin-left:300px;margin-top:-40px;">
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">首页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default"id="prepage"><i style="color:#000">上一页</i></button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default"><i style="color:#000">当前是第<span id="nowPage"></span>页</i></button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default"id="nextpage"><i style="color:#000">下一页</i></button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">尾页</button>
     </div>
      
  </body>
</html>

<script type="text/javascript">
 //刷新
  	 function replaceDoc()
{
    window.location.replace("http://localhost:8080/BackJsp/xgp/External.jsp")
}




 $(function(){
          getAll(1);
      });
 function getAll(pagenum){
         $.ajax({
            url:"Gg/getAllGg",
            type:"post",
            data:{"pageNum":pagenum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
     
//条件查询
      $("#one1").click(function(){
        $.ajax({
            url:"Gg/getAllGgone1",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 
 
//条件查询
      $("#one2").click(function(){
        $.ajax({
            url:"Gg/getAllGgone2",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 

//条件查询
      $("#one3").click(function(){
        $.ajax({
            url:"Gg/getAllGgone3",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 

//条件查询
      $("#one4").click(function(){
        $.ajax({
            url:"Gg/getAllGgone4",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 

//条件查询
      $("#one5").click(function(){
        $.ajax({
            url:"Gg/getAllGgone5",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 
    //条件查询
      $("#one6").click(function(){
        $.ajax({
            url:"Gg/getAllGgone6",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 
    
    //条件查询
      $("#one7").click(function(){
        $.ajax({
            url:"Gg/getAllGgone7",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 
    
    //条件查询
      $("#one8").click(function(){
        $.ajax({
            url:"Gg/getAllGgone8",
            type:"post",
            data:{"pageNum":1},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].ggTheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDept+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggDate+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].ggNewdate+"</td>";
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
    }) 
    


 
</script>

