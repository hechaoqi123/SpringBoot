/*----------------------------------------------
��Ȩ����@2017���Ͼ�������������޹�˾����������Ȩ����
----------------------------------------------*/

var _sLang = "cn";
var _sCkeditorLang = "zh-cn";

var translate = {
empty : "(��)",
deleteX : "ɾ��",
send : "����",
remove : "�Ƴ�",
copy : "����",
paste : "ճ��",
okAll : "ȫ��ȷ��",
ok : "ȷ��",
cancel : "ȡ��",
quit : "�˳�",
save : "����",
saveAndQuit : "���沢�˳�",
saveDraft : "����",
withdraw : "����",
printForm : "��ӡ��",
forwardTo : "ת����",
rejectTo : "������",
upload : "�ϴ�",
download : "����",
preview : "Ԥ��",
ieOnly : "��ʹ�� Internet Explorer ��������Ի����ȷ�Ľ��",
today : "����",
nothing: "��",
areYouSure : "ȷ����",
closeAfterPrint : "��ӡ��ɣ�����Ҫ�ر�ҳ����",
uploading : "�����ϴ�... ���Ժ򣬲�Ҫ�رյ�ǰ����",
pasteFromDoc : "ȷ��Ҫճ���������ȸ����������������ĵ���Ȼ���ڴ�ճ��",
noFile : "û���ļ�",
fileOnlyWithType: "ֻ�������������͵��ļ���",
inputRequired : "��������ȷ��ֵ�����ߴ���������ѡ��",
inputRequiredWithout : "��������ȷ��ֵ���Ҳ��ܰ����ַ���",
promptRequiredWithout : "������Ҫɸѡ��ֵ���Ҳ��ܰ����ַ���",
numberRequired : "��������ȷ������ֵ",
amountRequired : "��������ȷ�Ľ�С���������λ",
dateRequired : "��������ȷ�����ڻ�ʱ�䣬��ʽΪ yyyy/MM/dd hh:mm:ss",
uniqueRequired : "��������ݼ����Ѿ�����һ���ظ��ļ�¼������������",
existRequired : "��������ݼ����Ҳ�����Ӧ�ļ�¼������������",
quotationForbidden : "�벻Ҫ���뵥���Ż�˫����",
selectionRequired : "û��ѡ���κμ�¼��������ѡ���¼",
selectionOverflowed : "ѡ��ļ�¼�����ܳ��� ",
pageNotSaved : "ҳ���ϵ����ݿ���û�б�����",
taskSender : "��������",
lastProcResponsor : "ǰһ����������",
lastProcResponsorSupervisor : "ǰһ���������˵��ϼ�����",
lastProcResponsorDivisionOnly : "������ǰһ�������������ڵ���֯������",
defaultAllSelected : "Ĭ��Ϊȫ��ѡ��",
yourself : "���Լ�",
yourSupervisor : "�����ϼ�����",
responsor : "������",
participants : "������",
participateMode : "����ʽ",
participateModeList : "<input checked type=radio name=oStep value='��ǩ,'>��ǩ,<input type=radio name=oStep value='���,'>���,<input type=radio name=oStep value='����,'>����,<input type=radio name=oStep value='Э��,'>Э��,<input type=radio name=oStep value='����,'>����,<input type=radio name=oStep value='����,'>����,<input type=radio name=oStep value='����,'>����,<input type=radio name=oStep value='ִ��,'>ִ��,<br><input type=checkbox id=oMode>�����ʹӴ���������������Ƴ�",
setTaskProcessed : "���ñ�����Ϊ�Ѵ������ҵĴ���������������Ƴ���",
fieldEditableOfResponsor : "�����˿�д�ֶ�",
fieldEditableOfParticipants : "�����˿�д�ֶ�",
eventHandle : "�¼�����",
flowRight : "�߼�����",
condition : "����",
userRoles : "�û����",
belongTo : "����",
allowPrintForm : "�����ӡ��",
allowForward : "��������ת����������",
allowReject : "���������������ǰ����",
fixedResponsor : "�̶������˺Ͳ�����(��������ʱ����ѡ��)",
select : "��ѡ��",
selectNextResponsor : "��ѡ����������������",
selectNextParticipants : "��ѡ���������Ĳ�����",
inputComments : "������ע�͡����ۻ����",
selectAllOrNone : "ȫѡ/ȫ��ѡ",
sendByEnter : "���س���ʱ����",
messageHistory : "��ʷ��Ϣ",
noChart : "����ʾͼ��",
barChart : "��ʾ��״ͼ",
pieChart : "��ʾ��״ͼ",
symbolFilter : "������ < ���� = ���� �� ������Ϊ��һ���ַ�����������ȷ������ֵ��������ֵ���Ա��ڽ���ɸѡ��Ʃ�� <2015/1/1 ��>1000 ",
notAllowedForTrail : "�ڵ�ǰ����ϵͳ�в��ܽ��д��ֲ���������ҳ���ϵ� ȡ�� ���� �˳� ��ť��������Ҫ�������뿪ͨר�ŵ�����ϵͳ"
}

function $translate(s, v) {
if(s=="total record(s)") return "���� "+v+" ����¼��";
if(s=="current page") return "�� "+v+" ҳ";
if(s=="first page") return "��ҳ";
if(s=="previous page") return "��ҳ";
if(s=="next page") return "��ҳ";
if(s=="last page") return "βҳ";
if(s=="back") return "����";
if(s=="refresh") return "ˢ��";
if(s=="close") return "�ر�";
if(s=="invalid validation code") return "�������֤�������֤���Ѿ�ʧЧ";
if(s=="operation finished") return "������ɡ�����ˢ����ص�ҳ�棬�鿴���µĽ��";
if(s=="invalid request") return "������Ч�����ܲ�������ȷ�����߼�¼�Ѿ�������Ҫ�鿴���µĽ������ˢ����ص�ҳ��";
if(s=="invalid recordset") return "��¼�����ڻ���״̬����ȷ��������û��Ȩ�޷��ʡ������Ѿ��������˴����";
if(s=="continue next?") return "������ɡ�������";
if(s=="please delete its children firstly") return "�ü�¼�����Ӽ�¼�����ܱ�ɾ����������ɾ�������Ӽ�¼";
if(s=="too many active contexts") return "�����˽϶�Ļ���ڡ���ر�����һЩ��Ȼ������";
if(s=="no right") return "û��Ȩ�ޡ������Ȼ����Ȩ��Ȼ��ˢ����ص�ҳ�棬�������µ�¼ϵͳ";
if(s=="invalid catalogue of item") return "û�ж���ģ��ĵ���¼��ͼ";
if(s=="invalid input that may cause deadloop") return "������󣬿��ܵ�����ѭ��";
if(s=="invalid login name or password") return "�û��������ڻ��߿������";
if(s=="invalid session") return "�Ự��Ч�������Ѿ�ע�����߳�ʱ�������µ�¼ϵͳ";
if(s=="too many sessions") return "��¼ϵͳ���û�̫���ˣ����Ժ�����";
if(s=="too many users") return "ע�����Ч�û�̫���ˣ�������ϵͳ���֤�ķ�Χ";
if(s=="invalid old password") return "�ɿ����ȷ";
if(s=="record(s) processed") return "����¼������";
if(s=="record(s) will be pasted now") return "����¼��Ҫ��ճ����ȷ����";
if(s=="record(s) copied to clipboard") return "����¼�����Ƶ���������";
if(s=="record being used") return "��¼��ϵͳ���õĻ������ڱ�ʹ�ã����ܹ����д��ֲ���";
if(s=="operation not allowed") return "�����ڵ�ǰλ�ý��д��ֲ�������ѡ������λ�û�ĳ�����������";
if(s=="resource locked") return "��Դ�������������������û����ڽ������ƵĲ���";
if(s=="starting workflow test ...") return "��������ҵ�����̷������ ...";
if(s=="ckeditor overflowed") return "���߱༭���е��ַ���������ʽ���֣��ﵽ "+v+"bytes�������� 512000bytes �Ļ������ƣ��������������ݡ�\n����п��ܣ�Ҳ���Բ����ϴ������ķ�ʽ";
if(s=="not allowed to delete") return "��¼�����Ա�ɾ�������ܱ�����ģ����������������������¼�����";
if(s=="wordEditorActions") return "<div style='font-size:12px;padding:15px;'>��һ�δ򿪱�ҳ��ʱ���� <a style='text-decoration:none;' href='../addon/webOffice.exe'>����˴�</a> ����һ���������װ��Ȼ��ʹ�� IE ��������������������С�<br>��� Word ���߱༭��û����ʾ����ˢ��һ�±�ҳ�档<br>�ڱ�ҳ��ر�ǰ���벻Ҫ�رո�ҳ�档<br><br><input type=button style='font-size:12px;width:100%;' onclick=\"onAction(1,'��ҳ���Ѿ����رգ����ܱ��档','����ɹ����ڹرձ�ҳ�����ǵñ�����ύ��ҳ�档','����ɹ���');\" value='����'><br><input type=button style='font-size:12px;width:100%;' onclick='onAction(0);' value='�˳�'>"+(v.indexOf("form2word")>=0?"<br><br><INPUT style='font-size:12px;width:100%;' onclick='$form2word();' value='�ӱ�����' type=button>":"")+(v.indexOf("revision")>=0?"<br><br><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.TrackRevisions=true;webOffice1.focus();' value='��ʼ�޶�' type=button><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.ShowRevisions=true;webOffice1.focus();' value='��ʾ�޶�' type=button><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.ShowRevisions=false;webOffice1.focus();' value='�����޶�' type=button><INPUT style='font-size:12px;width:100%;' onclick='webOffice1.ActiveDocument.AcceptAllRevisions();webOffice1.focus();' value=�����޶� type=button>":"")+"</div>";
return s;
}

var WTFLang = {
ieOnly : "��ʹ�� Internet Explorer ��������Ի����ȷ�Ľ��",
FontSongti		: "����",
CopyProcSelected	: "����ѡ�в���",
DeleteProcSelected	: "ɾ��ѡ�ж���",
ShapeOval		: "Բ��",
ShapeRect		: "����",
ShapeRoundRect		: "Բ����",
ShapeDiamond		: "����",
ShapeLine		: "ֱ��",
ShapePolyLine		: "����",
AddNew			: "�½�",
AdjustObjectForTop	: "�����ϱ߽糬�������Զ�����.",
AdjustObjectForLeft	: "������߽糬�������Զ�����.",
SNo			: "���",
Existed			: "�Ѿ����ڣ�",
ProcStart		: "��ʼ",
ProcEnd			: "����",
ProcLimited		: "��಻������50�����裡",
ProcChildFlow		: "������",
ProcFirstFlow		: "��һ������",
ProcMiddleFlow		: "�м䲽��",
ProcStartFlow		: "��ʼ����",
ProcEndFlow		: "��������",
ProcFromFlow		: "��㲽��",
ProcToFlow		: "�յ㲽��",
StepInNeed		: " ����������·��",
StepOutNeed		: " ���������·��",
NoDeleteOnStartEnd	: "����ɾ����һ������ͼ�У���ʼ����������Ǳ����",
NoDeleteOnStartStep	: "����ɾ����һ������ͼ�У����̿�ʼ·���Ǳ����",
ConfirmToDelete		: "ȷ��Ҫɾ��",
ReInputAsExisted	: "�Ѿ����ڣ� ���������룡",
No2StartProc		: "һ���������治�������������ʼ����",
FlowStart		: "���̿�ʼ",
AvoidDuplicatedStep	: "�Ѿ���һ��·��������ģ�",
AvoidDuplicatedStep2	: "�Ѿ���һ��·�����������ɹ�.",
NeedPolyLineOn1Proc	: "������յ㲽����ͬ��[·��]ֻ��ʹ���۽��ߣ����Ȼָ�ԭ��㲢������״��",
NoPointSelf		: "����ָ����",
Name			: "����",
NameEmpty		: "[����]����Ϊ�ջ�������ַ���",
TextSize		: "�ı���С",
TextSizeRule		: "[�ı���С]������1-2λ���֣�����������px��pt��",
ProcType		: "��������",
Responsor		: "������",
Participants		: "������",
Observer		: "�����",
FlowRight		: "�߼�����",
FieldRight		: "�ֶ�Ȩ��",
EventHandle		: "�¼�����",
PropX			: "X������",
PropY			: "Y������",
PropXRule		: "[X������]������1-4λ���֣�",
PropYRule		: "[Y������]������1-4λ���֣�",
PropWidth		: "ͼ�ο��",
PropWidthRule		: "[ͼ�ο��]������1-4λ���֣�",
PropHeight		: "ͼ�θ߶�",
PropHeightRule		: "[ͼ�θ߶�]������1-4λ���֣�",
Shape			: "��״",
Condition		: "����",
ArrowStart		: "��ʼ��ͷ",
ArrowEnd		: "��ֹ��ͷ",
ArrowNone		: "��",
ArrowClassic		: "����",
ArrowBlock		: "ʵ��",
ArrowDiamond		: "��ʯ",
ArrowOval		: "Բ��",
ArrowOpen		: "С��ͷ",
LineSize		: "������ϸ",
LineSizeRule		: "[������ϸ]������1λ���֣�",
PropZ			: "Z��",
PropZRule		: "[Z��]������1-3λ���֣�",
NoUndoLog		: "û�в�����¼���Գ���.",
NoRedoLog		: "û�в�����¼���Իָ�.",
StepFromToRule		: "·��������ϡ���㲻���ǽ������裬�յ㲻���ǿ�ʼ���衱�Ĺ���",
StepFirstRule		: "��ʼ·���������ֶ����ߣ�",
StepDoHelp		: "�����յ㲻��[����]������[����]ͼ���ϰ�ס��겢�϶�����һ[����]ͼ�����ɿ�.",
ClickToOpenPanel	: "����չ��������",
ClickToClosePanel	: "��������������",
PanelOverTop		: "�������ϱ߽糬�������Զ�����.",
DbClickOrDragOnPanel	: "˫������չ��/��������������ס����ƶ�λ��.",
NoObjectSelected	: "��ǰû��ѡ�ж�������굥������ͼ�ϵĶ������ѡ����",
FlowValidated		: "У����ɣ�����һ���Ϸ�������ͼ��",
FlowValidatedError	: "��ǰ��Ч�Լ������",
AskToSave		: "�Ƿ�Ҫ�������棿",
AskToQuit		: "����Ҫ�˳���",
FlowSaveOK		: "����ɹ���",
FlowSaveError		: "����ʧ�ܣ���������ص������������У�",
ProcCopiedOnly		: "ֻ�в�����Ը��ƣ�",
ProcCopiedConfirm	: "ȷ��Ҫ���Ʋ���",
Hide			: "����",
Display			: "��ʾ",
PanelBox		: "������",
PropertyBox		: "������",
ObjectView		: "������ͼ",
DataView		: "������ͼ",
Property		: "����",
ValidateFlow		: "У������ͼ",
SaveFlow		: "��������ͼ",
DeleteObjectSelected	: "ɾ��ѡ�ж��� Del",
Undo			: "�������� Ctrl+Z",
Redo			: "�ָ����� Ctrl+Y",
SelectObjectPrompt	: "ѡ�����\n\n1.��������ť\n2.�ڹ�����(����)�ϵ���[����]��[·��]��ͼ��",
AddProcPrompt		: "����[����](����)\n\n1.��������ť\n2.�ڹ�����(����)�Ͽհ�λ�ð�ס���\n3.�������\n4.�ɿ�������",
AddStepPrompt		: "����[·��](�۽���)\n\n1.��������ť\n2.��[����]ͼ��(���)�ϰ�ס������\n3.���������ĳ[����]ͼ��(�յ�)�м�λ��\n4.�ɿ�������",
DlgAboutInfo		: "Ҫ��ø�����Ϣ����� http://www.colloa.com"
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
			
				if(style != "������") style = "������";
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
	alert("�������");
}