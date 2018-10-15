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
	}
	
	#zero1{
	  height:500px;
	  width:20%;
	  
	}
	
	#zero2{
	  height:432px;
	  width:80%;
	   	
	
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
     
     <div class="btn-group" style="margin-left:800px;margin-top:-70px;">
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">后退</button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">登记记录</button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">查找</button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">刷新</button>
     </div>
     </br>
     <table id="zero">
       <tr>
           <td id="zero1">
              <div class="zero11"><i style="display:block;margin-top:10px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp分类</i></div>
                 <div class="zero12">
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">显示所有</span></div>
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">快递服务类</span></div>
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">外卖订餐类</span></div>
                 <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">银行客服类</span></div>
                 </div>
          
           </td>
           <td id="zero2">
              <div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
						<colgroup>
							<col width="300px">
							<col width="150px">
							<col width="150px">
							<col width="150px">
							<col width="150px">
						</colgroup>
						<thead>
							<tr>
								<th style="height:40px">姓名</th>
								<th>头衔</th>
								<th>所属单位</th>
								<th>固定电话</th>
								<th>移动电话</th>
							</tr>
						</thead>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						<tr  onclick="sund(this)">
							<td style="height:30px;border:1px solid #999;border-right:0px;border-left:0px;"><a href="#">EMS邮政特快专递</a></td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
							<td style="border:1px solid #999;border-right:0px;border-left:0px;">1</td>
						</tr>
						
						
						
					</table>
				</div>
              
           </td>       
       </tr>
     </table>
    <!--  分页按钮 -->
     <div class="btn-group" style="margin-left:220px;margin-top:-40px;">
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">首页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">上页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">当前页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">下页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">尾页</button>
     </div>
      
    
      
  </body>
</html>
