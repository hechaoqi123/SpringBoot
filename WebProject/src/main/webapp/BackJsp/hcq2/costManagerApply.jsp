<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>差旅费报销* - Colloa</title>
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/view.css">
  <script type="text/javascript" src="js/viewCn.js"></script>
  <script type="text/javascript" src="js/view.js"></script>
  <script type="text/javascript" src="js/utility.js"></script>
  <script type="text/javascript" src="js/ckeditor.js"></script>
  <style>.cke{visibility:hidden;}</style>
</head><body id="colloaBody">
   <form id="myform" method="post" action="/CostManager/save">
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
  <input name="theme" class="fieldEditable"  value="差旅费报销-李萌-1002051">
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
<div style="TEXT-ALIGN: center"><span style="FONT-SIZE: 20px"><strong>差旅费报销单</strong></span></div>
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
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source=""><span style="COLOR: rgb(255,0,0)">*</span>出差人姓名</td>
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
  <input name="submitdate" class="fieldEditable">
</td></tr>
<tr>
<td style="TEXT-ALIGN: center" dbf.type="" dbf.source="">出差事由</td>
<td colspan="5" style="padding:0px;margin:0px;">
  <textarea   name="cause" class="fieldEditable" style="HEIGHT: 84px"></textarea>
</td></tr></tbody>
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
<td style="TEXT-ALIGN: center">起止时间</td>
<td style="TEXT-ALIGN: center">起止地点</td>
<td style="TEXT-ALIGN: center">描述</td>
<td style="TEXT-ALIGN: center">长途交通费</td>
<td style="TEXT-ALIGN: center">市内交通费</td>
<td style="TEXT-ALIGN: center">住宿费</td>
<td style="TEXT-ALIGN: center">出差补贴</td>
<td style="TEXT-ALIGN: center">其他费用</td>
<td style="TEXT-ALIGN: right" >
   <input onclick="addRow();"style="width:30px" type="button" value="+" name="增加行">
</td></tr>
<tr>
	<td><input name="costs[0].begindate"  class="fieldEditable"></td>
	<td><input name="costs[0].beginaddress" class="fieldEditable"></td>
	<td><input name="costs[0].remark" class="fieldEditable"></td>
	<td><input name="costs[0].field1" onblur="cachea(this)" onfocus="cachea(this)" onchange="money1(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field2" onblur="cachea(this)" onfocus="cachea(this)" onchange="money2(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field3" onblur="cachea(this)" onfocus="cachea(this)" onchange="money3(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field4" onblur="cachea(this)" onfocus="cachea(this)" onchange="money4(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[0].field5" onblur="cachea(this)" onfocus="cachea(this)" onchange="money5(this)" class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-" ></td>
</tr>
<tr>
	<td><input name="costs[1].begindate" class="fieldEditable"></td>
	<td><input name="costs[1].beginaddress" class="fieldEditable"></td>
	<td><input name="costs[1].remark"  class="fieldEditable"></td>
	<td><input name="costs[1].field1" onblur="cachea(this)" onfocus="cachea(this)" onchange="money1(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field2" onblur="cachea(this)" onfocus="cachea(this)" onchange="money2(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field3" onblur="cachea(this)" onfocus="cachea(this)" onchange="money3(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field4" onblur="cachea(this)" onfocus="cachea(this)" onchange="money4(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[1].field5" onblur="cachea(this)" onfocus="cachea(this)" onchange="money5(this)" class="fieldEditable textAmount"></td>
	<td><input onclick="removeRow(this);" style="margin-left:7px;;WIDTH:30px" type="button" value="-" ></td>
</tr>
<tr>
	<td><input name="costs[2].begindate" class="fieldEditable"></td>
	<td><input name="costs[2].beginaddress" class="fieldEditable"></td>
	<td><input name="costs[2].remark" class="fieldEditable"></td>
	<td><input name="costs[2].field1" onblur="cachea(this)" onfocus="cachea(this)"  onchange="money1(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field2"  onblur="cachea(this)" onfocus="cachea(this)" onchange="money2(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field3"  onblur="cachea(this)" onfocus="cachea(this)" onchange="money3(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field4" onblur="cachea(this)" onfocus="cachea(this)"  onchange="money4(this)" class="fieldEditable textAmount"></td>
	<td><input name="costs[2].field5" onblur="cachea(this)" onfocus="cachea(this)"  onchange="money5(this)" class="fieldEditable textAmount"></td>
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
<tr>
<td style="TEXT-ALIGN: right" dbf.type="" dbf.source="">小计</td>
<td id="money1">&nbsp;</td>
<td id="money2">&nbsp;</td>
<td id="money3">&nbsp;</td>
<td id="money4">&nbsp;</td>
<td id="money5">&nbsp;</td>
<td>&nbsp;</td></tr></tbody></table>
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
  <a id="ret" class="button" href="costManager.jsp" >取消</a>
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
      var total=money11+money22+money33+money44+money55;
     $("#jisuan").val(total)
     $("#daxie").val(DX(total))
  }
  //添加一行
   var number=3;
  function addRow(){
     number++; 
   var str="<tr>";
	str+="<td><input name='costs["+number+"].begindate'   class='fieldEditable'></td>"
	str+="<td><input name='costs["+number+"].beginaddress'  class='fieldEditable'></td>"
	str+="<td><input name='costs["+number+"].remark' class='fieldEditable'></td>"
	str+="<td><input name='costs["+number+"].field1' onblur='cachea(this)' onfocus='cachea(this)' onchange='money1(this)' class='fieldEditable textAmount'></td>"
	str+="<td><input name='costs["+number+"].field2' onblur='cachea(this)' onfocus='cachea(this)' onchange='money2(this)' class='fieldEditable textAmount'></td>"
	str+="<td><input name='costs["+number+"].field3' onblur='cachea(this)' onfocus='cachea(this)' onchange='money3(this)' class='fieldEditable textAmount'></td>"
	str+="<td><input name='costs["+number+"].field4' onblur='cachea(this)' onfocus='cachea(this)' onchange='money4(this)' class='fieldEditable textAmount'></td>"
	str+="<td><input name='costs["+number+"].field5' onblur='cachea(this)' onfocus='cachea(this)' onchange='money5(this)' class='fieldEditable textAmount'></td>"
	str+="<td><input onclick='removeRow(this);' style='margin-left:7px;;WIDTH:30px' type='button' value='-' ></td>";
    str+="</tr>"
     $("#tb").append(str)
  }
  //删除一行
  function removeRow(obj){
      if(confirm("Are you sure?")){
      var tr=$(obj).parent().parent();
      var inputs=tr.find("input");
         var m1=$(inputs[3]).val();
         var m2=$(inputs[4]).val();
         var m3=$(inputs[5]).val();
         var m4=$(inputs[6]).val();
         var m5=$(inputs[7]).val();
         cache22=0;//清空缓存
        money11=money11-m1;
        $("#money1").html(money11)
         money22=money22-m2;
        $("#money2").html(money22)
         money33=money33-m3;
        $("#money3").html(money33)
         money44=money44-m4;
        $("#money4").html(money44)
           money55=money55-m5;
        $("#money5").html(money55)
        $(obj).parent().parent().remove();
      }
  }
  var money11=0;
  var money22=0;
  var money33=0;
  var money44=0;
  var money55=0;
  var cache22=0;
  function cachea(obj){//缓存当前选中金额
    cache22=$(obj).val();
  }
  function money1(obj){
    money11=money11+parseInt($(obj).val())-cache22;
    $("#money1").html(money11)
  }
    function money2(obj){
     money22=money22+parseInt($(obj).val())-cache22;
    $("#money2").html(money22)
  }
    function money3(obj){
      money33=money33+parseInt($(obj).val())-cache22;
    $("#money3").html(money33)
  }
    function money4(obj){
     money44=money44+parseInt($(obj).val())-cache22;
    $("#money4").html(money44)
  }
    function money5(obj){
       
    money55=money55+parseInt($(obj).val())-cache22;
    $("#money5").html(money55)
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
