<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>知识社区</title>
    
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
	  
	}
	
	#zero2{
	  height:432px;
	  width:70%;
	   	
	
	   position:absolute;
	 
	}
	.zero11{
	  height:40px;
	  width:210px;
	  border:1px solid #bbf;
	  font-size:14;
	  background-color:#F4F4F4;
	  margin-top:-40px;
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
	.zero14{
	  height:150px;
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
	.zero14 div{
	  margin-top:8px;
	  margin-left:22px;
	}
	.zero14 div span:hover{
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
        color:#000;
      }
   </style>
  
   
   
  </head>
  
  <body>
        <i id="i"><img src="<%=basePath%>BackJsp/img/menu.png"/></i> <h2 style="margin-left:60px;"><i>知识社区</i></h2>
     
     <div class="btn-group" style="margin-left:700px;margin-top:-70px;">
	    <button type="button" class="btn btn-default" style="background:#fff;color:#000">后退</button>
	    <button type="button" class="btn btn-default" style="background:#fff;color:#000">+社区发帖</button>
	    <button type="button" class="btn btn-default" style="background:#fff;color:#000">查找</button>
	    <button type="button" class="btn btn-default" style="background:#fff;color:#000">设置关注</button>
	    <button type="button" class="btn btn-default" style="background:#fff;color:#000">刷新</button>
     </div>
     </br>
     <table id="zero">
       <tr>
       
           <td id="zero1">
              <div class="zero11"><i style="display:block;margin-top:10px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp分类</i></div>
                 <div class="zero12">
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one1">(显示所有)</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one2">合理化建议</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one2">技术交流</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one2">企业文化</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one2">生活娱乐</span></div>
                 </div>
                 <div class="zero13">
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one3">本周新增</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one4">本月新增</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" class="one5">本季度新增</span></div>
                 </div>
                 
           </td>
           <td id="zero2">
              <div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
						<colgroup>
							<col width="300px">
							<col width="120px">
							<col width="120px">
							<col width="120px">
							<col width="120px">
						</colgroup>
						<thead>
							<tr>
								<th style="height:40px">主题</th>
								<th>作者</th>
								
								<th>回复</th>
								<th>最后回复</th>
							</tr>
						</thead>
						<tbody id="tbody">
						</tbody>
						
					</table>
				</div>
              
           </td>       
       </tr>
     </table>
    <!--  分页按钮 -->
     <div class="btn-group" style="margin-left:300px;margin-top:-40px;color:#000">
	    <button type="button" class="btn btn-default" id="startRow"><i style="color:#000">首页</i></button>
	    <button type="button" class="btn btn-default" id="prepage"><i style="color:#000">上一页</i></button>
	    <button type="button" class="btn btn-default"><i style="color:#000">当前是第<i id="nowPage"></i>页</i></button>
	    <button type="button" class="btn btn-default" id="nextpage"><i style="color:#000">下一页</i></button>
	    <button type="button" class="btn btn-default" id="endRow"><i style="color:#000">尾页</i></button>
     </div>
     





  </body>
</html>

<script>
     //查询
		$(function(){
          getAll(1);
      });
      var datas;
 function getAll(pagenum){
         $.ajax({
            url:"Zs/getAllZs",
            type:"post",
            data:{"pageNum":pagenum},
            dataType:"json",
            success:function(data){
            datas = data;
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].zstheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zsauthor+"("+datalist[i].zsdate+")"+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zh+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zd+"</td>";
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
     
     //点击查询
      $(".one1").click(function(){
        $.ajax({
            url:"Zs/getAllZs",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
                  var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].zstheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zsauthor+"("+datalist[i].zsdate+")"+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zh+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zd+"</td>";
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
     //条件查询
      $(".one2").click(function(){
        $.ajax({
            url:"Zs/getAllone2",
            type:"post",
            data:{"pageNum":1,"zsclassify":$(this).html()},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
                  var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+datalist[i].zstheme+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zsauthor+"("+datalist[i].zsdate+")"+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zh+"</td>";
                   tr+="<td style='border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].zd+"</td>";
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
     
     
     
     
     $("#prepage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage-1);
      })
       $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      })
     $("#startRow").click(function(){
         getAll(1);
      })
      $("#endRow").click(function(){
         getAll(MaxPage);
      })


</script>

