<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gz.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
    #tger div{
     border:1px solid #99;
     height:10%;
     width:100%
   }
   #tger{
   min-width:980px;
   width:100%;
   height:100%";
  cellpadding:"0";
  cellspacing:"0";
    boder:"0";
   }
    #gr{
   position:absolute;
   }
  #zear{
       height:980px;
	  width:100%;
	  float:left;
	
  }
  #zear1{
      
       height:980px;
	  width:30%;
	  float:left;
 
  }
  #zear2{
        height:1000px;
	  width:70%;
	   position:absolute;

  }
    #zear1 div{
      border:1px solid #bbf;
       height:1000px;
      
  }
  #sert{
  
  
  }
  </style>
  
  <body>
    <table id="tger">
   <tbody>
   <tr>
   <td>
   <h1 style="display:inline;font-size:25px;line-height:1.0;"><img style="cursor:pointer;vertical-align:middle;" src="img/menu.png"/> 我的工作计划</h1> 
 	</td>
  <td >
        <a title="后退">
         <img  style="margin-left:750px;" src="../img/pn.png"/>
        </a>
        <a title="刷新">	
           <img align="top" src="../img/pg.png"/>
        </a>
      <a title="刷新">	
           <img align="top"  src="../img/pg.png"/>
        </a>
    </td>
 </tr>
   </tbody>
   <tr>
   	<td>
      <table id="zear">
       <tbody>
         <tr>
            <td id="zaer1">
              <div class="sss">
                 <tbody>
                  <tr>
                    <td id="sert"></td>
                     <td></td>
                  </tr>
                 </tbody>
              </div>
              <div>
                <tbody>
                  <tr>
                    <td id="sert"></td>
                     <td></td>
                  </tr>
                 </tbody>
              </div>
           </td>
             <td id="zaer2">
              <div></div>
             </td>
           </tr>
         </tbody>
        </table>
        </td>
        </tr>
   </table>
   
</body>
 </html>
