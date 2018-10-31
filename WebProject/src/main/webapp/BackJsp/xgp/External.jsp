<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>外部通讯录</title>
    
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
	  margin-left:30px;
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
	  margin-top:-250px;
	}
	.zero12{
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
     .tableList tr td a{
       text-decoration:none;
     }
     .tableList tr td a:hover{
       text-decoration:none;
       color:black;
     }
     
   </style>
  </head>
  
  <body>
      <i id="i"><img src="<%=basePath%>BackJsp/img/menu.png"/></i> <h2 style="margin-left:60px;"><i>外部通讯录</i></h2>
        
     <div class="btn-group" style="margin-left:890px;margin-top:-70px;">
       
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default"><a href="<%=basePath%>BackJsp/xgp/AddExternal.jsp">登记记录</a></button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">
	    
	    <span onclick="replaceDoc()">刷新</span>
	    </button>
     </div>
     </br>
     <table id="zero">
       <tr>
           <td id="zero1">
              <div class="zero11"><i style="display:block;margin-top:10px;font-weight:bold;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp分类</i></div>
                 <div class="zero12">
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;" id="one1">显示所有</span></div>
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one2">快递服务类</span></div>
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one3">外卖订餐类</span></div>
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;"id="one4">银行客服类</span></div>
                 </div>
          
           </td>
           <td id="zero2">
              <div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0" >
						<colgroup>
							<col width="300px">
							<col width="100px">
							<col width="100px">
							<col width="100px">
							<col width="100px">
						</colgroup>
							<tr style="border-top:2px solid #999;background-color:#F4F4F4;font-weight:bold">
								<td style="height:40px">姓名</td>
								<td>头衔</td>
								<td>所属单位</td>
								<td>固定电话</td>
								<td>移动电话</td>
							</tr>
						   <tbody id="tbody"></tbody>
						
					</table>
				</div>
              
           </td>       
       </tr>
     </table>
    <!--  分页按钮 -->
     <div class="btn-group" style="margin-left:300px;margin-top:-40px;">
	    <button type="button" style="background:#E3E3E3;color:#000" class="btn btn-default" id="startRow"><i style="color:#000">首页</i></button>
	    <button type="button"  style="background:#E3E3E3;color:#000"class="btn btn-default"  id="prepage"><i style="color:#000">上一页</i></button>
	    <button type="button"  style="background:#E3E3E3;color:#000"class="btn btn-default"><i style="color:#000">当前是第<span id="nowPage"></span>页</i></button>
	    <button type="button"  style="background:#E3E3E3;color:#000"class="btn btn-default" id="nextpage"><i style="color:#000">下一页</i></button>
	    <button type="button"  style="background:#E3E3E3;color:#000"class="btn btn-default" id="endRow">尾页</button>
     </div>
      
    
      
  </body>
</html>
<script>
  //刷新
  	 function replaceDoc()
{
    window.location.replace("http://localhost:8080/BackJsp/xgp/External.jsp")
}

   function goBack()
  {
  /* window.history.back(-1) */
  window.history.go(-1)
  }


      $(function(){
          getAll(1);
      });
      function getAll(pagenum){
         $.ajax({
            url:"Wb/getAllWb",
            type:"post",
            data:{"pageNum":pagenum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td style='height:30px;width:300px;border:1px solid #999;border-right:0px;border-left:0px;color:#004F9D;'>"+
                   "<a href='Wb/getxq?id="+datalist[i].wbid+"'>"+datalist[i].wbname+"</a></td>";
                   tr+="<td style='border:1px solid #999;width:120px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbtx+"</td>";
                   tr+="<td style='border:1px solid #999;width:120px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbssdw+"</td>";
                   tr+="<td style='border:1px solid #999;width:120px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphone+"</td>";
                   tr+="<td style='border:1px solid #999;width:120px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphonenum+"</td>";
                   tr+="</tr>";
                   $("#tbody").append(tr);
               }
               $("#nowPage").html(data.pageNum);
               // alert(data.pageSize);
               MaxPage=data.pageSize;
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
      //条件查询
      $("#one1").click(function(){
        $.ajax({
            url:"Wb/getAllWbone1",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;width:300px;border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+
                   "<a href='Wb/getxq?id="+datalist[i].wbid+"'>"+datalist[i].wbname+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbtx+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbssdw+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphone+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphonenum+"</td>";
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
            url:"Wb/getAllWbone2",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;width:300px;border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+
                   "<a href='Wb/getxq?id="+datalist[i].wbid+"'>"+datalist[i].wbname+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbtx+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbssdw+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphone+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphonenum+"</td>";
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
      //条件查询3
       $("#one3").click(function(){
        $.ajax({
            url:"Wb/getAllWbone3",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;width:300px;border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+
                   "<a href='Wb/getxq?id="+datalist[i].wbid+"'>"+datalist[i].wbname+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbtx+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbssdw+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphone+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphonenum+"</td>";
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
      var MaxPage;
     //条件查询4
      $("#one4").click(function(){
        $.ajax({
            url:"Wb/getAllWbone4",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr  onclick='sund(this)'>";
                   tr+="<td style='height:30px;width:300px;border:1px solid #999;border-right:0px;border-left:0px;color:#6F6F6F;'>"+
                   "<a href='Wb/getxq?id="+datalist[i].wbid+"'>"+datalist[i].wbname+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbtx+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbssdw+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphone+"</td>";
                   tr+="<td style='border:1px solid #999;width:150px;border-right:0px;border-left:0px;color:#6F6F6F;'>"+datalist[i].wbphonenum+"</td>";
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


