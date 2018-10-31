<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddDocument.jsp' starting page</title>
    
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
         <FORM class="formTaskflow" action="Wd/AddWd" method="post" enctype="multipart/form-data">
         
        <!--第一部分   -->
           <TABLE class="tableForm" style="margin-bottom: 20px; table-layout: fixed;" 
      border="0" cellspacing="0" cellpadding="0">
        <COLGROUP>
        <COL width="60">
        <COL>
        <COL width="80">
        <COL width="140"></COLGROUP>
        <TBODY>
        <TR>
             <TD align="right">&nbsp;步骤:</TD>
             <TD><SPAN id="mapping.dbf.procXSource">起草</SPAN>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: 
                 <SPAN id="mapping.dbf.responsorSource"><input type="text"style="border:0px;"name="wdresponsible" readonly="readonly" 
                 value="${list[0].wdresponsible}">
                 </SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: 
                 <SPAN id="mapping.dbf.participantsSource"></SPAN>
            </TD>
            <TD style="text-align: right;">&nbsp;优先级:</TD>
            <TD>
                 <INPUT type="text" style="border:0px"name="wdpriority"id="dbf.priority" readonly="readonly" value="${list[0].wdpriority}" 
                 autocomplete="off">
                 
            </TD>
        </TR>
        </TBODY>
        </TABLE>


      
     <!--第二部分   -->
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
              <B style="color: red;">*</B>名称
            </TD>
            <TD id="dbf.subject" dbf.type="required">
                <INPUT class="fieldEditable"readonly="readonly"  id="e.dbf.subject" name="wdname"value="${list[0].wdname}">
            </TD>
            <TD class="fieldLable">版本号
            </TD>
            <TD id="dbf.versionX">
                <INPUT class="fieldEditable" id="e.dbf.versionX" readonly="readonly" name="wdversions"value="${list[0].wdversions}">
            </TD>
            <TD class="fieldLable">作者
            </TD>
            <TD id="dbf.operatorSource">
               <INPUT class="fieldEditable" id="e.dbf.operatorSource"readonly="readonly" name="wdauthor"value="${list[0].wdauthor}">
            </TD>
          </TR>
          <TR>
             <TD class="fieldLable">
                <B style="color: red;">*</B>分类
             </TD>
             <TD id="dbf.psid2" dbf.type="required!0" 
             dbf.source="form.fieldSource.treeWithRight&amp;
             sql=select sid,name,psid,stype from categoryX where modello='categoryX.taskX.document' and statusX>0 order by sortId,name" 
             dbf.key="0">
                 
                 <input type="text" style="height:20px;width:340px;margin:0;padding:0;border:0px" 
                  name="wdclassify"readonly="readonly" value="${list[0].wdclassify}" id="e.dbf.divisionSource">
                  
              </TD>
              <TD class="fieldLable">关键字
              </TD>
              <TD id="dbf.keyInfo" colspan="3">
                <INPUT class="fieldEditable" readonly="readonly" id="e.dbf.keyInfo"name="wdkeyword"value="${list[0].wdkeyword}">
              </TD>
         </TR>
         <TR>
            <TD class="fieldLable">所属部门
            </TD>
            <TD id="dbf.division" dbf.source="form.fieldSource.division" dbf.key="1000034">
               
               <input type="text" style="height:20px;width:340px;margin:0;padding:0;border:0px" 
                  name="wddept"readonly="readonly" value="${list[0].wddept}" id="e.dbf.divisionSource">
                 
            </TD>
            <TD class="fieldLable">所属项目
            </TD>
            <TD colspan="3">
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
              
               <!-- <input type="file" id="e.dbf.positionX" name="file" class="fieldEditable"> -->
              </DIV>
            </TD>
         </TR>
      </TBODY>
    </TABLE>
    
     <!--第三部分   -->
      <TABLE align="center" class="tableListBorder2" border="0" cellspacing="0" 
      cellpadding="0">
        <TBODY>
          <TR valign="top">
            <TD id="content" style="padding: 10px;" 
            dbf.type="html"> 
               <TEXTAREA class="fieldEditable" id="e.content" readonly="readonly" style="height: 300px;" dbf.type="htm"name="wbintro"value="${list[0].wbintro}">
               [如果已经上传附件，请在这里简要介绍。如果没有上传附件，请在这里输入正文]
               </TEXTAREA>
            </TD>
          </TR>
        </TBODY>
      </TABLE>
      
      
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