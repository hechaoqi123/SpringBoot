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
	.zero13 div{
	  margin-top:8px;
	  margin-left:22px;
	}
	.zero14 div{
	  margin-top:8px;
	  margin-left:22px;
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
        <i id="i"><img src="<%=basePath%>BackJsp/img/menu.png"/></i> <h2 style="margin-left:30px;"><i>知识社区</i></h2>
     
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
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">(显示所有)</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">合理化建议</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">技术交流</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">企业文化</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">生活娱乐</span></div>
                 </div>
                 <div class="zero13">
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">本周新增</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">本月新增</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">本季度新增</span></div>
                 </div>
                 <div class="zero14">
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">我发布的</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">我关注的</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">热门帖子</span></div>
                   <div><img src="<%=basePath%>BackJsp/img/five.png"><span style="position:absolute;">精华帖子</span></div>
                   
                 </div>
           </td>
           <td id="zero2">
              <div id="colloaContent2">
					<table class="tableList" style="table-layout:fixed;" cellspacing="0" cellpadding="0" border="0">
						<colgroup>
							<col width="450px">
							<col width="200px">
							<col width="100px">
							<col width="100px">
							<col width="100px">
						</colgroup>
						<thead>
							<tr>
								<th style="height:40px">主题</th>
								<th>作者</th>
								<th>点击</th>
								<th>回复</th>
								<th>最后回复</th>
							</tr>
						</thead>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr onclick="sund(this)">
							<td style="height:30px">1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
					</table>
				</div>
              
           </td>       
       </tr>
     </table>
    <!--  分页按钮 -->
     <div class="btn-group" style="margin-left:220px;margin-top:-40px;">
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">首页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">上页</button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">当前页</button>
	    <button type="button"  style="background:#fff;color:#000"class="btn btn-default">下页</button>
	    <button type="button" style="background:#fff;color:#000" class="btn btn-default">尾页</button>
     </div>
     





  </body>
</html>
