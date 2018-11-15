<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <base href="<%=basePath%>">
  <title>项目详情* - Colloa</title>
	<link rel="stylesheet" href="BackJsp/mh/css/font-awesome.min.css">
  <link rel="stylesheet" href="BackJsp/mh/css/view.css">
  <script src="BackJsp/mh/js/hm.js"></script>
  <script src="BackJsp/mh/js/hm(1).js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>assets/js/vue-resource.min.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/viewCn.js"></script>
  <script type="text/javascript" src="BackJsp/mh/js/view.js"></script>
  <style>.cke{visibility:hidden;}
  #tableTwo input{
  		width:150px;
  		height:20px;
  
  }
   #tableTwo td{
   font-size:6px;
   }
   #tableTwo input[type="checkbox"]{
   		width:10px;
   		height:10px;
   		font-size:7px;
   }
  
  </style>
</head>
<body id="colloaBody"><table style="min-width:950px;width:100%;height:100%;" cellpadding="0" cellspacing="0" border="0"><tbody><tr valign="top"><td>&nbsp;</td><td id="colloaForm"><div class="formTaskflowContainer">

<form class="formTaskflow" id="itform"><table class="tableForm" style="TABLE-LAYOUT: fixed" cellspacing="0" cellpadding="0" align="center" border="0">
<colgroup>
<col>
<col width="180"></colgroup>
<tbody>
<tr>
<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">立项申请<input name="itstate" value="0" style="display:none"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource"><!-- <input name="detailid">-----, --></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
<td>&nbsp;优先级: <input id="dbf.priority" type="radio" value="-1" name="dbf.priority" autocomplete="off">低<input id="dbf.priority" checked="" type="radio" value="0" name="dbf.priority" autocomplete="off">中<input id="dbf.priority" type="radio" value="1" name="dbf.priority" autocomplete="off">高</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="4" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>项目基本信息</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type=""><span style="COLOR: rgb(255,0,0)">*</span>项目名称</td>
<td id="dbf.subject" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="required">
${list[0].itemname}
</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px"><span style="COLOR: rgb(255,0,0)">*</span>项目分类</td>
<td id="dbf.psid2" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="select sid,name,psid,stype from categoryX where modello=&#39;categoryX.taskX.project&#39; and statusX&gt;0 order by sortId,name" dbf.type="required!0" dbf.key="400010">
<div id="e.dbf.psid2Source">${list[0].itemsort}</div></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">项目编号</td>
<td id="dbf.keyInfo" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="">
${list[0].itemnumber}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">所属部门</td>
<td id="dbf.division" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="form.fieldSource.division" dbf.type="" dbf.key="1000034">
<div id="e.dbf.divisionSource">${list[0].department}</div></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">计划开始时间</td>
<td id="dbf.startTime" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date">
${list[0].planstarttime}&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px"><span style="COLOR: rgb(255,0,0)">*</span>计划完成时间</td>
<td id="dbf.endTime" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date,required">
${list[0].planendtime}</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">客户名称</td>
<td id="dbf.text0" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="editable,prompt:" dbf.type="" dbf.key="">
${list[0].clientname}
<!-- <select>
	<option>
	
	
	</option>

</select> -->
&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">关联合同</td>
<td id="dbf.psid3" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="editable,prompt:" dbf.type="" dbf.key="0">
${list[0].contracname}

<!-- <select>
	<option>
	
	
	</option>

</select> -->
&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px">对方联系人</td>
<td id="联系人" style="WIDTH: 336px">${list[0].itemperson}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">固定电话</td>
<td id="固定电话" style="WIDTH: 336px">${list[0].ittelephone}</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px">移动电话</td>
<td id="移动电话" style="WIDTH: 336px">${list[0].itmobilephone}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">邮件/QQ</td>
<td id="邮件/QQ" style="WIDTH: 336px">${list[0].itemqq}</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">预估工作量</td>
<td id="dbf.numberTotal" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="amount">
${list[0].estimateworkload}</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">预估成本费用</td>
<td id="dbf.budget" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="" dbf.type="amount">
${list[0].estimatecost}</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="2" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>业务需求和目标</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="主要需求和目标附件" style="WIDTH: 798px" dbf.source="files" dbf.type=""><img onclick="fieldGetValueBySource(&#39;主要需求和目标附件&#39;,this);" class="fieldGetValueBySource" src="./新增项目_ - Colloa_files/fieldSource.gif">
<div id="e.主要需求和目标附件">&nbsp;</div></td></tr>
<tr>
<td id="主要需求和目标" style="VERTICAL-ALIGN: top" colspan="2" dbf.source="" dbf.type="">

</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="4" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>项目组织和分工</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type=""><span style="COLOR: rgb(255,0,0)">*</span>项目经理</td>
<td id="项目经理" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="form.fieldSource.userX0" dbf.type="required" dbf.key="">

${list[0].organization}
<input value="${list[0].itemid}" id="itemid" style="display:none;">
&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px">项目赞助人</td>
<td id="项目赞助人" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="form.fieldSource.userX0" dbf.type="" dbf.key="">&nbsp;</td></tr>
<tr id="app">
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">项目组成员</td>
<td id="itworkplans" colspan="3" dbf.source="form.fieldSource.userX0" dbf.type="" dbf.key="">
<c:if test="${list[0].itstate=='2'}">

${list[0].itworkplan}

	
	</c:if>
	<c:if test="${list[0].itstate=='1'}">
	<input name="itworkplan" id="itworkplan" @focus="itworkplan()" v-model="inp">
	
	
	<!-- <select>
		<option v-for="(t,index) in test" @click="zhend(t.username, index)">{{t.username}}</option>
	</select> -->
	
	<i  v-for="(t,index) in test" style="border: 1px solid #e3e3e3;" @click="zhend(t.username, index)">
		{{t.username}}
		
	</i>
 <i @click="blurTest()" >确定</i> 
	
	</c:if>
	<c:if test="${list[0].itstate=='4'}">

${list[0].itworkplan}

	
	</c:if>
	<!-- 
	<div  @click="zhend()" style="width:">
		<input  v-for="ts in test" type="checkbox" name="detailId" class="detailId" value="ts.username">{{ts.detailid}}
	
	</div> -->
	
	
	

&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="项目组织和分工附件" style="WIDTH: 798px" colspan="3" dbf.source="files" dbf.type="">&nbsp;</td></tr>
<tr>
<td id="项目组织和分工" style="HEIGHT: 120px; VERTICAL-ALIGN: top" colspan="4" dbf.source="" dbf.type="">&nbsp;</td></tr></tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody id="tableAdd">
<!-- <tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="7" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>实施计划和方案</strong></span></td></tr> -->
	<c:if test="${list[0].itstate=='1'}">


	
	
<tr id="tAdd">

<td style="  "dbf.source="" dbf.type="">任务名字</td>
<td style="" dbf.source="" dbf.type="">开始时间</td>
<td style=" " dbf.source="" dbf.type="">工作量</td>
<td style=" "dbf.source="" dbf.type="">描述</td>
<td style="" dbf.source="" dbf.type="">执行人</td>
<td style="" dbf.source="" dbf.type="">空闲人员</td>
<td style=" " dbf.source="" dbf.type="" onclick="addtr()">+</td>
<!-- <td style=" " dbf.source="" dbf.type="" onclick="cscs()">++</td> -->

<!-- <input type="checkbox" name="detailId" class="detailId" value="9">2
<input type="checkbox"  name="detailId" class="detailId" value="10">2
<input type="checkbox" name="detailId" class="detailId" value="11">2 -->
<a  id="sss">222</a>
</tr>
</c:if>
<!-- <tr>
<td><input name='tname' class='tname'></td>
	<td><input name='ksdeta' class='ksdeta'></td>
		<td><input name='workload' class='workload'></td>
		<td><input name='rwsm' class='rwsm'></td>
		<td><input name='zxr' class='zxr'></td>
		<td><input name='deptid' value='5' class='deptid'></td>
		<td><input name='rwfl' value='0' class='rwfl'></td>
		<td onclick='del(this)'>-</td>
</tr> -->
</tbody></table>
<table class="tableListBorder" cellspacing="0" cellpadding="0" align="center" border="0">
<tbody>
<tr>
<td style="TEXT-ALIGN: center; BACKGROUND-COLOR: lightyellow" colspan="4" dbf.source="" dbf.type=""><span style="FONT-SIZE: 14px"><strong>项目成果和总结</strong></span></td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">实际开始时间</td>
<td id="dbf.time0" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date">&nbsp;</td>
<td style="TEXT-ALIGN: center; WIDTH: 115px"><span style="COLOR: rgb(255,0,0)">*</span>实际完成时间</td>
<td id="dbf.time1" style="TEXT-ALIGN: left; WIDTH: 336px" dbf.source="date" dbf.type="date,required">&nbsp;</td></tr>
<tr>
<td style="TEXT-ALIGN: center; WIDTH: 112px" dbf.source="" dbf.type="">附件</td>
<td id="项目成果和总结附件" style="WIDTH: 798px" colspan="3" dbf.source="files" dbf.type="">&nbsp;</td></tr>
<tr>
<td id="项目成果和总结" style="HEIGHT: 120px; VERTICAL-ALIGN: top" colspan="4" dbf.source="" dbf.type="">&nbsp;</td></tr></tbody></table>
</form></div><form method="post">${list[0].viewState}
<input id="iid" value="${list[0].itemid}" style="display:none;">
</form><br>
<c:if test="${list[0].itstate==0}">
<div  id="_vWorkflowActionsShow" align="right"><a class="button" href="javascript:void(0)" id="butt">转执行</a></div><br>

</c:if>
<c:if test="${list[0].itstate==1}">
<div  id="_vWorkflowActionsShow" align="right"><a class="button"  id="but">开启项目</a><!-- <a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转立项审核&#39;,1,1);return false;">转立项审核</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;直接转项目任命&#39;,1,1);return false;">直接转项目任命</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a> --></div><br>

</c:if> 
<c:if test="${list[0].itstate==2}">
<div  id="_vWorkflowActionsShow" align="right"><a class="button" href=" Itinfor/updateIdStateTwo?iid=${list[0].itemid}"  id="buttt">关闭项目</a><!-- <a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;转立项审核&#39;,1,1);return false;">转立项审核</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;直接转项目任命&#39;,1,1);return false;">直接转项目任命</a><a class="button" href="javascript:" onclick="javaScript:workflowAction(&#39;取消&#39;,0,0);return false;">取消</a> --></div><br>

</c:if> 
 
 <table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;"><colgroup><col width="60%"><col width="2%"><col></colgroup><tbody><tr valign="top"><td class="boxBorder">

</td></tr></tbody></table></td><td>&nbsp;</td></tr></tbody></table><div id="fieldGetValueBySource.dbf.startTime" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 350px; top: 156px; left: 317px; display: none;"><iframe src="./新增项目_ - Colloa_files/fieldDate.html" style="width:100%;height:95%;" frameborder="0"></iframe></div>

</body>
</html>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
	
	 $("#sss").click(function(){
	 
	 
	 
	 var check_val=[];
	 var jsonArr=new Array();
		$("#tableAdd tr").each(function(){
			var tname=$(this).find(".tname").val();
			var ksdeta=$(this).find(".ksdeta").val();
			var workload=$(this).find(".workload").val();
			var rwsm=$(this).find(".rwsm").val();
			var zxr=$(this).find(".zxr").val();
			var deptid=$(this).find(".deptid").val();
			var rwfl=$(this).find(".rwfl").val();
			var itemid=$(this).find(".itemid").val();
			var jsonStr={
				"tname":tname,"ksdeta":ksdeta,"workload":workload,"rwsm":rwsm,
				"zxr":zxr,"deptid":deptid,"rwfl":rwfl,"itemid":itemid
			
			};
			alert($(this).find(".detailId:checked").length)
	var check_valOne = [];
	 for(var i=0;i<$(this).find(".detailId:checked").length;i++){
		detailId=$(".detailId:checked:eq("+i+")").val();
		 var ArrStr={
        "detailId":detailId
        }
        check_valOne.push(ArrStr);
	} 
	alert(check_valOne+"zxr")
		
			jsonArr.push(jsonStr)
				check_val+=check_valOne
			alert(jsonArr+"sj")
		});
		alert(jsonArr+"sjzs")
		
		alert(check_val+"zxrzs")
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	
	/*  $("#tableAdd tr").each(function(){
	alert($(this).find(".detailId:checked").length)
	var check_val = [];
	 for(var i=0;i<$(this).find(".detailId:checked").length;i++){
		detailId=$(".detailId:checked:eq("+i+")").val();
		 var ArrStr={
        "detailId":detailId
        }
        check_val.push(ArrStr);
	} 
	alert(check_val)
	 
	}) */
	 
	
 /* obj = document.getElementsByName("detailId");
    //check_val = [];
    
 for(k in obj){
        if(obj[k].checked){
        var detailId=obj[k].value;
        var ArrStr={
        "detailId":detailId
        }
        check_val+=ArrStr;
        }
    } */
  
    
/*      $.ajax({
     contentType:'application/json;charset=utf-8',
			url:"task/aaaa.action",
	 			type:"post",
	 			data:{"list":JSON.stringify(check_val)},
				dataType:"json",
				success:function(data){
				
				}
		
		})  
	 */
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    
})
	
	new Vue({
		el:"#app",
		data:{
			test:"",
			inp:"",
		},
		methods:{
			itworkplan:function(){
				this.$http.post("Itinfor/selectUsersName").then(function(data){
					this.test = data.body;
					
				});
			},
			zhend:function(username, index){
			alert(this.test.length);
				this.inp += username+",";
				this.test.splice(this.test,index+1);
			},
			blurTest:function(){
				this.test="";
			}
		}
	});
	
	//添加一行
	function addtr(){
	$("#tableAdd").append(tr);
	
	/*  $(".t1").html("");
	var iid=$("#itemid").val();
		var tr="<tr id='tableTwo'>"
		tr+="<td><input name='tname' class='tname'></td>"
		tr+="<td><input name='ksdeta' class='ksdeta'></td>"
		tr+="<td><input name='workload' class='workload'></td>"
		tr+="<td><input name='rwsm' class='rwsm'></td>"
		tr+="<td ><input name='zxr' class='zxr' ></td>"
	
		
		
		tr+="<td class='t1'></td>"
		tr+="<td style='display:none'><input name='itemid' value='"+iid+"' class='itemid' style='display:none'></td>"
		tr+="<td style='display:none'><input name='deptid' value='5' class='deptid' style='display:none'></td>"
		tr+="<td style='display:none'><input name='rwfl' value='0' class='rwfl' style='display:none'></td>"
		tr+="<td onclick='del(this)'>-</td></tr>"
		$("#tableAdd").append(tr);
		//var sssss=$("#tableAdd").children("tr").length-1;
	
			$.ajax({
			url:"Itinfor/selectUsersName",
			type:"post",
			dataType:"json",
			success:function(data){
			var td=""
			for(i=0;i<data.length;i++){
			td+="<input type='checkbox' name='detailId' class='detailId' value='"+data[i].detailId+"'/>"+data[i].username+"";
		
			}	
			$(".t1").append(td)
			//$("#tableAdd").children("tr:eq("+sssss+")").find(".t1").append(td);
				
			}
		
		}) */
	}
	function del(obj){
	obj.parentNode.remove();
}

 var check_val = [];

	$("#but").click(function(){
	var sss=[];
	/* 	  obj = document.getElementsByName("detailId");
     check_val = [];
    
 for(k in obj){
        if(obj[k].checked){
        var detailId=obj[k].value;
        var ArrStr={
        "usersid":detailId
        }
        check_val.push(ArrStr);
        }
    } */
   
   
    $.ajax({
     contentType:'application/json;charset=utf-8',
			url:"task/aaaa.action",
	 			type:"post",
	 			data:JSON.stringify(check_val),
				dataType:"json",
				success:function(data){
				
				}

		})  
		 $.ajax({
			url:"Itinfor/updateIdStateOne.action",
	 			type:"post",
	 			data:{iid:$("#iid").val()},
				dataType:"json",
				success:function(data){
				
				}
		
		}) 
			$.ajax({
			url:"Itinfor/updateItworkplan.action",
	 			type:"post",
	 			data:{itemid:$("#iid").val(),"itworkplan":$("#itworkplan").val()},
				dataType:"json",
				success:function(data){
				
				}
		
		})  
		
	/* 	var jsonArr=new Array();
		$("#tableAdd tr").each(function(){
			var tname=$(this).find(".tname").val();
			var ksdeta=$(this).find(".ksdeta").val();
			var workload=$(this).find(".workload").val();
			var rwsm=$(this).find(".rwsm").val();
			var zxr=$(this).find(".zxr").val();
			var deptid=$(this).find(".deptid").val();
			var rwfl=$(this).find(".rwfl").val();
			var itemid=$(this).find(".itemid").val();
			var jsonStr={
				"tname":tname,"ksdeta":ksdeta,"workload":workload,"rwsm":rwsm,
				"zxr":zxr,"deptid":deptid,"rwfl":rwfl,"itemid":itemid
			
			};
		
			jsonArr.push(jsonStr)
				
			
		});
		alert(jsonArr)
		 */
		 
		 
		 
		 /*  -------------------------------------------------------- */
		 
		check_val = [];
	 var jsonArr=new Array();
		$("#tableAdd tr").each(function(){
			var tname=$(this).find(".tname").val();
			var ksdeta=$(this).find(".ksdeta").val();
			var workload=$(this).find(".workload").val();
			var rwsm=$(this).find(".rwsm").val();
			var zxr=$(this).find(".zxr").val();
			var deptid=$(this).find(".deptid").val();
			var rwfl=$(this).find(".rwfl").val();
			var itemid=$(this).find(".itemid").val();
			var jsonStr={
				"tname":tname,"ksdeta":ksdeta,"workload":workload,"rwsm":rwsm,
				"zxr":zxr,"deptid":deptid,"rwfl":rwfl,"itemid":itemid
			
			};
			alert($(this).find(".detailId:checked").length)
	var check_valOne = [];
	 for(var i=0;i<$(this).find(".detailId:checked").length;i++){
		detailId=$(".detailId:checked:eq("+i+")").val();
		 var ArrStr={
        "detailId":detailId
        }
        check_valOne.push(ArrStr);
	} 
	alert(check_valOne+"zxr")
		
			jsonArr.push(jsonStr)
				check_val+=check_valOne
			alert(jsonArr+"sj")
		});
		alert(jsonArr+"sjzs")
		
		alert(check_val+"zxrzs")
		 
		 
		 
		 
		 
		 
			jsonArr.splice(0,1);
			$.ajax({
			contentType:'application/json;charset=utf-8',
				url:"task/addTaskAll",
	 			type:"post",
	 			data: JSON.stringify({"ch":check_val,"eh":jsonArr}),//JSON.stringify(jsonArr)ssscontentType:"application/json;charset=utf-8"
				dataType:"json",
				traditional:true,
				success:function(data){
				
				}
			})
	
		
		
		
		
		
		
		
		
		
	alert("成功！");
	window.location.href = 'BackJsp/mh/itemMeAll.jsp';
	})
function bbb(){
 obj = document.getElementsByName("detailId");
  check_val =[];
 for(k in obj){
        if(obj[k].checked){
        var detailId=obj[k].value;
        var ArrStr={
        "usersid":detailId
        }
       
        check_val.push(ArrStr);
        }
    }
	alert(check_val);

}




/* 	$("#itworkplans").click(function(){
		
			$.ajax({
				url:"Itinfor/selectUsersName",
	 			type:"post",
				dataType:"json",
				success:function(data){
				
				alert(data.length)
				}
			
			
			})
		
		
		})

 */
 
 var tr=null;
 var td="";
		$(function(){
			
			$.ajax({
				url:"Itinfor/selectUsers",
	 			type:"post",
				dataType:"json",
				success:function(data){
				var option="";
				for(i=0;i<data.length;i++)
				option+="<option>"+data[i].username+"</option>";
				$("#username").append(option)
				}
				
			
			})
		
		var iid=$("#itemid").val();
		//$("#tableAdd").append(tr);
		//var sssss=$("#tableAdd").children("tr").length-1;
	
			$.ajax({
			url:"Itinfor/selectUsersName",
			type:"post",
			dataType:"json",
			success:function(data){
			
			for(i=0;i<data.length;i++){
			td+="<input type='checkbox' name='detailId' class='detailId' value='"+data[i].detailId+"'/>"+data[i].username+"";
			}	
			 tr="<tr id='tableTwo'>"
		tr+="<td><input name='tname' class='tname'></td>"
		tr+="<td><input name='ksdeta' class='ksdeta'></td>"
		tr+="<td><input name='workload' class='workload'></td>"
		tr+="<td><input name='rwsm' class='rwsm'></td>"
		tr+="<td ><input name='zxr' class='zxr' ></td>"
	
		
		
		tr+="<td class='t1'>"+td+"</td>";
		tr+="<td style='display:none'><input name='itemid' value='"+iid+"' class='itemid' style='display:none'></td>"
		tr+="<td style='display:none'><input name='deptid' value='5' class='deptid' style='display:none'></td>"
		tr+="<td style='display:none'><input name='rwfl' value='0' class='rwfl' style='display:none'></td>"
		
		tr+="<td onclick='del(this)'>-</td></tr>"
			//$("#tableAdd").children("tr:eq("+sssss+")").find(".t1").append(td);
				
			}
		
		})
		
		
		
		
		
		
		})
	
</script>