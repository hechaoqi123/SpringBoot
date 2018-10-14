<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>新增员工 - Colloa</title>
   <LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet"> 
   <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">    
   <SCRIPT src="BackJsp/hcq/js/ckeditor.js" type="text/javascript"></SCRIPT>
   <SCRIPT src="BackJsp/hcq/js/utility.js" type="text/javascript"></SCRIPT>
   <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
   <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
  
</head><body id=colloaBody><table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0><tr valign=top><td>&nbsp;</td><td id=colloaForm><form><TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center summary="" border=0>
<COLGROUP>
<COL width=100>
<COL>
<COL width=100>
<COL>
<TBODY>
<TR>
<TD class=fieldLable>从属于</TD>
<TD id=dbf.psid dbf.key="0" dbf.source="select sid,name,psid,stype from userX where statusX=1 and stype=10000 order by sortId,name"><IMG onclick="fieldGetValueBySource('dbf.psid',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV id=e.dbf.psidSource>&nbsp;</DIV></TD>
<TD class=fieldLable>在职状态</TD>
<TD><INPUT id=dbf.jobStatus CHECKED type=radio value=0 name=dbf.jobStatus autocomplete="off">在职 <INPUT id=dbf.jobStatus type=radio value=10 name=dbf.jobStatus autocomplete="off">试用 <INPUT id=dbf.jobStatus type=radio value=5 name=dbf.jobStatus autocomplete="off">临时 <INPUT id=dbf.jobStatus type=radio value=-1 name=dbf.jobStatus autocomplete="off">退休 <INPUT id=dbf.jobStatus type=radio value=-10 name=dbf.jobStatus autocomplete="off">离职</TD></TR>
<TR>
<TD class=fieldLable><B style="COLOR: red">*</B>姓名</TD>
<TD id=dbf.name dbf.type="required,unique(userX)"><INPUT id=e.dbf.name class=fieldEditable></TD>
<TD class=fieldLable>工号</TD>
<TD id=dbf.jobSid><INPUT id=e.dbf.jobSid class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>性别</TD>
<TD><INPUT id=dbf.gender CHECKED type=radio value=1 name=dbf.gender autocomplete="off">男 <INPUT id=dbf.gender type=radio value=2 name=dbf.gender autocomplete="off">女</TD>
<TD class=fieldLable>上级主管</TD>
<TD id=dbf.supervisorX dbf.key="" dbf.source="form.fieldSource.userX0"><IMG onclick="fieldGetValueBySource('dbf.supervisorX',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV id=e.dbf.supervisorXSource>&nbsp;</DIV></TD></TR>
<TR>
<TD class=fieldLable>固定电话</TD>
<TD id=dbf.phone><INPUT id=e.dbf.phone class=fieldEditable></TD>
<TD class=fieldLable>移动电话</TD>
<TD id=dbf.mobile><INPUT id=e.dbf.mobile class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>电子邮件</TD>
<TD id=dbf.email><INPUT id=e.dbf.email class=fieldEditable></TD>
<TD class=fieldLable>即时通信</TD>
<TD id=dbf.imAddress><INPUT id=e.dbf.imAddress class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>职务</TD>
<TD id=dbf.jobTitle><INPUT id=e.dbf.jobTitle class=fieldEditable></TD>
<TD class=fieldLable>职务级别</TD>
<TD id=dbf.jobLevel dbf.type="required,number"><INPUT id=e.dbf.jobLevel class=fieldEditable value=0></TD></TR>
<TR>
<TD class=fieldLable>出生日期</TD>
<TD id=dbf.birthday dbf.source="date,editable" dbf.type="date"><IMG onclick="fieldGetValueBySource('dbf.birthday',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.birthday class=fieldEditable contentEditable=true>&nbsp;</DIV></TD>
<TD class=fieldLable>入职日期</TD>
<TD id=dbf.jobJoinTime dbf.source="date,editable" dbf.type="date"><IMG onclick="fieldGetValueBySource('dbf.jobJoinTime',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.jobJoinTime class=fieldEditable contentEditable=true>&nbsp;</DIV></TD></TR>
<TR>
<TD class=fieldLable>转正日期</TD>
<TD id=dbf.jobStartTime dbf.source="date,editable" dbf.type="date"><IMG onclick="fieldGetValueBySource('dbf.jobStartTime',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.jobStartTime class=fieldEditable contentEditable=true>&nbsp;</DIV></TD>
<TD class=fieldLable>离职日期</TD>
<TD id=dbf.jobEndTime dbf.source="date,editable" dbf.type="date"><IMG onclick="fieldGetValueBySource('dbf.jobEndTime',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV onkeypress="return event.keyCode!=13;" onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');" id=e.dbf.jobEndTime class=fieldEditable contentEditable=true>&nbsp;</DIV></TD></TR>
<TR>
<TD class=fieldLable>职责说明</TD>
<TD id=dbf.jobDesc colSpan=3><TEXTAREA id=e.dbf.jobDesc class=fieldEditable style="HEIGHT: 70px"></TEXTAREA></TD></TR>
<TR>
<TD class=fieldLable>附加描述</TD>
<TD id=dbf.description colSpan=3><INPUT id=e.dbf.description class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>简历和证书</TD>
<TD id=dbf.memoLinks colSpan=3 dbf.source="files"><IMG onclick="fieldGetValueBySource('dbf.memoLinks',this);" class=fieldGetValueBySource src="../images/fieldSource.gif">
<DIV id=e.dbf.memoLinks>&nbsp;</DIV></TD></TR>
<TR>
<TD class=fieldLable>籍贯</TD>
<TD id=dbf.nativePlace><INPUT id=e.dbf.nativePlace class=fieldEditable></TD>
<TD class=fieldLable>民族</TD>
<TD id=dbf.nationality><INPUT id=e.dbf.nationality class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>政治面貌</TD>
<TD id=dbf.partyX><INPUT id=e.dbf.partyX class=fieldEditable></TD>
<TD class=fieldLable>婚姻状况</TD>
<TD><INPUT id=dbf.marital type=radio value=10 name=dbf.marital autocomplete="off">未婚 <INPUT id=dbf.marital type=radio value=20 name=dbf.marital autocomplete="off">已婚 <INPUT id=dbf.marital type=radio value=30 name=dbf.marital autocomplete="off">离婚</TD></TR>
<TR>
<TD class=fieldLable>身份证号</TD>
<TD id=dbf.nativeSid><INPUT id=e.dbf.nativeSid class=fieldEditable></TD>
<TD class=fieldLable>户口所在地</TD>
<TD id=dbf.residentPlace><INPUT id=e.dbf.residentPlace class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>联系地址</TD>
<TD id=dbf.contactAddress colSpan=3><INPUT id=e.dbf.contactAddress class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>毕业院校</TD>
<TD id=dbf.eduSchool><INPUT id=e.dbf.eduSchool class=fieldEditable></TD>
<TD class=fieldLable>最高学历</TD>
<TD id=dbf.eduDegree><INPUT id=e.dbf.eduDegree class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>专业方向</TD>
<TD id=dbf.eduSubject><INPUT id=e.dbf.eduSubject class=fieldEditable></TD>
<TD class=fieldLable>学历证明人</TD>
<TD id=dbf.eduReferee><INPUT id=e.dbf.eduReferee class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>爱好特长</TD>
<TD id=dbf.favorite colSpan=3><INPUT id=e.dbf.favorite class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>状态</TD>
<TD><INPUT id=dbf.statusX type=checkbox>有效（能够登录本系统，登录时的用户名默认为姓名）</TD>
<TD class=fieldLable>指定用户名</TD>
<TD id=dbf.nameLogin dbf.type="unique(userX)"><INPUT id=e.dbf.nameLogin class=fieldEditable></TD></TR></TBODY></TABLE>
<SCRIPT language=JavaScript>
function onActionBefore(nActionId, sName, bPostForm)
{
	if(nActionId > 0)
	{
		var s = document.getElementById("e.dbf.name").value;
		if(s.indexOf('"')>-1 || s.indexOf("'")>-1 || s.indexOf(",")>-1)
		{
			alert("姓名中不能包含引号或逗号，请重新输入");
			document.getElementById("e.dbf.name").focus();
			return 0;
		}
		s = document.getElementById("e.dbf.nameLogin").value;
		if(s.indexOf('"')>-1 || s.indexOf("'")>-1 || s.indexOf(",")>-1)
		{
			alert("指定用户名中不能包含引号或逗号，请重新输入");
			document.getElementById("e.dbf.nameLogin").focus();
			return 0;
		}
	}
	return 1;
}
</SCRIPT></form><form method='post'><input type=hidden id=viewState name=viewState></form><script language=javaScript>workflowActionsShow('okCancelWithForm');formOnLoad();</script></td><td>&nbsp;</td></tr></table></body></html>
