<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>费用报销* - Colloa</title>
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/view.css">
  <script type="text/javascript" src="js/viewCn.js"></script>
  <script type="text/javascript" src="js/view.js"></script>
  <script type="text/javascript" src="js/utility.js"></script>
  <script type="text/javascript" src="js/ckeditor.js"></script>
  <style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody">
   <form id="myform" method="post" action="/Baoxiao/save">
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
  <input name="theme" class="fieldEditable"  value="费用报销-李萌-1002051">
</td>
<td style="TEXT-ALIGN: right">&nbsp;优先级:</td>
<td><input  type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr>
<tr>
<td style="TEXT-ALIGN: right">&nbsp;步骤:</td>
<td><span id="mapping.dbf.procXSource">
   <input name="status" style="border:0px" readonly="ture" value="填单">
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
责任人: <span id="mapping.dbf.responsorSource">
    <input name="dutypeople" style="border:0px" readonly="ture" value="${superUser.username }">
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td style="TEXT-ALIGN: right">&nbsp;</td>
<td id="dbf.endTime" dbf.type="date" dbf.source="date,editable">
</td></tr></tbody></table>
<div>&nbsp;</div>
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>费用报销单</strong></span></div>
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
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>报销人姓名</td>
<td>
  <input name="username"  class="fieldEditable">
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>所属部门</td>
<td>
  <select id="dept"  name="dept" style="border:0px;font-size:14px;width:275px;height:25px;">
    <option v-for="dept in depts" v-bind:value="dept.deptname">{{dept.deptname}}</option>
  </select>
</td>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>报销日期</td>
<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
  <input id="currentDate" name="baoxiaodate" class="fieldEditable">
</td></tr>
</tbody>
  </table>
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col width="120">
<col>
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="50"></colgroup>
<tbody id="tb">
<tr>
<td style="TEXT-ALIGN: center">支出分类</td>
<td style="TEXT-ALIGN: center" colspan="2">用途说明</td>
<td style="TEXT-ALIGN: center">费用金额</td>
<td style="TEXT-ALIGN: center" colspan="2">对方单位</td>
<td style="TEXT-ALIGN: center" colspan="2">经手人</td>
<td style="TEXT-ALIGN: right" >
   <input onclick="addRow();"style="width:30px" type="button" value="+" name="增加行">
</td></tr>
<tr>
	<td>
   <select name="items[0].type" style="padding-left:25px;width:114px;height:25px;text-align:center;border:0px;">
      <option value="办公费">办公费</option>
      <option value="差旅费">差旅费</option>
      <option value="车辆费">车辆费</option>
      <option value="交通费">交通费</option>
      <option value="通讯费">通讯费</option>
      <option value="公积金">公积金</option>
      <option value="保洁费">保洁费</option>
      <option value="福利费">福利费</option>
      <option value="维修费">维修费</option>
      <option value="其他">其他</option>
   </select>
    </td>
	<td colspan="2"><input name="items[0].remark" class="fieldEditable"></td>
	<td class="mm"><input name="items[0].money"  class="fieldEditable"></td>
	<td colspan="2"><input name="items[0].opposite"  class="fieldEditable textAmount"></td>
	<td colspan="2"><input name="items[0].dutypeople"  class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-" ></td>
</tr>
<tr>
	<td>
   <select name="items[1].type" style="padding-left:25px;width:114px;height:25px;text-align:center;border:0px;">
      <option value="办公费">办公费</option>
      <option value="差旅费">差旅费</option>
      <option value="车辆费">车辆费</option>
      <option value="交通费">交通费</option>
      <option value="通讯费">通讯费</option>
      <option value="公积金">公积金</option>
      <option value="保洁费">保洁费</option>
      <option value="福利费">福利费</option>
      <option value="维修费">维修费</option>
      <option value="其他">其他</option>
   </select>
    </td>
	<td colspan="2"><input name="items[1].remark" class="fieldEditable"></td>
	<td class="mm"><input name="items[1].money"  class="fieldEditable"></td>
	<td colspan="2"><input name="items[1].opposite"  class="fieldEditable textAmount"></td>
	<td colspan="2"><input name="items[1].dutypeople"  class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-" ></td>
</tr>
<tr>
	<td>
   <select name="items[2].type" style="padding-left:25px;width:114px;height:25px;text-align:center;border:0px;">
      <option value="办公费">办公费</option>
      <option value="差旅费">差旅费</option>
      <option value="车辆费">车辆费</option>
      <option value="交通费">交通费</option>
      <option value="通讯费">通讯费</option>
      <option value="公积金">公积金</option>
      <option value="保洁费">保洁费</option>
      <option value="福利费">福利费</option>
      <option value="维修费">维修费</option>
      <option value="其他">其他</option>
   </select>
    </td>
	<td colspan="2"><input name="items[2].remark" class="fieldEditable"></td>
	<td class="mm"><input name="items[2].money"  class="fieldEditable"></td>
	<td colspan="2"><input name="items[2].opposite"  class="fieldEditable textAmount"></td>
	<td colspan="2"><input name="items[2].dutypeople"  class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-" ></td>
</tr>
</tbody></table>
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="80">
<col width="50"></colgroup>
<tbody>
</tbody></table>
<table id="tableData" class="tableListBorder2" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="120">
<col>
<col width="80">
<col width="130"></colgroup>
<tbody>
<tr>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">合计（大写）</td>
<td id="合计大写" dbf.type="" dbf.source="">
  <input id="daxie" name="field1" readonly="true" style="border:0px;width:500px;text-align:center;"/>&nbsp;</td>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">合计 <input onclick="calculate();"  type="button" value="=" name="合计按钮"></td>
<td id="dbf.budget" style="COLOR: rgb(204,0,0); TEXT-ALIGN: right" dbf.type="amount,required" dbf.source="">
  <input name="total" readonly="true" id="jisuan" class="fieldEditable textAmount" value="0"></td></tr></tbody></table>
<div style="TEXT-ALIGN: left">* 填单人根据规定，提交给主管审批。在主管审批或上级审批通过后，请打印本电子单据并且粘贴上原始票据，传递给财务处理。</div>
<table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col width="60">
<col></colgroup>
<tbody>
</tbody></table>
</form></div><form method="post"><input type="hidden" id="viewState" name="viewState"></form><br>
  <div id="_vWorkflowActionsShow" align="right">
  <a id="sub" class="button" href="javascript:" >提交主管审批</a>
  <a id="ret" class="button" href="expense.jsp" >取消</a>
  </div><br><table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">
<div style="padding:2px 10px;"><div style="float:right;"><a href="javaScript:" >› 显示流程图</a></div>【处理过程】</div>

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
  $("#sub").click(function(){
     $("#myform").submit();
  })
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
  //计算总金额
   function calculate(){
     var money=0;
      $(".mm").each(function(){
        if($($(this).find("input")[0]).val()!=""){
          money=money+parseInt($($(this).find("input")[0]).val())
        }
      })
     $("#jisuan").val(money)
     $("#daxie").val(DX(money)) 
  }
  //添加一行
   var number=3;
  function addRow(){
    var html="<td><select name='items["+number+"].type' style='padding-left:25px;width:114px;height:25px;text-align:center;border:0px;'>";
	     html+="<option value='办公费'>办公费</option>"
	     html+=" <option value='差旅费'>差旅费</option>"
	     html+="<option value='车辆费'>车辆费</option>"
	     html+="<option value='交通费'>交通费</option>"
	     html+=" <option value='通讯费'>通讯费</option>"
	     html+=" <option value='公积金'>公积金</option>"
	     html+="<option value='保洁费'>保洁费</option>"
	     html+=" <option value='福利费'>福利费</option>"
	     html+=" <option value='维修费'>维修费</option>"
	     html+=" <option value='其他'>其他</option>"
	     html+="</select></td>"
   var str="<tr>";
	str+=html;
	str+="<td colspan='2'><input name='items["+number+"].remark'  class='fieldEditable'></td>"
	str+="<td class='mm'><input name='items["+number+"].money'  class='fieldEditable'></td>"
	str+="<td colspan='2'><input name='items["+number+"].opposite'  class='fieldEditable textAmount'></td>"
	str+="<td colspan='2'><input name='items["+number+"].dutypeople'  class='fieldEditable textAmount'></td>"
	str+="<td><input onclick='removeRow(this);' style='margin-left:7px;;WIDTH:30px' type='button' value='-' ></td>";
    str+="</tr>"
    number++; 
     $("#tb").append(str)
  }
  //删除一行
  function removeRow(obj){
      if(confirm("Are you sure?")){
      var tr=$(obj).parent().parent();
      var inputs=tr.find("input");
          var money=$(inputs[1]).val();
          var total=parseInt($("#jisuan").val());
          $("#jisuan").val(total-money)
          $("#daxie").val(DX(total-money)) 
          $(obj).parent().parent().remove();
      }
  }
  //大写转换
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
</script>
