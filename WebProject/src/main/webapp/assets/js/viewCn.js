/*----------------------------------------------
版权所有@2017，南京二进制软件有限公司。保留所有权利。
----------------------------------------------*/

var _sLang = "cn";
var _sCkeditorLang = "zh-cn";

var translate = {
empty : "(空)",
deleteX : "删除",
send : "发送",
remove : "移除",
copy : "复制",
paste : "粘贴",
okAll : "全部确定",
ok : "确定",
cancel : "取消",
quit : "退出",
save : "保存",
saveAndQuit : "保存并退出",
saveDraft : "保存",
withdraw : "撤除",
printForm : "打印表单",
forwardTo : "转发给",
rejectTo : "回退至",
upload : "上传",
download : "下载",
preview : "预览",
ieOnly : "请使用 Internet Explorer 浏览器，以获得正确的结果",
today : "今天",
nothing: "无",
areYouSure : "确定吗？",
closeAfterPrint : "打印完成，现在要关闭页面吗？",
uploading : "正在上传... 请稍候，不要关闭当前窗口",
pasteFromDoc : "确定要粘贴吗？请首先复制其他附件或者文档，然后在此粘贴",
noFile : "没有文件",
fileOnlyWithType: "只能允许下列类型的文件：",
inputRequired : "请输入正确的值，或者从下拉框中选择",
inputRequiredWithout : "请输入正确的值并且不能包含字符：",
promptRequiredWithout : "请输入要筛选的值并且不能包含字符：",
numberRequired : "请输入正确的数字值",
amountRequired : "请输入正确的金额，小数点后保留两位",
dateRequired : "请输入正确的日期或时间，格式为 yyyy/MM/dd hh:mm:ss",
uniqueRequired : "在相关数据集中已经存在一条重复的记录，请重新输入",
existRequired : "在相关数据集中找不到对应的记录，请重新输入",
quotationForbidden : "请不要输入单引号或双引号",
selectionRequired : "没有选择任何记录。请首先选择记录",
selectionOverflowed : "选择的记录数不能超过 ",
pageNotSaved : "页面上的数据可能没有被保存",
taskSender : "事务发起人",
lastProcResponsor : "前一步骤责任人",
lastProcResponsorSupervisor : "前一步骤责任人的上级主管",
lastProcResponsorDivisionOnly : "限制在前一步骤责任人所在的组织机构中",
defaultAllSelected : "默认为全部选中",
yourself : "您自己",
yourSupervisor : "您的上级主管",
responsor : "责任人",
participants : "参与人",
participateMode : "处理方式",
participateModeList : "<input checked type=radio name=oStep value='会签,'>会签,<input type=radio name=oStep value='会办,'>会办,<input type=radio name=oStep value='主办,'>主办,<input type=radio name=oStep value='协办,'>协办,<input type=radio name=oStep value='审阅,'>审阅,<input type=radio name=oStep value='参阅,'>参阅,<input type=radio name=oStep value='评审,'>评审,<input type=radio name=oStep value='执行,'>执行,<br><input type=checkbox id=oMode>处理后就从待处理事务队列中移出",
setTaskProcessed : "设置本事务为已处理（从我的待处理事务队列中移出）",
fieldEditableOfResponsor : "责任人可写字段",
fieldEditableOfParticipants : "参与人可写字段",
eventHandle : "事件处理",
flowRight : "高级设置",
condition : "条件",
userRoles : "用户身份",
belongTo : "属于",
allowPrintForm : "允许打印表单",
allowForward : "允许将事务转发给其他人",
allowReject : "允许将事务回退至以前步骤",
fixedResponsor : "固定责任人和参与人(不在运行时进行选择)",
select : "请选择",
selectNextResponsor : "请选择后续处理的责任人",
selectNextParticipants : "请选择后续处理的参与人",
inputComments : "请输入注释、评论或意见",
selectAllOrNone : "全选/全不选",
sendByEnter : "按回车键时发送",
messageHistory : "历史消息",
noChart : "不显示图形",
barChart : "显示柱状图",
pieChart : "显示饼状图",
symbolFilter : "请输入 < 或者 = 或者 ＞ 符号作为第一个字符，并输入正确的日期值或者数字值，以便于进行筛选。譬如 <2015/1/1 、>1000 ",
notAllowedForTrail : "在当前体验系统中不能进行此种操作，请点击页面上的 取消 或者 退出 按钮。如有需要，请申请开通专门的试用系统"
}

function $translate(s, v) {
if(s=="total record(s)") return "共有 "+v+" 条记录，";
if(s=="current page") return "第 "+v+" 页";
if(s=="first page") return "首页";
if(s=="previous page") return "上页";
if(s=="next page") return "下页";
if(s=="last page") return "尾页";
if(s=="back") return "后退";
if(s=="refresh") return "刷新";
if(s=="close") return "关闭";
if(s=="invalid validation code") return "错误的验证码或者验证码已经失效";
if(s=="operation finished") return "操作完成。可以刷新相关的页面，查看最新的结果";
if(s=="invalid request") return "操作无效。可能参数不正确，或者记录已经被处理。要查看最新的结果，请刷新相关的页面";
if(s=="invalid recordset") return "记录不存在或者状态不正确，或者您没有权限访问。可能已经被其他人处理过";
if(s=="continue next?") return "操作完成。继续吗？";
if(s=="please delete its children firstly") return "该记录还有子记录，不能被删除。请首先删除它的子记录";
if(s=="too many active contexts") return "您打开了较多的活动窗口。请关闭其中一些，然后再试";
if(s=="no right") return "没有权限。请首先获得授权，然后刷新相关的页面，或者重新登录系统";
if(s=="invalid catalogue of item") return "没有定义模块的单记录视图";
if(s=="invalid input that may cause deadloop") return "输入错误，可能导致死循环";
if(s=="invalid login name or password") return "用户名不存在或者口令错误";
if(s=="invalid session") return "会话无效，可能已经注销或者超时。请重新登录系统";
if(s=="too many sessions") return "登录系统的用户太多了，请稍后再试";
if(s=="too many users") return "注册或有效用户太多了，超过了系统许可证的范围";
if(s=="invalid old password") return "旧口令不正确";
if(s=="record(s) processed") return "个记录被处理";
if(s=="record(s) will be pasted now") return "个记录将要被粘贴。确定吗？";
if(s=="record(s) copied to clipboard") return "个记录被复制到剪贴板中";
if(s=="record being used") return "记录是系统内置的或者正在被使用，不能够进行此种操作";
if(s=="operation not allowed") return "不能在当前位置进行此种操作。请选择其他位置或某个分类后再试";
if(s=="resource locked") return "资源被锁定，可能有其他用户正在进行类似的操作";
if(s=="starting workflow test ...") return "正在启动业务流程仿真测试 ...";
if(s=="ckeditor overflowed") return "在线编辑器中的字符数（含格式部分）达到 "+v+"bytes，超出了 512000bytes 的缓存限制，请减少输入的内容。\n如果有可能，也可以采用上传附件的方式";
if(s=="not allowed to delete") return "记录不可以被删除。可能被其它模块所创建，或者与其它记录相关联";
if(s=="wordEditorActions") return "<div style='font-size:12px;padding:15px;'>第一次打开本页面时，请 <a style='text-decoration:none;' href='../addon/webOffice.exe'>点击此处</a> 下载一个插件并安装，然后使用 IE 浏览器操作并允许插件运行。<br>如果 Word 在线编辑器没有显示，请刷新一下本页面。<br>在本页面关闭前，请不要关闭父页面。<br><br><input type=button style='font-size:12px;width:100%;' onclick=\"onAction(1,'父页面已经被关闭，不能保存。','保存成功。在关闭本页面后，请记得保存或提交父页面。','保存成功。');\" value='保存'><br><input type=button style='font-size:12px;width:100%;' onclick='onAction(0);' value='退出'>"+(v.indexOf("form2word")>=0?"<br><br><INPUT style='font-size:12px;width:100%;' onclick='$form2word();' value='从表单生成' type=button>":"")+(v.indexOf("revision")>=0?"<br><br><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.TrackRevisions=true;webOffice1.focus();' value='开始修订' type=button><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.ShowRevisions=true;webOffice1.focus();' value='显示修订' type=button><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.ShowRevisions=false;webOffice1.focus();' value='隐藏修订' type=button><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.AcceptAllRevisions();webOffice1.focus();' value=接受修订 type=button>":"")+"</div>";
return s;
}

var WTFLang = {
ieOnly : "请使用 Internet Explorer 浏览器，以获得正确的结果",
FontSongti		: "宋体",
CopyProcSelected	: "复制选中步骤",
DeleteProcSelected	: "删除选中对象",
ShapeOval		: "圆形",
ShapeRect		: "方形",
ShapeRoundRect		: "圆角形",
ShapeDiamond		: "菱形",
ShapeLine		: "直线",
ShapePolyLine		: "折线",
AddNew			: "新建",
AdjustObjectForTop	: "对象上边界超出，将自动调整.",
AdjustObjectForLeft	: "对象左边界超出，将自动调整.",
SNo			: "编号",
Existed			: "已经存在！",
ProcStart		: "开始",
ProcEnd			: "结束",
ProcLimited		: "最多不允许超过50个步骤！",
ProcChildFlow		: "子流程",
ProcFirstFlow		: "第一个步骤",
ProcMiddleFlow		: "中间步骤",
ProcStartFlow		: "开始步骤",
ProcEndFlow		: "结束步骤",
ProcFromFlow		: "起点步骤",
ProcToFlow		: "终点步骤",
StepInNeed		: " 必须有输入路径",
StepOutNeed		: " 必须有输出路径",
NoDeleteOnStartEnd	: "不能删除！一个流程图中，开始与结束步骤是必需的",
NoDeleteOnStartStep	: "不能删除！一个流程图中，流程开始路径是必需的",
ConfirmToDelete		: "确定要删除",
ReInputAsExisted	: "已经存在！ 请重新输入！",
No2StartProc		: "一个流程里面不允许存在两个开始步骤",
FlowStart		: "流程开始",
AvoidDuplicatedStep	: "已经有一个路径，请更改！",
AvoidDuplicatedStep2	: "已经有一个路径，操作不成功.",
NeedPolyLineOn1Proc	: "起点与终点步骤相同的[路径]只能使用折角线，请先恢复原起点并更改形状！",
NoPointSelf		: "不能指向本身！",
Name			: "名称",
NameEmpty		: "[名称]不能为空或包含空字符！",
TextSize		: "文本大小",
TextSizeRule		: "[文本大小]请输入1-2位数字，并在最后加上px或pt！",
ProcType		: "步骤类型",
Responsor		: "责任人",
Participants		: "参与人",
Observer		: "监控人",
FlowRight		: "高级设置",
FieldRight		: "字段权限",
EventHandle		: "事件处理",
PropX			: "X轴坐标",
PropY			: "Y轴坐标",
PropXRule		: "[X轴坐标]请输入1-4位数字！",
PropYRule		: "[Y轴坐标]请输入1-4位数字！",
PropWidth		: "图形宽度",
PropWidthRule		: "[图形宽度]请输入1-4位数字！",
PropHeight		: "图形高度",
PropHeightRule		: "[图形高度]请输入1-4位数字！",
Shape			: "形状",
Condition		: "条件",
ArrowStart		: "起始箭头",
ArrowEnd		: "终止箭头",
ArrowNone		: "无",
ArrowClassic		: "典型",
ArrowBlock		: "实心",
ArrowDiamond		: "钻石",
ArrowOval		: "圆点",
ArrowOpen		: "小箭头",
LineSize		: "线条粗细",
LineSizeRule		: "[线条粗细]请输入1位数字！",
PropZ			: "Z轴",
PropZRule		: "[Z轴]请输入1-3位数字！",
NoUndoLog		: "没有操作记录可以撤消.",
NoRedoLog		: "没有操作记录可以恢复.",
StepFromToRule		: "路径必须符合“起点不能是结束步骤，终点不能是开始步骤”的规则！",
StepFirstRule		: "开始路径不允许手动联线！",
StepDoHelp		: "起点或终点不是[步骤]，请在[步骤]图形上按住鼠标并拖动到另一[步骤]图形上松开.",
ClickToOpenPanel	: "单击展开工具栏",
ClickToClosePanel	: "单击收缩工具栏",
PanelOverTop		: "工具栏上边界超出，将自动调整.",
DbClickOrDragOnPanel	: "双击可以展开/收缩工具栏，按住左键移动位置.",
NoObjectSelected	: "当前没有选中对象！用鼠标单击流程图上的对象可以选中它",
FlowValidated		: "校验完成，这是一个合法的流程图！",
FlowValidatedError	: "当前有效性检查有误",
AskToSave		: "是否要继续保存？",
AskToQuit		: "现在要退出吗？",
FlowSaveOK		: "保存成功！",
FlowSaveError		: "保存失败！可能有相关的事务正在运行！",
ProcCopiedOnly		: "只有步骤可以复制！",
ProcCopiedConfirm	: "确定要复制步骤",
Hide			: "隐藏",
Display			: "显示",
PanelBox		: "工具箱",
PropertyBox		: "属性箱",
ObjectView		: "对象视图",
DataView		: "数据视图",
Property		: "属性",
ValidateFlow		: "校验流程图",
SaveFlow		: "保存流程图",
DeleteObjectSelected	: "删除选中对象 Del",
Undo			: "撤消操作 Ctrl+Z",
Redo			: "恢复操作 Ctrl+Y",
SelectObjectPrompt	: "选择对象\n\n1.单击本按钮\n2.在工作区(画布)上单击[步骤]或[路径]的图形",
AddProcPrompt		: "新增[步骤](方形)\n\n1.单击本按钮\n2.在工作区(画布)上空白位置按住左键\n3.拉动鼠标\n4.松开鼠标左键",
AddStepPrompt		: "新增[路径](折角线)\n\n1.单击本按钮\n2.在[步骤]图形(起点)上按住鼠标左键\n3.拉动鼠标至某[步骤]图形(终点)中间位置\n4.松开鼠标左键",
DlgAboutInfo		: "要获得更多信息请访问 http://www.colloa.com"
}

function $form2word() {
  var ele, fds = webOffice1.ActiveDocument.FormFields;
  for(var i=1; i<fds.Count; i++) {
    ele = opener.document.getElementById("e."+fds.Item(i).Name);
    if(!ele) ele = opener.document.getElementById(fds.Item(i).Name);
    if(ele) {
      if(ele.tagName == "INPUT") {
        if(ele.type=="radio" || ele.type=="checkbox") fds.Item(i).CheckBox.Value = ele.checked;
        else fds.Item(i).Result = ele.value;
      }
      else fds.Item(i).Result = ele.innerHTML;
    }
  }
	var obj_selection = webOffice1.ActiveDocument.Application.Selection;
	var obj_tables = webOffice1.ActiveDocument.Tables;
	var obj_range = obj_selection.Range;
	var sStaticStr = "colloa_table2word_";
	var obj_tbl;
	var nMaxTables=4;
	for(var i=1;i<nMaxTables;i++)
	{
		var range_flg=webOffice1.ActiveDocument.Content;
		var sId="[!"+sStaticStr+i+"]";
		if(range_flg.Find.Execute(sId) && opener.document.getElementById(sStaticStr+i)){
			obj_range.SetRange(range_flg.End-sId.length,range_flg.End);
			var aTRs = opener.document.getElementById(sStaticStr+i).getElementsByTagName('TR');
			obj_tbl = obj_tables.Add(obj_range, aTRs.length, aTRs.item(0).cells.length);
			with(obj_tbl) {
				if(style != "网格型") style = "网格型";
				ApplyStyleHeadingRows = true;
				ApplyStyleLastRow = true;
				ApplyStyleFirstColumn = true;
				ApplyStyleLastColumn = true;
				Range.ParagraphFormat.Alignment = 1;
			}
			for(var j=1;j<=aTRs.length; j++) {
				for(var k=1;k<=aTRs.item(0).cells.length;k++){
					obj_tbl.Cell(j,k).Range.InsertAfter(aTRs[j-1].childNodes[k-1].innerText);
				}
			}
		}
	}
	alert("操作完成");
}