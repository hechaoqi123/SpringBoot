<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登记 - Colloa</title>
  <link rel="stylesheet" href="BackJsp/hcq2/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/hcq2/css/view.css">
  <script type="text/javascript" src="BackJsp/hcq2/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/view.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/utility.js"></script>
  <script type="text/javascript" src="BackJsp/hcq2/js/ckeditor.js"></script>
 <style>.cke{visibility:hidden;}
       select option{
           display:blok;
           font-size:17px;
        }
 </style>
</head><body style="background-image:url(../assets/img/bg1.jpg);" id="colloaBody">
  <form id="subform" action="DeptControllerOne/savePlay" method="post">
<table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="textBig">收入登记</div><br>
<table class="tableListBorder" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" summary="" border="0">
<colgroup>
<col width="100">
<col>
<col width="100">
<col width="380"></colgroup>
<tbody>
<tr>
<td class="fieldLable"><b style="COLOR: red">*</b>收入日期</td>
<td id="dbf.dealTime" dbf.type="date,required" dbf.source="date">
  <input id="currentDate" name="incomedate" class="fieldEditable textAmount"></td>
<td class="fieldLable"><b style="COLOR: red">*</b>收入分类</td>
<td>
  <select   name="incometype" style="border:0px;font-size:15px;width:375px;height:25px;">
    <option>主营业务收入</option>
    <option>投资收益</option>
    <option>利息收入</option>
    <option>其他业务收入</option>
  </select>
</td></tr>
<tr>
<td class="fieldLable"><b style="COLOR: red">*</b>收入金额</td>
<td id="dbf.amountIn" dbf.type="amount,required!0">
  <input  name="money" class="fieldEditable textAmount" id="contracqq" value="0"></td>
<td class="fieldLable">大写</td>
<td id="oChineseAmount">
  <input id="e.dbf.amountIn" name="capitalmoney" class="fieldEditable textAmount" value="零">
</td></tr>
<tr>
<td class="fieldLable"><b style="COLOR: red">*</b>收款方式</td>
<td>
  <select   name="model" style="border:0px;font-size:15px;width:365px;height:25px;">
    <option>银行转账</option>
    <option>现金</option>
  </select>
</td>
<td class="fieldLable">登记人</td>
<td>
  <input id="e.dbf.amountIn" name="registrant" class="fieldEditable textAmount" value="${sessionScope.CurrentUser.uname}">
</td></tr>
<tr>
<td class="fieldLable">关联人</td>
<td id="dbf.operator" dbf.type="checkPrompt" dbf.source="editable,prompt:" dbf.key="0">
   <input id="e.dbf.amountIn" name="affiliatedperson" class="fieldEditable textAmount" value="${contract[0].username}">
 </td>
<td class="fieldLable">关联部门</td>
<td id="dbf.division" dbf.type="" dbf.source="form.fieldSource.division" dbf.key="0">
   <select id="dept"  name="dept" style="border:0px;font-size:14px;width:375px;height:25px;">
    <option v-for="dept in depts" v-bind:value="dept.deptname">{{dept.deptname}}</option>
  </select>
</td></tr>
<tr>
<td class="fieldLable">对方单位</td>
<td id="dbf.customerX" dbf.type="" dbf.source="editable,prompt:" dbf.key="0">
  <input id="e.dbf.amountIn" name="opposite" class="fieldEditable textAmount" >
</td>
<td class="fieldLable">关联合同</td>
<td id="dbf.contractX" dbf.type="" dbf.source="editable,prompt:" dbf.key="0">
<input id="qq" name="qq" value="${contract[0].contracqq}" style="display:none">
<input id="cid" name="cid" value="${contract[0].contractid}" style="display:none">
  <input id="e.dbf.amountIn" name="compact" class="fieldEditable textAmount"  value="${contract[0].contracname}" readonly="readonly">  
</td></tr>
<tr>
<td class="fieldLable">收入说明
<div class="textGray">（最多输入<br>200个字符）</div></td>
<td id="dbf.description" colspan="3">
  <textarea name="remark" id="e.dbf.description" class="fieldEditable" style="HEIGHT: 80px"></textarea></td></tr></tbody></table>
<br><div id="_vWorkflowActionsShow" align="right">
  <a id="sub" class="button" href="javascript:" >确定</a>
  <a id="ret" class="button" href="javascript:" >取消</a></div><br></td><td>&nbsp;</td></tr></tbody>
  </table>
  </form>
  </body>
  </html>
  
   <script src="BackJsp/hcq2/js/Vue.js"></script>
 <script src="BackJsp/hcq2/js/vue-resource.min.js"></script>
 <script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
  $(function(){
   var currentDate=new Date().toLocaleDateString();
    $("#currentDate").val(currentDate) 
   var deptVue=new Vue({
             el:'#dept',
             data:{
               depts:null
             },methods:{
                 getAll:function(){
                   var url="/DeptControllerOne/getAll";
                   this.$http.post(url,{emulateJSON:true}).then(function(res){
                   this.depts=res.body
                   
                 })
                 }
             }
       })
       deptVue.getAll();
      $("#sub").click(function(){
         $("#subform").submit();
      })
      $("#ret").click(function(){
    /*    var cid =$("#cid").val();
      var contracqq =$("#contracqq").val();
      var qq =$("#qq").val();
      alert(cid)
      alert(contracqq)
      alert(qq) */
        window.location.href="BackJsp/mh/AllContract.jsp";
      })
        })
</script>