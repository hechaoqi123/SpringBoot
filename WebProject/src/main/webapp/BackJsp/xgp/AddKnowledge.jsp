<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddKnowledge.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/jquery-1.10.2.min.js"></script>
	<link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap.min.css">
	 <script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.0.3.min.js"></script>
	 <LINK href="../images/colloa.ico" rel="shortcut icon">  
     <LINK href="<%=basePath%>assets/css/font-awesome.min.css" rel="stylesheet">   
     <LINK href="<%=basePath%>assets/css/view.css" rel="stylesheet">     
	 <SCRIPT src="<%=basePath%>assets/js/viewCn.js" type="text/javascript"></SCRIPT>
     <SCRIPT src="<%=basePath%>assets/js/view.js" type="text/javascript"></SCRIPT>
     <SCRIPT src="<%=basePath%>assets/js/utility.js" type="text/javascript"></SCRIPT>
     <SCRIPT src="<%=basePath%>assets/js/ckeditor.js" type="text/javascript"></SCRIPT>
     <link rel="stylesheet" href="<%=basePath%>assets/css/jquery-ui.min.css">
     <script src="<%=basePath%>assets/js/jquery.min.js"></script>
     <script src="<%=basePath%>assets/js/jquery-ui.min.js"></script>
     <link rel="stylesheet" href="<%=basePath%>assets/css/style.css">
       <style>
	  *{color:#000;
	  }
	
	</style>

  </head>
  
  <body id="colloaBody"style="background-image:url(../assets/img/bg1.jpg)">
<TABLE style="width: 100%; height: 100%; min-width: 950px;" border="0" 
cellspacing="0" cellpadding="0">
  <TBODY>
  <TR valign="top">
    <TD>&nbsp;</TD>
    <TD id="colloaForm">
      <DIV class="formTaskflowContainer">
         <FORM class="formTaskflow" action="Zs/AddZs" method="post" enctype="multipart/form-data">
         
        <!--第一部分   -->
     
      <TABLE align="center" class="tableListBorder" style="table-layout: fixed;" 
      border="0" cellspacing="0" cellpadding="0">
        <COLGROUP>
          <COL width="10%">
          <COL width="40%">
          <COL width="10%">
          <COL width="10%">
          <COL width="10%">
          <COL>
        </COLGROUP>
        <TBODY>
          
          <TR>
             <TD class="fieldLable">
                <B style="color: red;">*</B>分类
             </TD>
             <TD id="dbf.psid2" dbf.type="required!0" 
             dbf.source="form.fieldSource.treeWithRight&amp;
             sql=select sid,name,psid,stype from categoryX where modello='categoryX.taskX.document' and statusX>0 order by sortId,name" 
             dbf.key="0">
                 <!-- <DIV id="e.dbf.psid2Source">&nbsp;
                 </DIV> -->
                 <select style="height:20px;width:380px;margin:0;padding:0;border:0px" 
                  name="zsclassify" id="e.dbf.divisionSource">
                  <option>合理化建议</option>
                  <option>技术交流</option> 
                  <option>企业文化</option>
                  <option>生活娱乐</option>
                  <option>其他</option>   
                </select>
              </TD>
              
              <TD class="fieldLable">标签
              </TD>
              <TD id="dbf.keyInfo" colspan="3">
                <INPUT class="fieldEditable" id="e.dbf.keyInfo"name="zslabel">
              </TD>
         </TR>
         <TR>
            <TD class="fieldLable"><B style="color: red;">*</B>作者
            </TD>
            <TD id="dbf.links" colspan="5" dbf.source="files">
              <DIV id="e.dbf.links">
               <input type="text" id="e.dbf.positionX" name="zsauthor"readonly="readonly" value="${CurrentUser.uname }"class="fieldEditable">
              </DIV>
            </TD>
         </TR>
          <TR>
            <TD class="fieldLable"><B style="color: red;">*</B>主题
            </TD>
            <TD id="dbf.links" colspan="5" dbf.source="files">
              <DIV id="e.dbf.links">
               <input type="text" id="e.dbf.positionX" name="zstheme" class="fieldEditable">
              </DIV>
            </TD>
         </TR>
         <TR>
            <TD class="fieldLable">附件
            </TD>
            <TD id="dbf.links" colspan="5" dbf.source="files">
              <!-- <IMG class="fieldGetValueBySource" 
              onclick="fieldGetValueBySource('dbf.links',this);" 
              src="BackJsp/img/fieldSource.gif">  -->
              <DIV id="e.dbf.links">
              
               <input type="file" id="e.dbf.positionX" name="file" class="fieldEditable">
              </DIV>
            </TD>
         </TR>
      </TBODY>
    </TABLE>
    
     <!--第二部分   -->
      <TABLE align="center" class="tableListBorder2" border="0" cellspacing="0" 
      cellpadding="0">
        <TBODY>
          <TR valign="top">
            <TD id="content" style="padding: 10px;" 
            dbf.type="html"> 
               <TEXTAREA class="fieldEditable" id="e.content" style="height: 300px;" dbf.type="htm"name="zscontext">
               [如果已经上传附件，请在这里简要介绍。如果没有上传附件，请在这里输入正文]
               </TEXTAREA>
            </TD>
          </TR>
        </TBODY>
      </TABLE>
        <button type="submit" style="margin-top:100px;"class="btn btn-primary btn-lg btn-block" id="add" onclick="sub()">添加</button>
       
      
      </FORM>
      </DIV>
      </TD>
      
      <TD>&nbsp;
      </TD>
      </TR>
    </TBODY>
  </TABLE>
    
</body>
</html>
