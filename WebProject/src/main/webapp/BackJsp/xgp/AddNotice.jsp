<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddNotice.jsp' starting page</title>
    
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
     
     <META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD>
	 
	<style>
	  *{color:#000;
	  }
	
	</style>
  </head>
  
  
  <BODY id="colloaBody" style="background-image:url(../assets/img/bg1.jpg)">
   <TABLE style="width: 100%; height: 100%; min-width: 950px;" border="0" 
    cellspacing="0" cellpadding="0">
   <TBODY>
    <TR valign="top">
    
    <TD>&nbsp;</TD>
    
    <TD id="colloaForm">
    
      <DIV class="formTaskflowContainer">
      <FORM action="Gg/AddGg" class="formTaskflow" method="post" id="adds" enctype="multipart/form-data">
     <!--第一部分 -->
     
     
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
                 <SPAN id="mapping.dbf.responsorSource"><input type="text"style="border:0px;"name=ggResponsible readonly="readonly" value="${CurrentUser.uname }">
                 </SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: 
                 <SPAN id="mapping.dbf.participantsSource"></SPAN>
            </TD>
            <TD style="text-align: right;">&nbsp;优先级:</TD>
            <TD>
                 <INPUT name="ggPriority" id="dbf.priority" type="radio" value="低" 
                 autocomplete="off">低
                 <INPUT name="ggPriority" id="dbf.priority" 
                 type="radio" checked="" value="中" autocomplete="off">中
                 <INPUT name="ggPriority" id="dbf.priority" type="radio" value="高" 
                 autocomplete="off">高
            </TD>
        </TR>
        </TBODY>
        </TABLE>
       <!-- 第二部分  -->
       
       
      <TABLE class="tableListBorder" style="table-layout: fixed;" border="0" 
        cellspacing="0" cellpadding="0" summary="">
        <COLGROUP>
        <COL width="10%">
        <COL width="35%">
        <COL width="10%">
        <COL></COLGROUP>
        <TBODY>
        <TR>
            <TD class="fieldLable"><B style="color: red;">*</B>分类
            </TD>
            <TD id="dbf.psid2" dbf.type="required!0" dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.taskX.bulletin' and statusX>0 order by sortId,name" 
            dbf.key="0">
                <!-- <IMG class="fieldGetValueBySource" onclick="fieldGetValueBySource('dbf.psid2',this);" 
                src="BackJsp/img/fieldSource.gif">  -->
              <!--   <DIV id="e.dbf.psid2Source">&nbsp;aaa
                </DIV> -->
                <select style="height:20px;width:300px;margin:0;padding:0;border:0px" 
                  name="ggClassify" id="e.dbf.psid2Source">
                  <option>新闻资讯</option>
                  <option>通知公告</option> 
                  <option>规章制度</option>
                  <option>行业动态</option>   
               </select>
                
                
                
            </TD>
            <TD class="fieldLable">关键字
            </TD>
            <TD id="dbf.keyInfo">
               <INPUT class="fieldEditable" id="e.dbf.keyInfo" name="ggKeyword">
            </TD>
         </TR>
        <TR>
            <TD class="fieldLable"><B style="color: red;">*</B>发布部门
            </TD>
            <TD id="dbf.division" dbf.type="required!0" dbf.source="form.fieldSource.division" 
            dbf.key="1000034"> 
               <!-- <IMG class="fieldGetValueBySource" onclick="fieldGetValueBySource('dbf.division',this);" 
                src="BackJsp/img/fieldSource.gif"> 
                <DIV id="e.dbf.divisionSource">销售部
                </DIV> -->
                <select style="height:20px;width:300px;margin:0;padding:0;border:0px" 
                  name="ggDept" id="e.dbf.divisionSource">
                  <option>阿尔法集团</option>
                  <option>总经办</option> 
                  <option>人事部</option>
                  <option>财务部</option>
                  <option>科技公司</option>
                  <option>采购部</option>
                  <option>技术部</option>
                  <option>生产部</option>
                  <option>营销部</option>
                  <option>工程公司</option>
                  <option>工程部</option>
                  <option>售后部</option>
                  <option>网络部</option>
                  <option>销售部</option>
                  <option>现代事务所</option>
                  <option>产权部</option>
                  <option>法务部</option>
                  <option>税务部</option>
                  <option>咨询部</option>
                  <option>北京机构</option>
                  <option>上海机构</option>
                  <option>杭州机构</option>

                </select>
                
            </TD>
          <TD class="fieldLable">附件
          </TD>
          <TD id="dbf.links" dbf.type="" dbf.source="files">
                
               <DIV id="e.dbf.keyInfo">
                  <input type="file" id="e.dbf.positionX" name="file" class="fieldEditable" >
          </TD>
       </TR>
       </TBODY>
       </TABLE>
      <!--第三部分   -->
         
      
      <TABLE border="0" cellspacing="10" cellpadding="0">
     <TBODY>
        <tr>
          <td><input type="text" name="ggTheme"
           style="width:900px;text-align:center;font-size:20px;BACKGROUND-COLOR:#F5F5F5;"></td>
        </tr><br>
     
          <TR>
             <TD id="content" style="vertical-align: top;" dbf.type="html" dbf.source="">
                <TEXTAREA class="fieldEditable" id="e.content" style="height: 200px;" dbf.type="htm"name="ggContent">
                 [在这里输入正文，或者上传图片。如果设置一个图片的ID属性为thumb，
                                                  它将成为信息发布后的缩略图。不同信息中的缩略图应该具有相等的原始宽高比]
                </TEXTAREA>
             </TD>
          </TR>
       </TBODY>
       </TABLE>

               
        <button type="submit" class="btn btn-primary btn-lg active" style="margin-left:400px;" id="add" onclick="sub()">添加</button>
     </FORM>
     </DIV>
     
   
     
     
      
      <FORM method="post"><INPUT name="viewState" id="viewState" type="hidden">
      </FORM>

      
         </TD>
         <TD>&nbsp;
         
         </TD>
         </TR>
    
    </TBODY>
    </TABLE>
    
    </BODY></HTML>
    <script>
    //时间
  /*      $(function() {
    $( "#datepicker" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: true
    });
  }); */
   $(function() {
    $( "#datepicker" ).datepicker();
    $( "#format" ).change(function() {
      $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
    });
  });
        /*  function sub(){
         var file=new FormData($("#forem")[0]);
             $.ajax({
                     url:"god/addGoods",
                     type:"post",
                     data:file,
                     async:false,
                     cache:false,
                     contentType:false,
                     processData:false,
                     success:function(data){
                           
                           window.location.href="queryAll.jsp";
                     },error:function(){
                         alert("error");
                     }
             })
         } */
    
    
    
    
   
    </script>
    
    
    
    
