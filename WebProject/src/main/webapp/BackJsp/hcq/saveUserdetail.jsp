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
   <LINK href="css/font-awesome.min.css" rel="stylesheet"> 
   <LINK href="css/view.css" rel="stylesheet">    
   <SCRIPT src="js/ckeditor.js" type="text/javascript"></SCRIPT>
   <SCRIPT src="js/utility.js" type="text/javascript"></SCRIPT>
   <SCRIPT src="js/viewCn.js" type="text/javascript"></SCRIPT>
   <SCRIPT src="js/view.js" type="text/javascript"></SCRIPT>
   <script src="js/Vue.js"></script>
   <script src="js/vue-resource.min.js"></script>
   <script src="../../assets/js/jquery-2.0.3.min.js"></script>
  
</head>
<body style="background-position:0px 700px" id=colloaBody>
 <form id="Myform" method="post" action="/userdetail/save">
<table style="min-width:950px;width:100%;height:100%;" cellPadding=0 cellSpacing=0 border=0><tr valign=top><td>&nbsp;</td><td id=colloaForm><form><TABLE class=tableForm style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 align=center summary="" border=0>
<COLGROUP>
<COL width=100>
<COL>
<COL width=100>
<COL>
<TBODY>
<TR>
<TD class=fieldLable>从属于</TD>
<TD id=dbf.psid dbf.key="0" dbf.source="select sid,name,psid,stype from userX where statusX=1 and stype=10000 order by sortId,name">
  <select class=fieldEditable  id="dept" v-model="dept" name="dependence" @change="getPost()" style="border:0px;font-size:14px;width:368px;height:25px;">
    <option v-for="dept in depts" v-bind:value="dept.deptname">{{dept.deptname}}</option>
  </select>
</TD>
<TD class=fieldLable>在职状态</TD>
<TD><INPUT id=dbf.jobStatus CHECKED type=radio value="在职" name="status" autocomplete="off">在职 <INPUT id=dbf.jobStatus type=radio value="试用" name="status" autocomplete="off">试用 <INPUT id=dbf.jobStatus type=radio value="临时" name="status" autocomplete="off">临时 <INPUT id=dbf.jobStatus type=radio value="退休" name="status" autocomplete="off">退休 <INPUT id=dbf.jobStatus type=radio value="离职" name="status" autocomplete="off">离职</TD></TR>
<TR>
<TD class=fieldLable><B style="COLOR: red">*</B>姓名</TD>
<TD id=dbf.name dbf.type="required,unique(userX)"><INPUT id=e.dbf.name name="username" class=fieldEditable></TD>
<TD class=fieldLable>工号</TD>
<TD id=dbf.jobSid></TD></TR>
<TR>
<TD class=fieldLable>性别</TD>
<TD><INPUT id=dbf.gender CHECKED type=radio value="男" name="usersex" autocomplete="off">男 <INPUT id=dbf.gender type=radio value="女" name="usersex" autocomplete="off">女</TD>
<TD class=fieldLable>上级主管</TD>
<TD id=dbf.supervisorX dbf.key="" dbf.source="form.fieldSource.userX0">
</TD></TR>
<TR>
<TD class=fieldLable>固定电话</TD>
<TD id=dbf.phone><INPUT id=e.dbf.phone name="phone" class=fieldEditable></TD>
<TD class=fieldLable>移动电话</TD>
<TD id=dbf.mobile><INPUT id=e.dbf.mobile name="telephone" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>电子邮件</TD>
<TD id=dbf.email><INPUT id=e.dbf.email name="email" class=fieldEditable></TD>
<TD class=fieldLable>即时通信</TD>
<TD id=dbf.imAddress><INPUT id=e.dbf.imAddress class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>职务</TD>
<TD id=dbf.jobTitle>
  <select  id="post" name="position" style="border:0px;font-size:14px;width:300px;height:25px;">
    <option v-for="p in post" v-bind:value="p.pname">{{p.pname}}</option>
  </select>
<TD class=fieldLable>职务级别</TD>
<TD id=dbf.jobLevel dbf.type="required,number">
<INPUT id=e.dbf.jobLevel style="border:0px;"></TD></TR>
<TR>
<TD class=fieldLable>出生日期</TD>
<TD id=dbf.birthday dbf.source="date,editable" dbf.type="date">
<INPUT  name="birthdate" class=fieldEditable>
</TD>
<TD class=fieldLable>入职日期</TD>
<TD id=dbf.jobJoinTime dbf.source="date,editable" dbf.type="date">
<INPUT  name="entrydate" class=fieldEditable>
</TD></TR>
<TR>
<TD class=fieldLable>转正日期</TD>
<TD id=dbf.jobStartTime dbf.source="date,editable" dbf.type="date">
<INPUT  name="positivedate" class=fieldEditable>
</TD>
<TD class=fieldLable>离职日期</TD>
<TD id=dbf.jobEndTime dbf.source="date,editable" dbf.type="date">
<INPUT  name="dimissdate" readonly="true" style="border:0px;">
</TD></TR>
<TR>
<TD class=fieldLable>职责说明</TD>
<TD id=dbf.jobDesc colSpan=3>
  <TEXTAREA  name="description" class=fieldEditable style="HEIGHT: 70px">
  </TEXTAREA> 
</TD></TR>
<TR>
<TD class=fieldLable>附加描述</TD>
<TD id=dbf.description colSpan=3><INPUT id=e.dbf.description name="message" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>简历和证书</TD>
<TD id=dbf.memoLinks colSpan=3 dbf.source="files">
<DIV id=e.dbf.memoLinks>&nbsp;</DIV></TD></TR>
<TR>
<TD class=fieldLable>籍贯</TD>
<TD id=dbf.nativePlace><INPUT id=e.dbf.nativePlace name="nativeplace" class=fieldEditable></TD>
<TD class=fieldLable>民族</TD>
<TD id=dbf.nationality><INPUT id=e.dbf.nationality name="nation" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>政治面貌</TD>
<TD id=dbf.partyX><INPUT id=e.dbf.partyX name="politics" class=fieldEditable></TD>
<TD class=fieldLable>婚姻状况</TD>
<TD><INPUT id=dbf.marital type=radio  name="marriage" value="未婚" autocomplete="off">未婚 <INPUT id=dbf.marital type=radio value=20 name=dbf.marital autocomplete="off">已婚 <INPUT id=dbf.marital type=radio name="marriage" value="已婚"  autocomplete="off">离婚</TD></TR>
<TR>
<TD class=fieldLable>身份证号</TD>
<TD id=dbf.nativeSid><INPUT id=e.dbf.nativeSid name="idnumber" class=fieldEditable></TD>
<TD class=fieldLable>户口所在地</TD>
<TD id=dbf.residentPlace><INPUT id=e.dbf.residentPlace class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>联系地址</TD>
<TD id=dbf.contactAddress colSpan=3><INPUT name="address" id=e.dbf.contactAddress class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>毕业院校</TD>
<TD id=dbf.eduSchool><INPUT id=e.dbf.eduSchool name="school" class=fieldEditable></TD>
<TD class=fieldLable>最高学历</TD>
<TD id=dbf.eduDegree><INPUT id=e.dbf.eduDegree name="education" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>专业方向</TD>
<TD id=dbf.eduSubject><INPUT id=e.dbf.eduSubject name="major" class=fieldEditable></TD>
<TD class=fieldLable>学历证明人</TD>
<TD id=dbf.eduReferee><INPUT id=e.dbf.eduReferee class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>爱好特长</TD>
<TD id=dbf.favorite colSpan=3><INPUT id=e.dbf.favorite name="hobby" class=fieldEditable></TD></TR>
<TR>
<TD class=fieldLable>状态</TD>
<TD><INPUT id=dbf.statusX type=checkbox checked="true" disabled="false">有效（能够登录本系统，登录时的用户名默认为姓名）</TD>
<TD class=fieldLable></TD>
<TD id=dbf.nameLogin dbf.type="unique(userX)"></TD>
</TR>
  <tr><td style="border-bottom:0px" colspan="4"><div  id="_vWorkflowActionsShow" align="right"><br/>
           
    <a class="button" id="xxx" href="javascript:" >确定</a>
    <a class="button" href="javascript:" id="xxxx"  >取消</a>
    </div></td></tr>
</TBODY></TABLE>
</form></body></html>
<script>
   $(function(){
      $("#xxx").click(function(){
           $("#Myform").submit();
      })
      $("#xxxx").click(function(){
        window.location.href="staff.jsp"
      })
      var postVue=new Vue({
         el:'#post',
         data:{
           post:null
         },created:function(){
            this.get("人事部")
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
               dept:'人事部'
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                 })
                 },getPost:function(){
                   postVue.get(this.dept);
                 }
             }
       })
       deptVue.getAll();
    })
</script>
