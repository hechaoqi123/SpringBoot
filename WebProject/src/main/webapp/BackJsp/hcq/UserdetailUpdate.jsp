<%@page import="com.aaa.bean.Userdetail"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <form id="Myform" action="userdetail/udate" method="post">
       <input name="detailid" value="${user.detailid}"style="display:none;"/>
   <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">信息修改</span></H1></TD>
          <TD align="right">
	<SCRIPT language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=1000071&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){}</SCRIPT>
	<SCRIPT language="javaScript">workflowList(0);</SCRIPT>
          </TD></TR></TBODY></TABLE><BR>
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
          <TD>
	          <select  id="dept"  @change="getPost($event)"   name="dependence" style="border:0px;font-size:14px;width:300px;height:25px;">
	             <option :selected="dept.deptname=='${user.dependence}'" v-for="dept in depts" :value="dept.deptname">{{dept.deptname}}</option>
	          </select>&nbsp;</TD>
          <TD class="fieldLable">在职状态</TD>
          <TD>
              <c:if test="${user.status=='在职'}">
                <INPUT id=dbf.jobStatus CHECKED type=radio value="在职" name="status" autocomplete="off">在职 
                <INPUT id=dbf.jobStatus type=radio value="试用" name="status" autocomplete="off">试用 
	            <INPUT id=dbf.jobStatus type=radio value="临时" name="status" autocomplete="off">临时 
	            <INPUT id=dbf.jobStatus type=radio value="退休" name="status" autocomplete="off">退休 
	            <INPUT id=dbf.jobStatus type=radio value="离职" name="status" autocomplete="off">离职
              </c:if>
              <c:if test="${user.status=='试用'}">
                <INPUT id=dbf.jobStatus type=radio value="在职" name="status" autocomplete="off">在职 
                <INPUT id=dbf.jobStatus  CHECKED  type=radio value="试用" name="status" autocomplete="off">试用 
	            <INPUT id=dbf.jobStatus type=radio value="临时" name="status" autocomplete="off">临时 
	            <INPUT id=dbf.jobStatus type=radio value="退休" name="status" autocomplete="off">退休 
	            <INPUT id=dbf.jobStatus type=radio value="离职" name="status" autocomplete="off">离职
              </c:if>
              <c:if test="${user.status=='临时'}">
                <INPUT id=dbf.jobStatus type=radio value="在职" name="status" autocomplete="off">在职 
                <INPUT id=dbf.jobStatus type=radio value="试用" name="status" autocomplete="off">试用 
	            <INPUT id=dbf.jobStatus CHECKED type=radio value="临时" name="status" autocomplete="off">临时 
	            <INPUT id=dbf.jobStatus type=radio value="退休" name="status" autocomplete="off">退休 
	            <INPUT id=dbf.jobStatus type=radio value="离职" name="status" autocomplete="off">离职
              </c:if>
              <c:if test="${user.status=='退休'}">
                <INPUT id=dbf.jobStatus type=radio value="在职" name="status" autocomplete="off">在职 
                <INPUT id=dbf.jobStatus type=radio value="试用" name="status" autocomplete="off">试用 
	            <INPUT id=dbf.jobStatus type=radio value="临时" name="status" autocomplete="off">临时 
	            <INPUT id=dbf.jobStatus CHECKED type=radio value="退休" name="status" autocomplete="off">退休 
	            <INPUT id=dbf.jobStatus type=radio value="离职" name="status" autocomplete="off">离职
              </c:if>
             <c:if test="${user.status=='离职'}">
                <INPUT id=dbf.jobStatus type=radio value="在职" name="status" autocomplete="off">在职 
                <INPUT id=dbf.jobStatus type=radio value="试用" name="status" autocomplete="off">试用 
	            <INPUT id=dbf.jobStatus type=radio value="临时" name="status" autocomplete="off">临时 
	            <INPUT id=dbf.jobStatus type=radio value="退休" name="status" autocomplete="off">退休 
	            <INPUT id=dbf.jobStatus CHECKED type=radio value="离职" name="status" autocomplete="off">离职
              </c:if>
          </TD></TR>
        <TR>
          <TD class="fieldLable">姓名</TD>
          <TD><INPUT id=e.dbf.name name="username" class=fieldEditable value="${user.username}"></TD>
          <TD class="fieldLable">工号</TD>
          <TD>${user.usernum}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">性别</TD>
          <TD class=fieldEditable>
              <c:if test="${user.usersex=='男'}">
               <INPUT id=dbf.gender CHECKED type=radio value="男" name="usersex" autocomplete="off">男
               <INPUT id=dbf.gender type=radio value="女" name="usersex" autocomplete="off">女</TD>
              </c:if>
              <c:if test="${user.usersex=='女'}">
               <INPUT id=dbf.gender  type=radio value="男" name="usersex" autocomplete="off">男
               <INPUT id=dbf.gender CHECKED type=radio value="女" name="usersex" autocomplete="off">女</TD>
              </c:if>
          <TD class="fieldLable">部门主管</TD>
          <TD>${superUserName}&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">固定电话</TD>
          <TD><INPUT id=e.dbf.phone name="phone" value="${user.phone}" class=fieldEditable>&nbsp;</TD>
          <TD class="fieldLable">移动电话</TD>
          <TD><INPUT id=e.dbf.mobile name="telephone" value="${user.telephone}" class=fieldEditable>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">电子邮件</TD>
          <TD><INPUT id=e.dbf.email name="email" value="${user.email}" class=fieldEditable>&nbsp;</TD>
          <TD class="fieldLable">即时通信</TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">职务</TD>
          <TD>
             <select  id="posts" name="position" style="border:0px;font-size:14px;width:300px;height:25px;">
	             <option :selected="p.pname=='${user.position}'" :value="p.pname" v-for="p in post" >{{p.pname}}</option>
	          </select>&nbsp;</TD>
          <TD class="fieldLable">职务级别</TD>
          <TD>0&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">出生日期</TD>
          <TD><INPUT  name="birthdate" class=fieldEditable value="${user.birthdate}"/>&nbsp;</TD>
          <TD class="fieldLable">入职日期</TD>
          <TD><INPUT  name="entrydate" class=fieldEditable value="${user.entrydate}"/>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">转正日期</TD>
          <TD><INPUT  name="positivedate" class=fieldEditable value="${user.positivedate}"/>&nbsp;</TD>
          <TD class="fieldLable">离职日期</TD>
          <TD><INPUT  name="dimissdate" class=fieldEditable value="${user.dimissdate}"/>&nbsp;</TD></TR>
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
          <TD><INPUT id=e.dbf.nativePlace name="nativeplace" value="${user.nativeplace}" class=fieldEditable>&nbsp;</TD>
          <TD class="fieldLable">民族</TD>
          <TD><INPUT id=e.dbf.nationality name="nation" value="" class=fieldEditable>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">政治面貌</TD>
          <TD><INPUT id=e.dbf.partyX name="politics" value="${user.politics}" class=fieldEditable>&nbsp;</TD>
          <TD class="fieldLable">婚姻状况</TD>
          <TD>${user.marriage}</TD></TR>
        <TR>
          <TD class="fieldLable">身份证号</TD>
          <TD><INPUT id=e.dbf.nativeSid name="idnumber" value="${user.idnumber}" class=fieldEditable>&nbsp;</TD>
          <TD class="fieldLable">户口所在地</TD>
          <TD>&nbsp;</TD></TR>
        <TR>
          <TD class="fieldLable">联系地址</TD>
          <TD colspan="3"><INPUT name="address" id=e.dbf.contactAddress value="${user.address}" class=fieldEditable>&nbsp;</TD></TR>
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
<a class="button" id="sub" href="javascript:" >确认</a>
<a class="button" id="ret" href="javascript:">取消</a>
<input id="de" value="${user.dependence}" style="display:none;background:#000"/>
<input id="pa" value="${user.position}" style="display:none;background:#000"/>
</form>
</BODY></HTML>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
var de=$("#de").val();
var pa=$("#pa").val();
     var postVue=new Vue({
         el:'#posts',
         data:{
           post:null
         },created:function(){
            this.get(de)
         },methods:{
           get:function(dept){
           var url="/post/getPost";
                this.$http.post(url,{dept:dept},{emulateJSON:true}).then(function(res){
                 this.post=res.body
               })
           }
         }
      })
     var deptVue=new Vue({
             el:'#dept',
             data:{
               depts:null,
               dept:null
             },created:function(){
               getAll();
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                 })
                 },getPost:function(dept){
                   this.dept=$(dept.currentTarget).val();
                   postVue.get(this.dept);
                 }
             }
       })
       deptVue.getAll();
      $("#sub").click(function(){
           $("#Myform").submit();
      })
      $("#ret").click(function(){
        window.location.href="staff.jsp"
      })
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
</script>
