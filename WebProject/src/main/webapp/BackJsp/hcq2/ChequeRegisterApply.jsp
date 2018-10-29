<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>来票申请* - Colloa</title>
  <link rel="shortcut icon" href="http://cloud.10oa.com/trial/images/colloa.ico">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/view.css">
  <script type="text/javascript" src="js/viewCn.js"></script>
  <script type="text/javascript" src="js/view.js"></script>
  <script type="text/javascript" src="js/utility.js"></script>
  <script type="text/javascript" src="js/ckeditor.js"></script>
  <style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody">
  <form id="myform" action="/Chequeregister/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer"><form class="formTaskflow"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col>
<col width="80">
<col width="150"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;<span style="COLOR: rgb(255,0,0)">*</span>主题:</td>
<td id="dbf.subject" dbf.type="required">
   <input name="theme" class="fieldEditable" value="来票申请-李萌-1002033"></td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">
  <input name="status" style="border:0px;" readonly="true" value="填单"/>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">
  <input name="dutypeople" style="border:0px;" readonly="true" value="${CurrentUser.uname}"/>
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div>&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>来票申请单</strong></span></div>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col width="180">
<col width="100">
<col width="280">
<col width="100">
<col></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>申请人姓名</td>
<td>
  <input name="registerpeople" class="fieldEditable"/>
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td>
   <select id="dept"  name="dept" style="border:0px;font-size:14px;width:275px;height:25px;">
    <option v-for="dept in depts" v-bind:value="dept.deptname">{{dept.deptname}}</option>
  </select>
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>申请日期</td>
<td >
   <input id="CurrentDate" name="registerdate" class="fieldEditable"/>
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">来票说明</td>
<td id="来票说明" colspan="5" dbf.type="" dbf.source="">
   <textarea id="e.来票说明" name="remark" class="fieldEditable" style="HEIGHT: 80px"></textarea>
</td></tr></tbody></table>
<table class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col>
<col width="120">
<col width="350"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>对方单位全称</td>
<td id="dbf.text0Source" dbf.type="required" dbf.source="" dbf.key="">
  <input id="e.dbf.text0Source" name="opposite" class="fieldEditable"></td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">关联合同</td>
<td id="dbf.psid3" dbf.type="">
   <input name="compact" class="fieldEditable"/>
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>来票金额</td>
<td id="dbf.budget" style="COLOR: rgb(60,188,60)" dbf.type="amount,required!0" dbf.source="">
  <input onchange="daxie(this)" name="money" class="fieldEditable textAmount" value="0"></td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">金额大写</td>
<td id="金额大写" dbf.type="" dbf.source="">
   <input id="capital" style="border:0px;" readonly="true" name="supermoney">
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">发票日期</td>
<td id="dbf.time0" dbf.type="date" dbf.source="date">  
  <input name="date" class="fieldEditable"></td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">发票号码</td>
<td id="dbf.text6" dbf.type="" dbf.source="">
  <input name="idnumber" class="fieldEditable">
</td></tr></tbody></table>
<div>&nbsp;</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table>
<br><div id="_vWorkflowActionsShow" align="right">
<a id="sub" class="button" href="javascript:" >提交财务处理</a>
<a id="ret" class="button" href="javascript:" >取消</a></div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" onclick="javaScript:windowOpen(&#39;../flow/view1.htm?753310&#39;);return false;">› 显示流程图</a></div>【处理过程】</div>

</td><td></td><td>
<div class="boxBorder"><div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【父事务】</div>

</div>
<div class="boxBorder">
<div style="padding:2px 10px;border-bottom:1px dotted #ddd;margin-bottom:5px;">【子事务】</div>

<br></div>
</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table>
</form>
</body></html>
<script src="js/Vue.js"></script>
<script src="js/vue-resource.min.js"></script>
<script src="js/jquery-2.0.3.min.js"></script>
<script>
function daxie(obj){
    $("#capital").val(DX($(obj).val()))
}
 function DX(n) {
        if (!/^(0|[1-9]\d*)(\.\d+)?$/.test(n))
            return "数据非法";
        var unit = "千百拾亿千百拾万千百拾元角分", str = "";
            n += "00";
        var p = n.indexOf('.');
        if (p >= 0)
            n = n.substring(0, p) + n.substr(p+1, 2);
            unit = unit.substr(unit.length - n.length);
        for (var i=0; i < n.length; i++)
            str += '零壹贰叁肆伍陆柒捌玖'.charAt(n.charAt(i)) + unit.charAt(i);
        return str.replace(/零(千|百|拾|角)/g, "零").replace(/(零)+/g, "零").replace(/零(万|亿|元)/g, "$1").replace(/(亿)万|壹(拾)/g, "$1$2").replace(/^元零?|零分/g, "").replace(/元$/g, "元整");
}
 $("#ret").click(function(){
      window.location.href="BillManager.jsp";
  })
  $("#sub").click(function(){
     $("#myform").submit();
  })
   $("#CurrentDate").val(new Date().toLocaleDateString())
 //获取部门信息
  var deptVue=new Vue({
             el:'#dept',
             data:{
               depts:null
             },methods:{
                 getAll:function(){
                   var url="/DeptController/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                     var currentDate=new Date().toLocaleDateString();
                      $("#currentDate").val(currentDate) 
                 })
                 }
             }
       })
       
       deptVue.getAll();
 </script>