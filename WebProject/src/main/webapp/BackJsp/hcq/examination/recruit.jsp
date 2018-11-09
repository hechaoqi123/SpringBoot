<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>招聘和配置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="BackJsp/hcq/css/font-awesome.min.css" rel="stylesheet">  
    <LINK href="BackJsp/hcq/css/view.css" rel="stylesheet">   
  </head>
  <body style="padding-top:15px;padding-left:10px;">
  <table cellpadding="0" cellspacing="0" border="0"><tbody><tr><td>
  <h1><img src="BackJsp/hcq/img/log.png"/>
                        <span style="margin-left:7px;">招聘和配置</span></h1></td><td id="oWorkflowList" align="right">
   </td></tr></tbody></table><br>
    <!-- 分类 -->
      
	<div id="colloaMenu2" >
	   <span id="dataCount">
	   <a  class="a" style="color:#000" @click="criteria(0,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 招聘申请
	     <!-- <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{recruit}}</SPAN> --></a>
	  <!--  <a class="a" @click="criteria(1,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 入职申请
	     <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{entry}}</SPAN>
	     </a> -->
	   <a class="a" @click="criteria(2,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 转正申请
	     <!-- <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{office}}</SPAN> -->
	     </a>
	   <a class="a" @click="criteria(3,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 岗位调动申请
	     <!-- <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{transfer}}</SPAN> -->
	     </a>
	   <a class="a" @click="criteria(4,$event)" href="javascript:">
	     <img border="0" src="BackJsp/hcq/img/folder.png"> 离职申请
	     <!-- <SPAN class="tipCount" style="margin-left:8px;padding:0px 9px">{{dimission}}</SPAN> -->
	     </a>
	   </span>
	 </div>
	 <!-- 数据 -->
<div id="colloaContent2">
<span id="app">

<!-- 招聘申请 -->

<table  v-show="tactics==0"  style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr>
<th>主题</th>
<th>申请人</th>
<th>所属部门</th>
<th>需求岗位</th>
<th>需求人数</th>
<th>希望到岗日期</th></tr></thead>
<tbody>
<tr v-for="recruit in datas">
<td>
<img v-if="recruit.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
<img v-else-if="recruit.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'Recruit/detail/'+recruit.recruitid">{{recruit.theme}}</a></td>
<td>{{recruit.principal}}</td>
<td>{{recruit.department}}&nbsp;</td>
<td>{{recruit.post}}</td>
<td>{{recruit.peoplenumber}}</td>
<td>{{recruit.enddate}}</td></tr>
<tr>
</table>
<!-- 入职申请 -->
 <table v-show="tactics==1" style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>主题</th><th>入职人</th><th>入职日期</th><th>所属部门</th><th>入职岗位</th></tr></thead>
<tbody>
<tr v-for="entry in datas">
<td>
<img v-if="entry.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
<img v-else-if="entry.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'entry/detail/'+entry.applyid">{{entry.theme}}</a></td><td>{{entry.applypeople}}</td><td>{{entry.entrydate}}</td><td>{{entry.entrypart}}&nbsp;</td><td>{{entry.entrypost}}</td></tr>
<tr>
</table>
<!-- 转正申请 -->
<table v-show="tactics==2" style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>主题</th><th>申请人</th><th>所属部门</th><th>申请岗位</th><th>申请时间</th><th>转正日期</th></tr></thead>
<tbody>
<tr v-for="off in datas">
<td>
<img v-if="off.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
<img v-else-if="off.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'Official/detail/'+off.officialid">{{off.theme}}</a></td><td>{{off.proposer}}</td><td>{{off.department}}&nbsp;</td><td>{{off.post}}</td><td>{{off.filingdate}}</td><td>{{off.officialdate}}</td></tr>
<tr>
</table>
<!-- 岗位调动 -->
<table v-show="tactics==3" style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList"><thead><tr><th>主题</th><th>申请人</th><th>现部门/岗位</th><th>新部门/岗位</th><th>调动类型</th></tr></thead>
<tbody>
<tr v-for="t in datas">
<td>
	<img v-if="t.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
	<img v-else-if="t.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
	<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
<a :href="'Transfer/detail/'+t.transferid">{{t.theme}}</a></td><td>{{t.applypeople}}</td><td>{{t.oldpart}}/{{t.oldpost}}&nbsp;</td><td>{{t.newpart}}/{{t.newpost}}</td><td>{{t.genre}}</td></tr>
<tr>
</table>
<!-- 离职审批 -->
<table v-show="tactics==4" style="margin-left:-15px;" cellpadding="0" cellspacing="0" border="0" class="tableList">
	<tr>
		<th>主题</th>
		<th>申请人</th>
		<th>所属部门</th>
		<th>申请岗位</th>
		<th>申请时间</th>
		<th>预计离职日期</th>
    </tr>
	<tr v-for="d in datas">
		<td>
		<img v-if="d.status == '驳回'" width="16" src="BackJsp/hcq/img/priority1.gif"/>
		<img v-else-if="d.status == '结束'" width="16" src="BackJsp/hcq/img/ico2.png"/>
		<img v-else width="16" src="BackJsp/hcq/img/ico1.png"/>
		<a :href="'Dimission/detail/'+d.dimissionid">{{d.theme}}</a></td>
		<td>{{d.dimissionname}}&nbsp;</td>
		<td>{{d.part}}</td>
		<td>{{d.post}}</td>
		<td>{{d.applydate}}</td>
		<td>{{d.dimissiondate}}</td>
    </tr>
	<tr>
</table>
<input id="aa" style="display:none"  value="${detail.dependence}"/>
<input id="bb" style="display:none"  value="${detail.position}"/>
<br/>
<!-- 分页 -->
<span  style="margin-left:100px"><a @click="execute(1)" class="button1 button1L" title="首页" href="javascript:void(0);">首页</a><a @click="execute(pageInfo.pageNum-1)" class="button1 button1M" title="上页" href="javascript:void(0);">上一页</a><span class="button1M">共有 {{pageInfo.total}} 条记录，第 {{pageInfo.pageNum}}/{{pageInfo.pages}} 页</span><a @click="execute(pageInfo.pageNum+1)" class="button1 button1M" title="下页" href="javascript:void(0);">下一页</a><a @click="execute(pageInfo.pages)"class="button1 button1R" title="尾页" href="javascript:void(0);">尾页</a></span>
</span></div>
</body></html>
<script src="BackJsp/hcq/js/Vue.js"></script>
<script src="BackJsp/hcq/js/vue-resource.min.js"></script>
<script src="../../assets/js/jquery-2.0.3.min.js"></script>
<script>
     $(function(){
   //封装全部检索                
    var dept=$("#aa").val(); 
    var post=$("#bb").val();  
		  var page=new Vue({
		    el :'#app',
		    data:{
		      datas:null,
		      pageInfo:null,
		      tactics:0//0:招聘 1:入职  2:转正   3:岗位调动    4:离职
		    },
		    methods:{
		        execute:function(PageNumber){
		          var status="填单";
		           if(dept=="人事部"&&post!="人事主管"){dept=null,status="人事处理"}
	               if(dept=="总经办"){status="领导审批"}
	               if(post=="超级管理员"){status=null};
		           var url="";
		           //招聘申请审批
		           if(this.tactics==0){url="Recruit/queryByCriteria"
			           this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                })};
		             //入职申请审批
		           if(this.tactics==1){url="entry/queryBycriteria"
		               this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                })};
	                //转正申请
		           if(this.tactics==2){url="Official/queryBycriteria"
		             this.$http.post(url,{pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                })};
	                //岗位调动
		           if(this.tactics==3){url="Transfer/queryBycriteria"
		               if(post=="超级管理员"){dept=null};
		               this.$http.post(url,{oldpart:dept,pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		               this.pageInfo=res.body
		               this.datas=res.body.list;
	                  }
	                 )};
		           if(this.tactics==4){url="Dimission/queryBycriteria"
		              this.$http.post(url,{oldpart:dept,pageNum:PageNumber,status:status},{emulateJSON:true}).then(function(res){
		              this.pageInfo=res.body
		              this.datas=res.body.list;
	                })};
		     }
		     }
		})
		//封装数据量及条件检索
		var dataCount=new Vue({
		    el:"#dataCount",
		    data:{
		       recruit:0,//全部数量
		       entry:0,//在职员工数量
		       office:0,
		       transfer:0,
		       dimission:0
		    },methods:{
		      getAll:function(){//检索数据量
		          var url="Recruit/getCount";
		          this.$http.post(url).then(function(res){
		              var array=res.body; 
		               this.recruit=array[0];
		               this.entry=array[1];
		               this.office=array[2];
		               this.transfer=array[3];
		               this.dimission=array[4];
		          })
		       },criteria:function(cri,event){//条件查询
		        post=$("#bb").val();
		        dept=$("#aa").val();  
		           page.tactics=cri;
		           target=event.currentTarget;
		           removeClass();
		           $(target).css("color","#000")
		           page.execute(1)
		       }
		    }
		})
		function removeClass(){
		  $(".a").css("color","");
		}
		//调用检索
        page.execute(1);//检索数据
        dataCount.getAll();//检索数据量
     
     
     
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