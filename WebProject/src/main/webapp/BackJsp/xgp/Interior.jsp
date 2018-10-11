<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Interior.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	}
	
	#zero1{
	  height:1000px;
	  width:20%;
	  
	}
	
	#zero2{
	  height:1800px;
	  width:80%;
	
	   position:absolute;
	 
	}
	#zero2 div{
	  float:left;
	  
	}
	
	
	</style>

   <script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.0.3.min.js"></script>
 

  </head>
  
  <body>
   <i id="i"><img src="<%=basePath%>BackJsp/img/menu.png"/></i> <h2 style="margin-left:30px;"><i>内部通讯录</i></h2>
    <div style="margin-left:900px;margin-top:-50px;">
     <img src="<%=basePath%>BackJsp/img/one.png">
     <img src="<%=basePath%>BackJsp/img/two.png">
     <img src="<%=basePath%>BackJsp/img/three.png">
     
   </div>
   </br>
    <table id="zero">
       <tr>
       <td id="zero1">
         <div class="menuDiv">
    &nbsp&nbsp&nbsp<a><img src="<%=basePath%>BackJsp/img/userX10000.gif">显示所有</a><br>
	&nbsp<i onclick="Show_Hidden(tr1)">+</i><a><img src="<%=basePath%>BackJsp/img/userX10000.gif">阿尔法集团</a>
	<table id="tr1" style="display:none;">
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">总经办</td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">人事部</td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">财务部</td></tr>
		<tr >
			<td>&nbsp&nbsp
			   <i onclick="Show_Two(tr2)">+</i><a><img src="<%=basePath%>BackJsp/img/userX10000.gif">科技公司</a>
			      <table id="tr2" style="display:none">
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">采购部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">技术部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">生产部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">营销部</td></tr>
			      </table>
			</td>
		</tr>
		<tr >
			<td>&nbsp&nbsp
			   <i onclick="Show_Three(tr3)">+</i><a><img src="<%=basePath%>BackJsp/img/userX10000.gif">工程公司</a>
			      <table id="tr3" style="display:none">
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">工程部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">售后部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">网络部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">销售部</td></tr>
			      </table>
			</td>
		</tr>
		<tr >
			<td>&nbsp&nbsp
			   <i onclick="Show_Four(tr4)">+</i><a><img src="<%=basePath%>BackJsp/img/userX10000.gif">现代事务所</a>
			      <table id="tr4" style="display:none">
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">产权部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">法务部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">税务部</td></tr>
			         <tr><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">咨询部</td></tr>
			      </table>
			</td>
		</tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">北京机构</td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">杭州机构</td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">上海机构</td></tr>
		<tr ><td>&nbsp&nbsp&nbsp&nbsp&nbsp<img src="<%=basePath%>BackJsp/img/userX10000.gif">深圳机构</td></tr>
		
	</table>
</div>
      
         
         
         
       </td>
       <td id="zero2">
         <div style="height:200px;width:350px; border: 1px solid #bbf; float:left;">
           <div id="tp" style="height:200px;width:23%;">
           <img src="<%=basePath%>BackJsp/img/h9.png"style="margin-top:10px;margin-left:10px;">
           </div>
           <div> 
                                       姓名：<br>
                                       名言：<br>
                                       从属机构：<br>
                                       固定电话：<br>
                                       移动电话：<br>
                                       电子邮箱：<br>
                                       即时通讯：<br>
           </div>
         
         </div>
          <div style="height:200px;width:350px; border: 1px solid #bbf;">
         </div>
         <div style="height:200px;width:350px; border: 1px solid #bbf;">
         </div>
       </div>
       </td>
    </table>
    <div style="margin-left:400px;">
    <a>首页</a>
    <a>上一页</a>
    <a>当前页</a>
    <a>下一页</a>
    <a>尾页</a>
    </div>
</body>
</html>
	<script type="text/javascript">
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
	</script>
