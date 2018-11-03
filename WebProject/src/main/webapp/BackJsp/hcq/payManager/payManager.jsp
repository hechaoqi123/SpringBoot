<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>薪资管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
    <SCRIPT src="BackJsp/hcq/js/viewCn.js" type="text/javascript"></SCRIPT>
    <SCRIPT src="BackJsp/hcq/img/view.js" type="text/javascript"></SCRIPT>
  </head>
  
  <body style="padding-top:15px;padding-left:30px;">
  
  <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
    <TD>
    <H1><img src="BackJsp/hcq/img/log.png"/><span style="margin-left:10px;">薪资管理</span>
    </H1>
    </TD>
    <TD align="right" id="oWorkflowList"></TD>
    </TR></TBODY></TABLE><BR/>
      <!-- 分类检索 -->
        <div id="colloaMenu2" >
	   <span id="dataCount">
	   <a  class="a" style="color:#000" href="BackJsp/hcq/payManager/payManager.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png">薪资设置	
  	   <a class="a" href="BackJsp/hcq/payManager/revenue.jsp">
	     <img border="0" src="BackJsp/hcq/img/folder.png">个人所得税
	   </a>
	   </span>
	 </div>
	    <!-- 数据 -->
     <div id="colloaContent2">
<span id="app">
<table style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList">
        <THEAD>
        <TR>
          <TH style="height:40px;border:1px solid #e0e0e0;text-align:center;">项目名称</TH>
          <TH style="height:40px;border:1px solid #e0e0e0;text-align:center;">项目说明</TH>
          <TH style="height:40px;border:1px solid #e0e0e0;text-align:center;">项目类型</TH>
          <TH style="height:40px;border:1px solid #e0e0e0;text-align:center;">计算方式</TH>
          <TH style="height:40px;border:1px solid #e0e0e0;text-align:center;">个人缴纳(%)</TH>
          <TH style="height:40px;border:1px solid #e0e0e0;text-align:center;">公司缴纳(%)</TH>
          </TR></THEAD>
        <TBODY id="tt" style="font-size:14px;">
        <TR v-for="apply in datas">
          <TD style="height:40px;border:1px solid #e0e0e0;text-align:center;">
          <A @click="detail()" href="javascript:">
				<img width="16" src="BackJsp/hcq/img/search.png"/>
              {{apply.payname}}</A></TD>
          <TD style="height:40px;border:1px solid #e0e0e0;text-align:center;">{{apply.remark}}&nbsp;</TD>
          <TD style="height:40px;border:1px solid #e0e0e0;text-align:center;">{{apply.type}}&nbsp;</TD>
          <TD style="height:40px;border:1px solid #e0e0e0;text-align:center;">{{apply.calculateway}}</TD>
          <TD style="height:40px;border:1px solid #e0e0e0;text-align:center;">{{apply.field1}}</TD>
           <TD style="height:40px;border:1px solid #e0e0e0;text-align:center;">{{apply.field2}}</TD>
             
         </TR>
</TBODY></TABLE><br/>
</span>
     </DIV>
</BODY></HTML>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
      $("#save").click(function(){
        window.location.href="BackJsp/hcq/PersonnelApply.jsp"
     })
      $("#save").hover(function(){
        $(this).css("border","1px solid #5ea6eb")
     },function(){
       $(this).css("border","1px solid #E0E0E0")
     })
   //封装全部检索                       
		  var page=new Vue({
		    el :'#colloaContent2',
		    data:{
		      datas:null,
		    },
		    methods:{
		        execute:function(PageNumber){ 
                    var url="/Paymaneger/getAll";		           
		           this.$http.post(url,{pageNum:PageNumber},{emulateJSON:true}).then(function(res){
	               this.datas=res.body;
	              })
		     }
		     }
		})
		//封装数据量及条件检索
		var dataCount=new Vue({
		    el:"#dataCount",
		    data:{
		    },methods:{
		        criteria:function(cri,event){//条件查询
		           target=event.currentTarget;
		           removeClass();
		           $(target).css("color","#000")
		           page.execute(1)
		       }
		    }
		})
		   page.execute(1);//检索数据
		   
		   
		   
	function removeClass(){
	  $(".a").css("color","");
	}
     //css
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
  })
</script>
