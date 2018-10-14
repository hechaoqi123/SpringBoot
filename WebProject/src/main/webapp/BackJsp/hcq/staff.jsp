<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工管理</title>
    
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
         #hea div{
           float:left;
         }
      </style>
  </head>
  
  <body style="padding-top:15px;padding-left:30px;">

      <!-- head -->
    <TABLE border="0" cellspacing="0" cellpadding="0">
        <TBODY>
        <TR>
          <TD>
            <H1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">员工管理</span></H1></TD>
          <TD align="right">
          <button class="btn" style="padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>新增员工</button>
<SCRIPT language="javaScript">workflowListInit();function showItem(sName,sObjects,bAjax){var s="item.aspx?catalogue=702000&name="+escape(sName)+"&objects="+sObjects; if(bAjax) eval(ajax(s));else windowOpen(s);} function workflowList(stype,sObjects,bPortal,bSelf){if(stype==0) workflowListOne("workflow.aspx","新增员工",702010,"<i class='fa fa-plus fa-lg'></i>",702000,sObjects,bPortal,bSelf);if(stype==1) workflowListOne("workflow.aspx","修改",702020,"<i class='fa fa-eyedropper fa-lg'></i>",702000,sObjects,bPortal,bSelf);if(stype==1) workflowListOne("workflow.aspx","删除",702030,"<i class='fa fa-remove fa-lg'></i>",702000,sObjects,bPortal,bSelf);if(stype==0) workflowListOne("finder.aspx","查找",702050,"<i class='fa fa-search fa-lg'></i>",702000,sObjects,bPortal,bSelf);}</SCRIPT>

<SCRIPT language="javaScript">workflowList(0);</SCRIPT>
          </TD></TR></TBODY></TABLE><BR>
      <TABLE style="table-layout: fixed;" border="0" cellspacing="0" 
      cellpadding="0">
        <COLGROUP>
        <COL width="20%">
        <COL width="2%">
        <COL>
        <TBODY>
        <TR valign="top">
          <TD>
            <TABLE class="tableList" border="0" cellspacing="0" 
              cellpadding="0"><THEAD>
              <TR>
                <TH style="padding-left: 26px;">分类</TH></TR></THEAD>
              <TBODY>
              <TR>
                <TD style="padding: 10px;">
                  <DIV class="treeOfNavigation" id="treeOfNavigation" style="padding-left:20px;"><A href="javascript:catalogue();" 
                  indent="0" sid="" psid="0"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> (显示所有)</A><A style="padding-left: 0px;" href="javascript:catalogue(10000,1000001,'阿尔法集团');" 
                  indent="0" sid="1000001" psid="0"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 阿尔法集团</A><A style="padding-left: 12px;" href="javascript:catalogue(10000,1000002,'总经办');" 
                  indent="1" sid="1000002" psid="1000001"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 总经办</A><A style="padding-left: 12px;" href="javascript:catalogue(10000,1000003,'人事部');" 
                  indent="1" sid="1000003" psid="1000001"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 人事部</A><A style="padding-left: 12px;" href="javascript:catalogue(10000,1000004,'财务部');" 
                  indent="1" sid="1000004" psid="1000001"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 财务部</A><A style="padding-left: 12px;" href="javascript:catalogue(10000,1000117,'科技公司');" 
                  indent="1" sid="1000117" psid="1000001"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 科技公司</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000005,'采购部');" 
                  indent="2" sid="1000005" psid="1000117"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 采购部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000009,'技术部');" 
                  indent="2" sid="1000009" psid="1000117"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 技术部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000006,'生产部');" 
                  indent="2" sid="1000006" psid="1000117"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 生产部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000033,'营销部');" 
                  indent="2" sid="1000033" psid="1000117"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 营销部</A><A style="padding-left: 12px;" href="javascript:catalogue(10000,1000118,'工程公司');" 
                  indent="1" sid="1000118" psid="1000001"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 工程公司</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000120,'工程部');" 
                  indent="2" sid="1000120" psid="1000118"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 工程部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000035,'售后部');" 
                  indent="2" sid="1000035" psid="1000118"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 售后部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000008,'网络部');" 
                  indent="2" sid="1000008" psid="1000118"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 网络部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000034,'销售部');" 
                  indent="2" sid="1000034" psid="1000118"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 销售部</A><A style="padding-left: 12px;" href="javascript:catalogue(10000,1000119,'现代事务所');" 
                  indent="1" sid="1000119" psid="1000001"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 现代事务所</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000123,'产权部');" 
                  indent="2" sid="1000123" psid="1000119"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 产权部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000122,'法务部');" 
                  indent="2" sid="1000122" psid="1000119"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 法务部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000124,'税务部');" 
                  indent="2" sid="1000124" psid="1000119"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 税务部</A><A style="padding-left: 24px;" href="javascript:catalogue(10000,1000121,'咨询部');" 
                  indent="2" sid="1000121" psid="1000119"><IMG src="BackJsp/hcq/img/userX10000.gif" 
                  border="0"> 咨询部</A></DIV>
<SCRIPT type="text/javascript">treeBuild("treeOfNavigation", "");</SCRIPT>
                   </TD></TR>
              <TR>
                <TD class="textGray" 
                  style="padding: 10px 26px;">（以上分类中包含了在职的、试用期和临时的员工） </TD></TR>
              <TR>
                <TD style="padding: 10px;">
                  <DIV class="treeOfNavigation"><A href="javascript:catalogue(10,0,'在职的员工');"><IMG src="BackJsp/hcq/img/folder.png" 
                  border="0"> 在职的员工 <SPAN class="tipCount">71</SPAN></A><A href="javascript:catalogue(10,10,'试用期员工');"><IMG src="BackJsp/hcq/img/folder.png" 
                  border="0"> 试用期员工 <SPAN class="tipCount">4</SPAN></A><A href="javascript:catalogue(10,5,'临时的员工');"><IMG src="BackJsp/hcq/img/folder.png" 
                  border="0"> 临时的员工 <SPAN class="tipCount">2</SPAN></A><A href="javascript:catalogue(10,-1,'退休的员工');"><IMG src="BackJsp/hcq/img/folder.png" 
                  border="0"> 退休的员工 <SPAN class="tipCount">3</SPAN></A><A href="javascript:catalogue(10,-10,'离职的员工');"><IMG src="BackJsp/hcq/img/folder.png" 
                  border="0"> 离职的员工 <SPAN 
              class="tipCount">3</SPAN></A></DIV></TD></TR></TBODY></TABLE></TD>
          <TD></TD>
          <TD id="app">
            <TABLE class="tableList" border="0" cellspacing="0" 
              cellpadding="0"><THEAD>
              <TR>
                <TH>姓名</TH>
                <TH>性别</TH>
                <TH>工号</TH>
                <TH>从属于</TH>
                <TH>职务</TH>
                <TH>入职日期</TH>
                <TH>操作</TH></TR></THEAD>
              <TBODY >
                
              <TR v-for="user in users" valign="top">
                <TD><A href="javascript:showItem('员工','1000046');"><IMG src="BackJsp/hcq/img/userX0.gif" 
                  border="0">{{user.usernum}}</A></TD>
                <TD>男</TD>
                <TD>Ahz-001&nbsp;</TD>
                <TD>杭州机构&nbsp;</TD>
                <TD>分公司经理&nbsp;</TD>
                <TD>2009/3/13&nbsp;</TD>
                <TD>修改删除&nbsp;</TD></TR>
                
               </TBODY></TABLE>
                <br/>
                <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a>
               </TD></TR></TBODY></TABLE>
</div></div></td></tr></tbody></table>
</body>  
<SCRIPT language="javaScript">
  treeBuild("treeOfMenu", location.href.substring(location.href.indexOf("sid=")+4,location.href.indexOf("&name=")), true);
  var aH1=document.getElementsByTagName("H1"); if(aH1.length>0) aH1[0].innerHTML="<img style='cursor:pointer;' src='../images/menu.png' onclick=\"var cm=document.getElementById('colloaMenu'); if(cm.style.display=='none') cm.style.display='inline'; else cm.style.display='none';\"> "+aH1[0].innerHTML;
</SCRIPT>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(".btn").each(function(){
        $(this).hover(function(){
          $(this).css("border","1px solid #5ea6eb")
        },function(){
          $(this).css("border","1px solid #E0E0E0")
        })
     })
     //页面加载时，通过vue异步请求获取数据
     $(function(){
		  var page=new Vue({
		    el :'#app',
		    data:{
		      users:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(PageNumber){
		             var url = '/userdetail/getAllUserdetail';
		             this.$http.post(url,{pageNum:PageNumber},{emulateJSON:true}).then(function(res){
		                this.users=res.body.list
		                this.pageInfo=res.body
		             });
		        }
		    }
		})
        page.execute(1);
     })
     
</script>

