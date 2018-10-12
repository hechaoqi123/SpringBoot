<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'look.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <link rel="stylesheet" href="../css/view.css">
   <link rel="stylesheet" href="../css/font-awesome.min.css">
  
  <body>
   <table style="min-width:980px;width:100%;height:10%" cellpadding="0" cellspacing="0" boder="0">
     <tbody>
     <tr>
     <td id="collonContent" style="width:82%;background-color:white;" >
      <table cellpadding="0" cellspacing="0" boder="0">
      <tbody>
        <tr>
        <td>
         <h1 style="display:inline;font-size:25px;line-height:1.0;">
          <img style="cursor:pointer;vertical-align:middle;" src="img/menu.png"/>                     
                             公司门户 
         </h1>
        </td>
       <td align="right">
      <div>
        <a style="border:1px,solid,#bbf" title="后退" href="javaScript:windowClose();">
         <img  style="margin-left:10px;padding-left:6px;"src="../img/pn.png">
        </a>
   
        <a style="border:1px,solid,#bbf" title="刷新" href="javaScript:location.reload();">
           <img style="margin-right:10px;padding-right:6px;" src="../img/pg.png">
        </a>
         <script language="javaScript">workflowList(0);</script>
           </div>
        </td>
        </tr>
      </tbody>
     </table>
     <br>
       <a style="display:inline-block;width:31%;vertical-align:top;border:1px solid #3cbc3c;margin-right:15px;"><img border="0" style="width:100%;" src="../img/customerBeko.jpg"><div style="padding:2px 5px;background-color:#3cbc3c;color:white;">Colloa成功签约倍科电器，助力世界500强</div></a> 
    <a style="display:inline-block;width:31%;vertical-align:top;border:1px solid #3cbc3c;margin-right:15px;"><img border="0" style="width:100%;" src="../img/012.png"><div style="padding:2px 5px;background-color:#3cbc3c;color:white;">Colloa系统陪伴《省老年体协会》5个年头</div></a> 
    <a style="display:inline-block;width:31%;vertical-align:top;border:1px solid #3cbc3c;margin-right:15px;"><img border="0" style="width:100%;" src="../img/file01.jpg"><div style="padding:2px 5px;background-color:#3cbc3c;color:white;">公司人事部人事管理制度</div></a> 
     <br>
     <br>
 <div style="display:inline-block;width:45%;vertical-align:top;">
    <br>
   <div style="border-bottom:1px solid #ddd;padding-bottom:5px;margin-bottom:5px;"><img src="../img/star1.gif"> <b class="textBig">新闻资讯 News</b><a style="margin-left:37%" href="javascript:windowOpen('catalogue.aspx?sid=151100&amp;name=%u516C%u544A%u7BA1%u7406&amp;ex.stype=10000&amp;ex.sid=151010')">› More</a></div>
    <table cellpadding="0" cellspacing="3" border="0"><tbody>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000458');">德旭投资集团BPM系统及微信管理平台实施完成</a></td><td style="color:#999">2016/4/12</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000356');">南通工商局BPM系统建设：Colloa典型客户</a></td><td style="color:#999">2016/4/11</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000153');">二进制助力四川宜宾63***部队全面信息化管理</a></td><td style="color:#999">2016/4/7</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000146');">BPM替换案例：二进制携手中兴恒业</a></td><td style="color:#999">2016/4/7</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000133');">北斗卫星研究院BPM系统升级替换典型案例</a></td><td style="color:#999">2016/4/7</td></tr>
     </tbody></table>
     <br>
     <div style="border-bottom:1px solid #ddd;padding-bottom:5px;margin-bottom:5px;"><img src="../img/star2.gif"> <b class="textBig">通知公告 Notice</b><a style="margin-left:37%" href="javascript:windowOpen('catalogue.aspx?sid=151100&amp;name=%u516C%u544A%u7BA1%u7406&amp;ex.stype=10000&amp;ex.sid=151020')">› More</a></div>
     <table cellpadding="0" cellspacing="3" border="0"><tbody>
      <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000161');">关于召开BPM启用准备会议的通知</a></td><td style="color:#999">2016/4/7</td></tr>
      <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000160');">2016年五一劳动节放假通知</a></td><td style="color:#999">2016/4/7</td></tr>
      <tr><td><img src="../img/cl.jpg"></i><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000142');">2016年MBA企业管理培训会会议通知</a></td><td style="color:#999">2016/4/7</td></tr>
      <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000137');">关于十周年庆典活动的方案和安排</a></td><td style="color:#999">2016/4/7</td></tr>
      <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000120');">实施常州市烟草局管理综合平台项目加班通知</a></td><td style="color:#999">2016/4/7</td></tr>
    </tbody></table>
    <br>
     <div style="border-bottom:1px solid #ddd;padding-bottom:5px;margin-bottom:5px;"><img src="../img/star3.gif"> <b class="textBig">行业动态 Status</b><a style="margin-left:37%" href="javascript:windowOpen('catalogue.aspx?sid=151100&amp;name=%u516C%u544A%u7BA1%u7406&amp;ex.stype=10000&amp;ex.sid=151040')">› More</a></div>
    <table cellpadding="0" cellspacing="3" border="0"><tbody>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000390');">Colloa系统陪伴《省老年体协》5个年头</a></td><td style="color:#999">2016/4/11</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000155');">Colloa运营平台的流程管理有多灵活</a></td><td style="color:#999">2016/4/7</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000151');">如何选择企业自身的BPM需求？</a></td><td style="color:#999">2016/4/7</td></tr>
   <tr> <td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000141');">BPM系统：易用的才是最好的</a></td><td style="color:#999">2016/4/7</td></tr>
    <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000136');">BPM运营平台助企业打造全面运营管理</a></td><td style="color:#999">2016/4/7</td></tr>
   </tbody></table>
    </div>
    <div style="display:inline-block;width:5%"></div>
   <div style="display:inline-block;width:45%;vertical-align:top;">
   <br>
  <div style="border-bottom:1px solid #ddd;padding-bottom:5px;margin-bottom:5px;"><img src="../img/star4.gif"> <b class="textBig">规章制度 Rules</b><a style="margin-left:37%" href="javascript:windowOpen('catalogue.aspx?sid=151100&amp;name=%u516C%u544A%u7BA1%u7406&amp;ex.stype=10000&amp;ex.sid=151030')">› More</a></div>
  <table cellpadding="0" cellspacing="3" border="0"><tbody>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000460');">资产管理制度（2016.3修订版）</a></td><td style="color:#999">2016/4/12</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000150');">公司公务用车管理办法</a></td><td style="color:#999">2016/4/7</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000143');">公司财务管理制度</a></td><td style="color:#999">2016/4/7</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000127');">2016年公司最新管理制度 </a></td><td style="color:#999">2016/4/7</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=151100&amp;name=%u516C%u544A&amp;objects=1000126');">办公室行政管理制度</a></td><td style="color:#999">2016/4/7</td></tr>
  </tbody></table>
  <br>
  <div style="border-bottom:1px solid #ddd;padding-bottom:5px;margin-bottom:5px;"><img src="../img/star5.gif"> <b class="textBig">员工入职 Welcome</b></div>
  <table cellpadding="0" cellspacing="3" border="0"><tbody>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000133');">热烈欢迎税务部王中磊加入我们 !</a></td><td style="color:#999">2017/1/2</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000134');">热烈欢迎咨询部赵媛媛加入我们 !</a></td><td style="color:#999">2016/6/15</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000076');">热烈欢迎财务部陈有道加入我们 !</a></td><td style="color:#999">2016/4/1</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000099');">热烈欢迎技术部王美丽加入我们 !</a></td><td style="color:#999">2016/3/7</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000088');">热烈欢迎采购部何以书加入我们 !</a></td><td style="color:#999">2016/3/3</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000060');">热烈欢迎总经办朱铁桥加入我们 !</a></td><td style="color:#999">2016/2/16</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000068');">热烈欢迎人事部王萍加入我们 !</a></td><td style="color:#999">2016/2/4</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000125');">热烈欢迎现代事务所李静加入我们 !</a></td><td style="color:#999">2016/1/1</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000139');">热烈欢迎售后部朱红加入我们 !</a></td><td style="color:#999">2016/1/1</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000093');">热烈欢迎售后部王霞美加入我们 !</a></td><td style="color:#999">2015/9/10</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000047');">热烈欢迎杭州机构张传栋加入我们 !</a></td><td style="color:#999">2015/8/12</td></tr>
  <tr><td><img src="../img/cl.jpg"><img border="0" src="../img/priority0.gif"><a href="javascript:windowOpen('item.aspx?catalogue=702000&amp;name=%u5458%u5DE5&amp;objects=1000082');">热烈欢迎工程部李白军加入我们 !</a></td><td style="color:#999">2015/8/7</td></tr>
   </tbody></table>
  </div>        
  </td>
    
     
     </tr>
</tbody>
   </table>
  </body>
</html>
<script type="text/javascript">



</script>
