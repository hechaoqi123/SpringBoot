<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>内部通讯录</title>
    
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
	.menuDiv { 
        border: 2px solid #D8D8D8; 
        overflow: hidden; 
        display:inline-block;
        width:200px;
        margin-top:-500px;
     }
    
     .menuDiv a {
        text-decoration: none;
    }
    
    .menuDiv > a:hover{
      color:#0066FF;
    }
    #i{
    position: absolute;
     margin-top:3px;
     margin-left:30px;
    }
	.cx{
	    width: 120px;
        line-height: 40px;
        color: black;
        background-color: #cfe;
        text-align: center;
        border-left: 1px solid #bbf;
        display: block;
        text-decoration: none;
        margin-top:-35px;
	}
	
	#zero{
	  height:1000px;
	  width:100%;
	  float:left;
	  margin-left:50px;
	}
	#zero1{
	  height:1000px;
	  width:20%;
	}
	#zero1 div:hover{
	}
	#zero2{
	  height:1800px;
	  width:80%;
	   position:absolute;
	}
	#zero2 div{
	  float:left;
	}
	*{
	   color:#000;
	 }
	 button:hover{
	    color:red;
	 }
	 #tbody{
	 float:left;
	 }
	 
	 #one0:hover{color:#0061C1;}#one1:hover{color:#0061C1;}#one2:hover{color:#0061C1;}
	 #one3:hover{color:#0061C1;}#one4:hover{color:#0061C1;}#one5:hover{color:#0061C1;}
	 #one6:hover{color:#0061C1;}#one7:hover{color:#0061C1;}#one8:hover{color:#0061C1;}
	 #one9:hover{color:#0061C1;}#one10:hover{color:#0061C1;}#one11:hover{color:#0061C1;}
	 #one13:hover{color:#0061C1;}#one14:hover{color:#0061C1;}#one015:hover{color:#0061C1;}
	 #one016:hover{color:#0061C1;}#one17:hover{color:#0061C1;}#one18:hover{color:#0061C1;}
	 #one19:hover{color:#0061C1;}#one20:hover{color:#0061C1;}#one21:hover{color:#0061C1;}
	 #one22:hover{color:#0061C1;}#one23:hover{color:#0061C1;}
	 
	 
	 
	</style>

   <script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.0.3.min.js"></script>
 

  </head>
  
  <body>
   <i id="i"><img src="<%=basePath%>BackJsp/img/menu.png"/></i> <h2 style="margin-left:60px;"><i>内部通讯录</i></h2>
    
     <div class="btn-group" style="margin-left:800px;margin-top:-70px;">
	   
	   <button type="button" style="color:#000;background:#fff" class="btn btn-default"><span onclick="replaceDoc()">刷新</span></button>
     </div>
   </br>
    <table id="zero">
       <tr>
       <td id="zero1">
         <div class="menuDiv">
    &nbsp&nbsp&nbsp<a><img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one0">显示所有</span></a><br>
	&nbsp<i onclick="Show_Hidden(tr1)" value="+" id="two"><a><img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one1">阿尔法集团</span></a></i>
	<table id="tr1" style="display:none;">
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one2">总经办</span></td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one3">人事部</span></td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one4">财务部</span></td></tr>
		<tr >
			<td>&nbsp&nbsp
			   <i onclick="Show_Two(tr2)" id="two"><a><img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one5">科技公司</span></a></i>
			      <table id="tr2" style="display:none">
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one6">采购部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one7">技术部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one8">生产部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one9">营销部</span></td></tr>
			      </table>
			</td>
		</tr>
		<tr >
			<td>&nbsp&nbsp
			   <i onclick="Show_Three(tr3)" id="two"><a><img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one10">工程公司</span></a></i>
			      <table id="tr3" style="display:none">
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one11">工程部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one12">售后部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one13">网络部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one14">销售部</span></td></tr>
			      </table>
			</td>
		</tr>
		<tr >
			<td>&nbsp&nbsp
			   <i onclick="Show_Four(tr4)" id="two"><a><img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one15">现代事务所</span></a></i>
			      <table id="tr4" style="display:none">
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one16">产权部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one17">法务部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one18">税务部</span></td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one19">咨询部</span></td></tr>
			      </table>
			</td>
		</tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one20">北京机构</span></td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one21">杭州机构</span></td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one22">上海机构</span></td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif"><span id="one23">深圳机构</span></td></tr>
		
	</table>
</div>
      
         
         
         
       </td>
       <td id="zero2">
         <div id="tbody">
          
         </div>
          
       </div>
       </td>
    </table>
    <div style="margin-left:400px;">
   
    <!--  分页按钮 -->
     <div class="btn-group" style="margin-left:70px;margin-top:-150px;color:#000">
	    <button type="button" class="btn btn-default"><i style="color:#000">首页</i></button>
	    <button type="button" class="btn btn-default" id="prepage"><i style="color:#000">上一页</i></button>
	    <button type="button" class="btn btn-default"><i style="color:#000">当前是第<i id="nowPage"></i>页</i></button>
	    <button type="button" class="btn btn-default" id="nextpage"><i style="color:#000">下一页</i></button>
	    <button type="button" class="btn btn-default"><i style="color:#000">尾页</i></button>
     </div>
    </div>
</body>
</html>
	<script type="text/javascript">
/*刷新 	
	 */
	 function replaceDoc()
{
    window.location.replace("http://localhost:8080/BackJsp/xgp/Interior.jsp")
}
		function Show_Hidden(trid){
		    if(trid.style.display=="block"){
		        trid.style.display='none';
		    }else{
		        trid.style.display='block';
		    }
		}
		
			function Show_Two(trid){
		    if(trid.style.display=="block"){
		        trid.style.display='none';
		    }else{
		        trid.style.display='block';
		    }
		}
			function Show_Three(trid){
		    if(trid.style.display=="block"){
		        trid.style.display='none';
		    }else{
		        trid.style.display='block';
		    }
		}
			function Show_Four(trid){
		    if(trid.style.display=="block"){
		        trid.style.display='none';
		    }else{
		        trid.style.display='block';
		    }
		}
		//查询所有分页
		$(function(){
          getAll(1);
      });
      function getAll(pagenum){
      
         $.ajax({
            url:"userdetail/getAllUser",
            type:"post",
            data:{"pageNum":pagenum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:8px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:270px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      //条件查询
      $("#one0").click(function(){
        $.ajax({
            url:"userdetail/getAllOne0",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one1").click(function(){
        $.ajax({
            url:"userdetail/getAllOne1",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne2",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne3",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne4",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne5",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne6",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne7",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
            url:"userdetail/getAllOne8",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one9").click(function(){
        $.ajax({
            url:"userdetail/getAllOne9",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one10").click(function(){
        $.ajax({
            url:"userdetail/getAllOne10",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one11").click(function(){
        $.ajax({
            url:"userdetail/getAllOne11",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one12").click(function(){
        $.ajax({
            url:"userdetail/getAllOne12",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one13").click(function(){
        $.ajax({
            url:"userdetail/getAllOne13",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one14").click(function(){
        $.ajax({
            url:"userdetail/getAllOne14",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one15").click(function(){
        $.ajax({
            url:"userdetail/getAllOne15",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one16").click(function(){
        $.ajax({
            url:"userdetail/getAllOne16",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one17").click(function(){
        $.ajax({
            url:"userdetail/getAllOne17",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one18").click(function(){
        $.ajax({
            url:"userdetail/getAllOne18",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one19").click(function(){
        $.ajax({
            url:"userdetail/getAllOne19",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one20").click(function(){
        $.ajax({
            url:"userdetail/getAllOne20",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one21").click(function(){
        $.ajax({
            url:"userdetail/getAllOne21",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one22").click(function(){
        $.ajax({
            url:"userdetail/getAllOne22",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
      $("#one23").click(function(){
        $.ajax({
            url:"userdetail/getAllOne23",
            type:"post",
            data:{"pageNum":1},//将数组转成json字符串
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
               var datalist=data.list;
                for(var i=0;i<datalist.length;i++){
               
                   var div="<div style='width:360px;height:200px;border:5px solid #E8E8E8;float:left';>";
                  div+="<div style='width:70px;height:200px;border:0px solid red;float:left'>"+"<img src='<%=basePath%>BackJsp/img/h9.png'style='margin-top:10px;margin-left:5px;'>";
                  div+="</div>"
                  div+="<div style='width:278px;height:200px;border:0px solid red;float:left'>"+"<br>"+"<img src='<%=basePath%>BackJsp/img/six.png'>"+"姓名:"+datalist[i].username+"<br>"+"名言:"+datalist[i].dependence+"<br><br>"
                  +"从属机构:"+datalist[i].entryDate+"<br>"+"固定电话:"+datalist[i].phone+"<br>"+"移动电话:"+
                  datalist[i].telephone+"<br>"+"电子邮箱:"+datalist[i].email+"<br>"+"即时通讯:"+datalist[i].message ;
                  div+="</div>";
                   div+="</div>";
                   $("#tbody").append(div);
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
