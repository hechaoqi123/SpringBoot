<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>详细人事 - Page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
    <style>
        #tb td{
          height:30px;
          line-height:30px;
        }
    </style>
  </head>
  
  <body style="padding-top:15px;padding-left:30px;">
  <form action="/userdetail/getDetailInfo" method="post">
    <input name="id" style="display:none" value="${user.detailid}"/>
    <input name="criteria" style="display:none" value="update"/>
   <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">员工人事</span>   
                        <span id="oWorkflowList1">
          <input type="submit" class="btn" style="padding:5px 20px;border:1px solid #E0E0E0;margin-left:700px;background:#FCFCFC;border-radius:3px;cursor: pointer; " value="+修改信息"/>
  </span></H1></TD>
          <TD align="right">
          </TD></TR></TBODY></TABLE>
          </form>  
          <BR>
      <TABLE class="tableForm" style="table-layout: fixed;" border="0" 
      cellspacing="0" cellpadding="0" summary="">
        <COLGROUP>
        <COL width="100">
        <COL>
        <COL width="100">
        <COL>
        <TBODY id="tb"style="font-size:14px;">
        <TR>
          <TD class="fieldLable">从属于</TD>
          <TD>${user.dependence}&nbsp;</TD>
          <TD class="fieldLable">在职状态</TD>
          <TD>${user.status}</TD></TR>
        <TR>
          <TD class="fieldLable">姓名</TD>
          <TD>${user.username}</TD>
          <TD class="fieldLable">工号</TD>
          <TD>${user.usernum}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">性别</TD>
          <TD>${user.usersex}</TD>
          <TD class="fieldLable">上级主管</TD>
          <TD>${superUserName}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">固定电话</TD>
          <TD>${user.phone}&nbsp;</TD>
          <TD class="fieldLable">移动电话</TD>
          <TD>${user.telephone}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">电子邮件</TD>
          <TD>${user.email}&nbsp;</TD>
          <TD class="fieldLable">即时通信</TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">职务</TD>
          <TD>${user.position}&nbsp;</TD>
          <TD class="fieldLable">职务级别</TD>
          <TD>0&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">出生日期</TD>
          <TD>${user.birthdate}&nbsp;</TD>
          <TD class="fieldLable">入职日期</TD>
          <TD>${user.entrydate}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">转正日期</TD>
          <TD>${user.positivedate}&nbsp;</TD>
          <TD class="fieldLable">离职日期</TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">职责说明</TD>
          <TD colspan="3">${user.description}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">附加描述</TD>
          <TD colspan="3">${user.message}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">简历和证书</TD>
          <TD colspan="3">&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">籍贯</TD>
          <TD>${user.nativeplace}&nbsp;</TD>
          <TD class="fieldLable">民族</TD>
          <TD>${user.nation}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">政治面貌</TD>
          <TD>${user.politics}&nbsp;</TD>
          <TD class="fieldLable">婚姻状况</TD>
          <TD>${user.marriage}</TD></TR>
        <TR>
          <TD class="fieldLable">身份证号</TD>
          <TD>${user.idnumber}&nbsp;</TD>
          <TD class="fieldLable">户口所在地</TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">联系地址</TD>
          <TD colspan="3">${user.address}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">毕业院校</TD>
          <TD>${user.school}&nbsp;</TD>
          <TD class="fieldLable">最高学历</TD>
          <TD>${user.education}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">专业方向</TD>
          <TD>${user.major}&nbsp;</TD>
          <TD class="fieldLable">学历证明人</TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">爱好特长</TD>
          <TD colspan="3">${user.hobby}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">状态</TD>
          <TD><INPUT disabled="" type="checkbox" 
            checked="">有效（能够登录本系统，登录时的用户名默认为姓名）</TD>
          <TD class="fieldLable">指定用户名</TD>
          <TD>&nbsp;</TD></TR></TBODY></TABLE><BR>
<SCRIPT language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
  //var colloaInterval=setInterval("if(ajax('command.aspx?notify.count&uid=1000071')!='0'){var v=document.getElementById('treeOfMenu').firstChild;if(v.getAttribute('sid')=='100000') v.innerHTML+=' <img src=../images/dotNotify.gif border=0>';clearInterval(colloaInterval);}", 11000);
</SCRIPT>
</BODY></HTML>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
/*    $("#save").click(function(){
     $("#www").click();
     }) */
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
</script>
