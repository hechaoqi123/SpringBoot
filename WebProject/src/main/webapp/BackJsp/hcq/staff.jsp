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
         #aa a{
           margin-top:6px;
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
          <button id="save" class="btn" style="padding:5px 20px;border:1px solid #E0E0E0;background:#FCFCFC;border-radius:3px;cursor: pointer "><b>+</b>新增员工</button>
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
              <TR id="dataCount">
                <TD style="padding: 10px;">
                  <DIV class="treeOfNavigation" id="aa">
                  <A @click="flush(1)" href="javascript:catalogue(10,0,'在职的员工');"><IMG src="BackJsp/hcq/img/folder.png" border="0"> 所有员工 <SPAN class="tipCount">{{AllCount}}</SPAN></A>
                  <A @click="queryByCriteria('在职')"  href="javascript:catalogue(10,0,'在职的员工');"><IMG src="BackJsp/hcq/img/folder.png"  border="0"> 在职的员工 <SPAN class="tipCount">{{onJob}}</SPAN></A>
                  <A @click="queryByCriteria('试用')"  href="javascript:catalogue(10,10,'试用期员工');"><IMG src="BackJsp/hcq/img/folder.png"   border="0"> 试用期员工 <SPAN class="tipCount">{{onTrial }}</SPAN></A>
                  <A @click="queryByCriteria('临时')"  href="javascript:catalogue(10,5,'临时的员工');"><IMG src="BackJsp/hcq/img/folder.png"  border="0"> 临时的员工 <SPAN class="tipCount">{{temporary}}</SPAN></A>
                  <A @click="queryByCriteria('退休')"  href="javascript:catalogue(10,-1,'退休的员工');"><IMG src="BackJsp/hcq/img/folder.png"   border="0"> 退休的员工 <SPAN class="tipCount">{{retire}}</SPAN></A>
                  <A @click="queryByCriteria('离职')"  href="javascript:catalogue(10,-10,'离职的员工');"><IMG src="BackJsp/hcq/img/folder.png" border="0"> 离职的员工 <SPAN     class="tipCount">{{dimission}}</SPAN></A></DIV></TD></TR></TBODY></TABLE></TD>
          <TD></TD>
          <TD >
            <TABLE id="app" class="tableList" border="0" cellspacing="0" 
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
                
              <TR style="font-size:14px;line-height:25px;height:25px;" v-for="user in users" valign="top">
                <TD><A :href="'userdetail/getDetailInfo?id='+user.detailid"><IMG src="BackJsp/hcq/img/userX0.gif" 
                  border="0">{{user.username}}</A></TD>
                <TD>{{user.usersex}}</TD>
                <TD>{{user.usernum}}&nbsp;</TD>
                <TD>{{user.dependence}}&nbsp;</TD>
                <TD>{{user.position}}&nbsp;</TD>
                <TD>{{user.entrydate}}&nbsp;</TD>
                <TD><a @click="remove(user.detailid)" href="javascript:">删除</a>	&nbsp;</TD></TR>
                
               </TBODY>
               </TABLE>
                <br/>
                <span id="pageUtil">
                <a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a>
                 </span>
               </TD></TR></TBODY></TABLE>
</div></div></td></tr></tbody></table>
</body>  
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
     $("#save").click(function(){
         
         window.location.href="BackJsp/hcq/saveUserdetail.jsp"
     })
      function flashPage(){
       window.location.href="BackJsp/hcq/staff.jsp";
      }
     //页面加载时，通过vue异步请求获取数据
     $(function(){
        //封装分页链接
        var pageUtil=new Vue({
             el:"#pageUtil",
             data:{
               part:0,//加载策略      0:全部加载     1:部分加载
               criteria:null,//记录条件限制
               pageInfo:null//记录分页数据
             },methods:{
                execute:function(PageNumber){
                  if(this.part==0){//全部加载
                  
                    var url = '/userdetail/getAllUserdetail';
		              this.$http.post(url,{pageNum:PageNumber},{emulateJSON:true}).then(function(res){
		                page.users=res.body.list
		                this.pageInfo=res.body
		             });
                  }else{//条件加载
                      var url="userdetail/queryByCriteria";
		              this.$http.post(url,{pageNum:PageNumber,status:this.criteria},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               page.users=res.body.list;
		             })
                  }
                }
             }
        })
        //封装全部检索
		  var page=new Vue({
		    el :'#app',
		    data:{
		      users:null,
		      pageInfo:null
		    },
		    methods:{
		        execute:function(PageNumber){
			        pageUtil.part=0;//设置全部加载
			        pageUtil.execute(PageNumber);//加载数据
		        },remove:function(userId){
		           if(confirm("您确定要删除此员工吗？(该员工的人事基础信息将被删除。)")){
		                var url="userdetail/remove";
		               this.$http.post(url,{userId:userId},{emulateJSON:true}).then(function(res){})
		               flashPage();
		              /*  var url="userdetail/remove";
		               this.$http.post(url,{userId:userId},{emulateJSON:true}).then(function(res){
		                   alert(1);
		               }) */
		           }
		        }
		    }
		})
		//封装条件检索
		var dataCount=new Vue({
		    el:"#dataCount",
		    data:{
		       AllCount:0,
		       onJob:0,
		       onTrial:0,
		       temporary:0,
		       retire:0,
		       dimission:0
		    },methods:{
		       queryByCriteria:function(criteria){
		            pageUtil.part=1;//设置为部分加载
		            pageUtil.criteria=criteria;//设置部分加载条件
			        pageUtil.execute(1);//加载数据
		       },flush:function(pagenumber){
		           pageUtil.part=0;//设置为全部加载
		           page.execute(pagenumber);
		       },getAll:function(){
		          var url="userdetail/classify";
		          this.$http.post(url,{emulateJSON:true}).then(function(res){
		              var array=res.body;
		              for(var i=0;i<array.length;i++){
		                   this.AllCount+=1;
		                 if(array[i].status=="在职"){
		                   this.onJob+=1;
		                 }else if(array[i].status=="试用"){
		                   this.onTrial+=1;
		                 }else if(array[i].status=="临时"){
		                   this.temporary+=1;
		                 }else if(array[i].status=="退休"){
		                   this.retire+=1;
		                 }else if(array[i].status=="离职"){
		                   this.dimission+=1;
		                 }
		              }
		          
		          })
		       }
		    }
		 
		})
		//调用检索
        pageUtil.execute(1);//检索数据
        dataCount.getAll();//检索数据量
     })
</script>

