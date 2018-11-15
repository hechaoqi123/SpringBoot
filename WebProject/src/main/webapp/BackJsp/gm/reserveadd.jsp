<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会议室预定* - Colloa</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/gm/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/gm/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/gm/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/gm/js/view.js" type="text/javascript"></SCRIPT>
    <script src="BackJsp/gm/js/Vue.js"></script>
    <script src="BackJsp/gm/js/vue-resource.min.js"></script>
    <script src="../../assets/js/jquery-2.0.3.min.js"></script>

  </head>
  
  <body id=colloaBody>
  <form id="form" action="reserve/reserveAdd" method="post">
  <table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0>
  <tr valign=top><td>&nbsp;</td><td id=colloaForm><div class=formTaskflowContainer>
  <form class=formTaskflow>
  <TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL>
<COL width=80>
<COL width=150></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>主题:</TD>
<TD id=dbf.subject dbf.type="required"><INPUT id=e.dbf.subject class=fieldEditable name="rmotif" value=会议室预定-李萌-1002108></TD>
<TD style="TEXT-ALIGN: right">&nbsp;优先级:</TD>
<TD><INPUT id=dbf.priority type=radio value=低 name="rpriority" autocomplete="off">低
<INPUT id=dbf.priority CHECKED type=radio value=中 name="rpriority" autocomplete="off">中
<INPUT id=dbf.priority type=radio value=高 name="rpriority" autocomplete="off">高</TD></TR>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;步骤:</TD>
<TD><SPAN id=mapping.dbf.procXSource>申请人填单</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
责任人: <SPAN id=mapping.dbf.responsorSource>李萌,</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
参与人: <SPAN id=mapping.dbf.participantsSource></SPAN></TD>
<TD style="TEXT-ALIGN: right">&nbsp;结束时间:</TD>
<TD id=dbf.endTime dbf.type="date" dbf.source="date,editable">
<%-- <DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" name="rendtime" id=e.dbf.endTime class=fieldEditable contentEditable=true>&nbsp;</DIV>
 --%>
  <input type="date" name="rendtime"/>
 </TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>
<DIV style="TEXT-ALIGN: center">
<SPAN style="FONT-SIZE: 20px"><STRONG>会议室预定</STRONG></SPAN></DIV>
<TABLE class=tableListBorder style="WIDTH: 100%" cellSpacing=0 cellPadding=0 align=center border=0>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 137px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请人</TD>
<TD id=dbf.operator style="WIDTH: 317px" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="0">
<input style="WIDTH: 317px"cellSpacing=0 cellPadding=0 border=0 name="rproposer"/>&nbsp;
</TD>
<TD style="TEXT-ALIGN: center; WIDTH: 136px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>所属部门</TD>
<TD id=dbf.division style="WIDTH: 308px" dbf.type="required" dbf.source="form.fieldSource.division" dbf.key="1000034">
<select onkeypress="return event.keyCode!=13;" name="rdept" id="dname" class=fieldEditable contentEditable=true>&nbsp;</select>
<!--  <td>
 <select id="dname" name="rdept"></select>
</td> --></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 137px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>申请日期</TD>
<TD id=dbf.time2 style="WIDTH: 317px" dbf.type="date,required" dbf.source="date">
<%-- <DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" name="rfilingdate" id=e.dbf.endTime class=fieldEditable contentEditable=true>&nbsp;</DIV>
 --%>
 <input type="date" name="rfilingdate"/></TD>
<TD style="TEXT-ALIGN: center; WIDTH: 136px" dbf.type="" dbf.source="">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>预定会议室</TD>
<TD id=dbf.text0 style="WIDTH: 308px" dbf.type="required!0" dbf.source="select sid,name from resourceX where modello='administration.meetingRoom' and statusX=1 order by name" dbf.key="">
<select onkeypress="return event.keyCode!=13;" name="rmetting" id="meid" class=fieldEditable contentEditable=true>&nbsp;</select></TD>
</TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 137px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>开始时间</TD>
<TD id=dbf.time0 style="WIDTH: 317px" dbf.type="date,required" dbf.source="datetime,editable">
<%-- <DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" name="rstarttime" id=e.dbf.time0 class=fieldEditable contentEditable=true>&nbsp;</DIV></TD>
 --%>
 <input type="date" name="rstarttime"><TD style="TEXT-ALIGN: center; WIDTH: 136px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>结束时间</TD>
<TD id=dbf.time1 style="WIDTH: 308px" dbf.type="date,required" dbf.source="datetime,editable">
<%-- <div onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" name="rfinishtime" id=e.dbf.time1 class=fieldEditable contentEditable=true>&nbsp;
 --%>
 <input type="date" name="rfinishtime"/></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 137px">
<SPAN style="COLOR: rgb(255,0,0)">*</SPAN>使用事由</TD>
<TD id=使用事由 style="WIDTH: 769px" colSpan=3 dbf.type="required" dbf.source="">
<TEXTAREA id=e.使用事由 class=fieldEditable style="HEIGHT: 80px" name="ruserthing"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 137px">备注</TD>
<TD id=备注 style="WIDTH: 769px" colSpan=3 dbf.type="" dbf.source="">
<TEXTAREA id=e.备注 class=fieldEditable style="HEIGHT: 80px" name="rcomment"></TEXTAREA></TD></TR>
<TR>
<TD style="TEXT-ALIGN: center; WIDTH: 137px">实际使用情况</TD>
<TD id=实际使用情况 style="WIDTH: 769px" colSpan=3 dbf.type="" dbf.source="">
<INPUT id=e.实际使用情况 class=fieldEditable name="rpractical"></TD></TR></TBODY></TABLE>
<DIV>&nbsp;</DIV>
<TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center border=0>
<COLGROUP>
<COL width=60>
<COL></COLGROUP>
<TBODY>
<TR>
<TD style="TEXT-ALIGN: right">&nbsp;附件:</TD>
<TD id=attachments dbf.source="files">
<DIV id=e.attachments name="raccessory">&nbsp;</DIV></TD></TR></TBODY></TABLE>
</form></div>

<form method="post">
<input type="hidden" id="viewState" name="viewState">
</form><br><div id="_vWorkflowActionsShow" align="right">
<a class="button" id="sub" href="javascript:" >转会议室管理员,直接预定</a>
<a class="button" id="ret" href="javascript:">取消</a></div><br>
<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
<colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;">
<div style="float:right;">
<!-- <a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?703170&#39;);return false;">› 显示流程图</a>
 --></div>【处理过程】</div>
</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>
<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body>
</html>
<script>
  $(function(){
      //查询出商品类型
      $.ajax({
          url:"reserve/getDept",
          ContentType:"textml;charset=utf-8",
          type:"post",
          data:{},
          dataType:"json",
          success:function(data){
           var op="";
             for(var i=0;i<data.length;i++){
                 op+="<option value='"+data[i].deptId+"'>"+data[i].deptName+"</option>"
             }

             $("#dname").append(op);
          }
      })
      });
      
      $(function(){
      //查询出商品类型
      $.ajax({
          url:"reserve/getMetting",
          ContentType:"textml;charset=utf-8",
          type:"post",
          data:{},
          dataType:"json",
          success:function(data){
           var op="";
             for(var i=0;i<data.length;i++){
                 op+="<option value='"+data[i].mid+"'>"+data[i].mname+"</option>"
             }

             $("#meid").append(op);
          }
      })
      });

      $("#sub").click(function(){
         $("#form").submit();
      
      })
      $("#ret").click(function(){
        window.location.href="BackJsp/gm/reserve.jsp";
      })
</script>