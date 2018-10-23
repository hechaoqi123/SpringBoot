/*-------------------------------------------------
Copyright@2018, colloa system. All rights reserved.
-------------------------------------------------*/

function _$(arg) {
  var m_keepOriginalValue = false;
  if($.caller!=null){
    m_keepOriginalValue = ($.caller.toString().indexOf("function $opener2form")>=0);
  }
  var m_id;
  var m_element;
  var m_flag = -10; //m_element.innerHTML
  if (typeof(arg) == 'string') {
    m_id = arg;
    if(m_id.indexOf("e.") == 0) {
      m_element = document.getElementById(m_id);
    }
    else{
      var e = document.getElementById("e." + m_id);
      if (e) {
        m_id = "e." + m_id;
        m_element = e;
      }
      else{
        m_element = document.getElementById(m_id);
      }
    }
  }
  else if (typeof(arg) == 'object') {
    m_id = arg.id;
    if(m_id.indexOf("e.") == 0) {
      m_element = arg;
    }
    else{
      var ec = arg.childNodes;
      for(var i=0; i<ec.length; i++) {
        if (ec[i].id == "e." + m_id) {
          m_id = "e." + m_id;
          m_element = ec[i];
          break;
        }
      }
      if(!m_element) m_element = arg;
    }
  }
  if (m_element){
    if (m_element.tagName == "INPUT") {
      if (m_element.type == "radio") {
        m_element = document.getElementsByName(m_id);
        m_flag = m_element.length; //m_element is array;
      }
      else if (m_element.type == "checkbox") {
        m_flag = -1; //m_element.checked;
      }
      else {
        m_flag = 0; //m_element.value
      }
    }
    else if (m_element.tagName == "TEXTAREA") {
      m_flag = 0; //m_element.value
    }
  }
  else
  {
    throw "'" + arg + "' not found";
  }

  this.value = function (arg1, arg2) {
    if (!m_element) {
      return 0;
    }
    if (arg1 != null) {
      if (m_flag > 0) {
        for (var i = 0; i < m_flag; i++) {
          if (m_element[i].value == arg1) {
            m_element[i].checked = true;
            break;
          }
        }
      }
      else if (m_flag == 0) {
        m_element.value = arg1;
      }
      else if (m_flag == -1) {
        if (arg1) {
          m_element.checked = true;
        }
        else {
          m_element.checked = false;
        }
      }
      else {
        if(arg2) { //set value and dbf.key
          m_element.lastChild.innerHTML = (typeof(arg1)=="string"&&arg1.length==0?"&nbsp;":arg1);
          m_element.setAttribute("dbf.key", arg2);
          m_element.setAttribute("dbf.value", arg1);
        }
        else if(m_element.lastChild && m_element.lastChild.id) m_element.innerHTML = (typeof(arg1)=="string"&&arg1.length==0?"&nbsp;":arg1);
        else m_element.innerHTML = (typeof(arg1)=="string"&&arg1.length==0?"&nbsp;":arg1);
      }
      return arg1;
    }
    else {
      if (m_flag > 0) {
        for (var i = 0; i < m_flag; i++) {
          if (m_element[i].checked) {
            return m_element[i].value;
          }
        }
      }
      else if (m_flag == 0) {
        var s = m_element.value.replace("<br>","").replace(/&nbsp;/g, " ").replace(/(^\s*)|(\s*$)/g, "");
        m_element.value = s; //replace the element with new value;
        if(s.length == 0 && m_element.getAttribute("type") == "number" && !m_keepOriginalValue) return "0";
        else return s;
      }
      else if (m_flag == -1) {
        return m_element.checked ? 1 : 0;
      }
      else {
        var s;
        if(m_element.lastChild && m_element.lastChild.id) {s = m_element.lastChild.innerHTML.replace("<br>","").replace(/&nbsp;/g, " ").replace(/(^\s*)|(\s*$)/g, ""); m_element.lastChild.innerHTML = s;}
        else {s = m_element.innerHTML.replace(/&nbsp;/g, " ").replace(/(^\s*)|(\s*$)/g, ""); if(s.indexOf("<br>")==0) s = s.replace("<br>",""); m_element.innerHTML = s;}
        if(s.length>0) {
          var sPrefix; //to replace absolute url with relative one
          var sUrl = location.href;
          var nHost = sUrl.indexOf("http://");
          if (nHost >= 0) {
            var n1 = sUrl.indexOf("/", nHost + 7);
            if (n1 > 0) {
              var n2 = sUrl.indexOf("/", n1 + 1);
              if (n2 > 0) {
                if(sUrl.indexOf("/", n2 + 1) > 0 )
                  sPrefix = sUrl.substring(nHost, n2);
                else
                  sPrefix = sUrl.substring(nHost, n1);
              }
            }
          }
          if(sPrefix) s = s.replace(new RegExp(sPrefix, "g"), "..");
        }
        else {
          var sType = m_element.getAttribute("dbf.type");
          if(sType && (sType.indexOf("number")>=0 || sType.indexOf("amount")>=0) && !m_keepOriginalValue) s = "0";
        }
        return s;
      }
    }
  }

  this.attribute = function (arg1, arg2) {
    if (!m_element) {
      return 0;
    }
    if (arg2 != null) {
      m_element.setAttribute(arg1, arg2);
      return arg2;
    }
    else return m_element.getAttribute(arg1);
  }

  this.number = function (arg1) {
    if (arg1 != null) {
      arg1 = Number(arg1);
    }
    else {
      arg1 = Number(this.value());
    }
    this.value(arg1);
    return arg1;
  }

  this.amount = function (arg1) {
    if (arg1 != null) {
      arg1 = Number(arg1).toFixed(2);
    }
    else {
      arg1 = Number(this.value().replace(/,/g,"")).toFixed(2);
    }
    this.value(_bAmountWithThousands ? amountWithThousands(arg1) : arg1);
    return Number(arg1);
  }

  this.edit = function (arg1) {
    if (!m_element || !arg1) {
      return;
    }
    if(m_id.indexOf("e.")==0) {
      if (m_flag == 0) m_element.value = arg1;
      else if (m_flag == -10) m_element.innerHTML = arg1;
    }
    else {
      m_element.innerHTML = "<input id=e."+m_id+" class=fieldEditable value=\""+arg1+"\">";
    }
  }
  
  return this;
}
function $(arg) {
  return (new _$(arg));
}
function $getElementValue(sContainer, sId, sAttribute) {
  var s = "";
  var e = sContainer ? document.getElementById("e."+sContainer) : document;
  if(!e) document.getElementById(sContainer);
  if(e) {
    if(e.tagName == "TEXTAREA") {
      if(e.style.display == "none") s = CKEDITOR.instances[e.id].getData();
      else s = e.innerHTML.htmlDecode();
    }
    else s = e.innerHTML;
    var n = s.indexOf(" id=\""+sId+"\"");
    if(n < 0) n = s.indexOf(" id="+sId+" ");
    if(n > 0) {
      n = s.lastIndexOf("<", n);
      if(n >= 0) {
        var n2 = s.indexOf(">", n);
        if(n2 > 0) {
          if(sAttribute) {
            n = s.indexOf(sAttribute+"=\"", n);
            if(n > 0 && n < n2) {
              n = n + sAttribute.length + 2;
              s = s.substr(n, s.indexOf("\"",n)-n);
            }
            else s = "";
          }
          else s = s.substr(n, n2-n+1); //get outHTML
          if(s.length > 0) {
            var sPrefix; //to replace absolute url with relative one
            var sUrl = location.href;
            var nHost = sUrl.indexOf("http://");
            if (nHost >= 0) {
              var n1 = sUrl.indexOf("/", nHost + 7);
              if (n1 > 0) {
                var n2 = sUrl.indexOf("/", n1 + 1);
                if (n2 > 0) {
                  if(sUrl.indexOf("/", n2 + 1) > 0 )
                    sPrefix = sUrl.substring(nHost, n2);
                  else
                    sPrefix = sUrl.substring(nHost, n1);
                }
              }
            }
            return sPrefix ? s.replace(sPrefix,"..") : s;
          }
        }
      }
    }
  }
  return "";
}
function $sendMessage(subject, receiver, copyTo, contentX, priority) { //send message to inform receivers
  if(arguments.length < 4 || subject.length == 0 || receiver.length == 0 || contentX.length == 0) {
    alert("[sendMessage] Subject, Receiver and Content shouldn't be empty");
    return 0;
  }
  var sReturn = ajax("invoke.aspx?key=sendMessage&subject="+escape(subject)+"&receiver="+escape(receiver)+(copyTo.length>0?"&copyTo="+escape(copyTo):"")+"&contentX="+escape(contentX)+(priority?"&priority="+priority:""));
  if(sReturn != null) {
    if (sReturn.length > 0) {
      alert("[sendMessage] " + sReturn);
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $form2record(fieldsMapping, dbsTable, dbsCriteria) {
  var sForm = "dbsTable=" + (dbsTable?dbsTable:"") + "&dbsCriteria=" + (dbsCriteria?encodeURIComponent(dbsCriteria):"");
  if(fieldsMapping.length > 0) {
    var aFields = fieldsMapping.split(","); //fieldsMapping: formField1,formField2,formField2:dbField3,formField4:dbField4,dbField5=value5,dbField6=value6,...
    var sField, aField;
    for(var i=0; i<aFields.length; i++) {
      sField = aFields[i];
      if(sField.indexOf(":=") > 0) {
        aField = sField.split(":=");
        sForm += "&" + aField[0] + "=" + aField[1];
      }
      else if(sField.indexOf("=") > 0) {
        aField = sField.split("=");
        sForm += "&" + aField[0] + "=" + encodeURIComponent(aField[1].replace(/%2C/g,","));
      }
      else if(sField.indexOf(":") > 0) {
        aField = sField.split(":");
        sForm += "&" + aField[1] + "=" + encodeURIComponent($(aField[0]).value());
      }
      else {
        sForm += "&" + sField + "=" + encodeURIComponent($(sField).value());
      }
    }
  }
  
  var nContextId = _nContextId;
  if (nContextId == 0) {
    var sSearch = location.search;
    var nPos = sSearch.indexOf("context=");
    if (nPos > 0) {
      sSearch = sSearch.substr(nPos + 8);
      nPos = sSearch.indexOf("&");
      if (nPos > 0)
        nContextId = parseInt(sSearch.substr(0, nPos));
      else
        nContextId = parseInt(sSearch);
    }
  }
  
  var sReturn = ajax("invoke.aspx?key=form2record&context="+nContextId, sForm);
  if(sReturn != null) {
    if (sReturn.length > 0) {
      alert("[form2record] " + sReturn);
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $form2records() {
  var sForm = "";
  var aLoop = (typeof(arguments[0][0]) == "object" ? arguments[0] : arguments);
  for(var iLoop=0; iLoop<aLoop.length; iLoop++) {
    var a = aLoop[iLoop];
    sForm += (iLoop == 0 ? "" : "&") + "dbsTable." + iLoop + "=" + (a.length > 1 ? a[1] : "") + "&dbsCriteria." + iLoop + "=" + (a.length > 2 ? encodeURIComponent(a[2]) : "");
    if(a[0].length > 0) {
      var aFields = a[0].split(","); //fieldsMapping: formField1,formField2,formField2:dbField3,formField4:dbField4,dbField5=value5,dbField6=value6,...
      var sField, aField;
      for(var i=0; i<aFields.length; i++) {
        sField = aFields[i];
        if(sField.indexOf("=") > 0) {
          aField = sField.split("=");
          sForm += "&" + aField[0] + "." + iLoop + "=" + encodeURIComponent(aField[1].replace(/%2C/g,","));
        }
        else if(sField.indexOf(":") > 0) {
          aField = sField.split(":");
          sForm += "&" + aField[1] + "." + iLoop + "=" + encodeURIComponent($(aField[0]).value());
        }
        else {
          sForm += "&" + sField + "." + iLoop + "=" + encodeURIComponent($(sField).value());
        }
      }
    }
  }

  var nContextId = _nContextId;
  if (nContextId == 0) {
    var sSearch = location.search;
    var nPos = sSearch.indexOf("context=");
    if (nPos > 0) {
      sSearch = sSearch.substr(nPos + 8);
      nPos = sSearch.indexOf("&");
      if (nPos > 0)
        nContextId = parseInt(sSearch.substr(0, nPos));
      else
        nContextId = parseInt(sSearch);
    }
  }

  var sReturn = ajax("invoke.aspx?key=form2records&context="+nContextId, sForm);
  if(sReturn != null) {
    if (sReturn.length > 0) {
      alert("[form2records] " + sReturn);
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $table2records(sTableId, nRowStart, nRowEnd, nColKey) {
  var sForm = "";
  var oList = document.getElementById(sTableId);
  if(oList.tagName == "TABLE")
    oList = oList.getElementsByTagName("TR");
  else
    oList = oList.getElementsByTagName("TABLE");
  var bFirstOfRequest = true;
  for(var iLoopRow=nRowStart; iLoopRow<oList.length-nRowEnd; iLoopRow++) {
    var oTDs = oList[iLoopRow].getElementsByTagName("TD");
    var sKey = $(oTDs[nColKey]).attribute("dbf.key");
    if((sKey && sKey!="" && sKey!="0") || (sKey==null && $(oTDs[nColKey]).value().length>0)) {
      for(var iLoop=4; iLoop<arguments.length; iLoop++) {
        var a = arguments[iLoop];
        if(bFirstOfRequest) bFirstOfRequest = false;
        else sForm += "&";
        sForm += "dbsTable." + iLoopRow+"."+iLoop + "=" + (a.length > 1 ? a[1] : "") + "&dbsCriteria." + iLoopRow+"."+iLoop + "=";
        if(a.length > 2) { //sql or criteria: dbField1=value1 and dbField2=$[nColumn2] and dbField3=-$[nColumn3.attributeName] ...
          var s = a[2], n = s.indexOf("$["), n2, sTemp, nTemp;
          while(n >= 0) {
            n2 = s.indexOf("]", n);
            sTemp = s.substring(n+2,n2);
            if((nTemp=sTemp.indexOf("."))>0) sTemp = oTDs[sTemp.substr(0,nTemp)].getAttribute(sTemp.substr(nTemp+1)).replace(/'/g,"''");
            else sTemp = $(oTDs[sTemp]).value().replace(/'/g,"''");
            s = s.substr(0,n) + sTemp + s.substr(n2+1);
            n = s.indexOf("$[");
          }
          sForm += encodeURIComponent(s);
        }
        if(a[0].length > 0) {
          var aFields = a[0].split(","); //fieldsMapping: formField1,formField2,formField2:dbField3,$[nColumn]:dbField4,dbField5=value5,dbField6=-$[nColumn.attributeName],...
          var sField, aField;
          for(var i=0; i<aFields.length; i++) {
            sField = aFields[i];
            if(sField.indexOf("=") > 0) {
              aField = sField.split("=");
              var s = aField[1], n = s.indexOf("$["), n2, sTemp, nTemp;
              while(n >= 0) {
                n2 = s.indexOf("]", n);
                sTemp = s.substring(n+2,n2);
                if((nTemp=sTemp.indexOf("."))>0) sTemp = oTDs[sTemp.substr(0,nTemp)].getAttribute(sTemp.substr(nTemp+1));
                else sTemp = $(oTDs[sTemp]).value();
                s = s.substr(0,n) + sTemp + s.substr(n2+1);
                n = s.indexOf("$[");
              }
              sForm += "&" + aField[0] + "." + iLoopRow + "." + iLoop + "=" + encodeURIComponent(s);
            }
            else if(sField.indexOf(":") > 0) {
              aField = sField.split(":");
              var s = aField[0], n = s.indexOf("$["), n2, sTemp, nTemp;
              if(n == 0) {
                sTemp = s.substr(2,s.length-3);
                if((nTemp=sTemp.indexOf("."))>0) sTemp = oTDs[sTemp.substr(0,nTemp)].getAttribute(sTemp.substr(nTemp+1));
                else sTemp = $(oTDs[sTemp]).value();
                sForm += "&" + aField[1] + "." + iLoopRow + "." + iLoop + "=" + encodeURIComponent(sTemp);
              }
              else sForm += "&" + aField[1] + "." + iLoopRow + "." + iLoop + "=" + encodeURIComponent($(s).value());
            }
            else {
              sForm += "&" + sField + "." + iLoopRow + "." + iLoop + "=" + encodeURIComponent($(sField).value());
            }
          }
        }
      }
    }
  }

  var nContextId = _nContextId;
  if (nContextId == 0) {
    var sSearch = location.search;
    var nPos = sSearch.indexOf("context=");
    if (nPos > 0) {
      sSearch = sSearch.substr(nPos + 8);
      nPos = sSearch.indexOf("&");
      if (nPos > 0)
        nContextId = parseInt(sSearch.substr(0, nPos));
      else
        nContextId = parseInt(sSearch);
    }
  }

  var sReturn = ajax("invoke.aspx?key=form2records&context="+nContextId, sForm);
  if(sReturn != null) {
    if (sReturn.length > 0) {
      alert("[table2records] " + sReturn);
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $table2recordsAll(sTableId, nRowStart, nRowEnd, nColKey, fieldsMapping, dbsTable, dbsCriteria) {
  var sForm = "dbsTable=" + dbsTable + "&dbsCriteria=" + encodeURIComponent(dbsCriteria);
  var oList = document.getElementById(sTableId);
  if(oList.tagName == "TABLE")
    oList = oList.getElementsByTagName("TR");
  else
    oList = oList.getElementsByTagName("TABLE");
  for(var iLoopRow=nRowStart; iLoopRow<oList.length-nRowEnd; iLoopRow++) {
    var oTDs = oList[iLoopRow].getElementsByTagName("TD");
    var sKey = $(oTDs[nColKey]).attribute("dbf.key");
    if((sKey && sKey!="" && sKey!="0") || (sKey==null && $(oTDs[nColKey]).value().length>0)) {
      sForm += "&dbsRow." + iLoopRow + "=" + iLoopRow;
      var aFields = fieldsMapping.split(",");
      var sField, aField;
      for(var i=0; i<aFields.length; i++) {
        sField = aFields[i];
        if(sField.indexOf("=") > 0) {
          aField = sField.split("=");
          var s = aField[1], n = s.indexOf("$["), n2, sTemp, nTemp;
          while(n >= 0) {
            n2 = s.indexOf("]", n);
            sTemp = s.substring(n+2,n2);
            if((nTemp=sTemp.indexOf("."))>0) sTemp = oTDs[sTemp.substr(0,nTemp)].getAttribute(sTemp.substr(nTemp+1)).replace(/'/g,"''");
            else sTemp = $(oTDs[sTemp]).value().replace(/'/g,"''");
            s = s.substr(0,n) + sTemp + s.substr(n2+1);
            n = s.indexOf("$[");
          }
          sForm += "&" + aField[0] + "." + iLoopRow + "=" + encodeURIComponent(s);
        }
        else if(sField.indexOf(":") > 0) {
          aField = sField.split(":");
          var s = aField[0], n = s.indexOf("$["), n2, sTemp, nTemp;
          if(n == 0) {
            sTemp = s.substr(2,s.length-3);
            if((nTemp=sTemp.indexOf("."))>0) sTemp = oTDs[sTemp.substr(0,nTemp)].getAttribute(sTemp.substr(nTemp+1));
            else sTemp = $(oTDs[sTemp]).value();
            sForm += "&" + aField[1] + "." + iLoopRow + "=" + encodeURIComponent(sTemp);
          }
          else sForm += "&" + aField[1] + "." + iLoopRow + "=" + encodeURIComponent($(s).value());
        }
        else {
          sForm += "&" + sField + "." + iLoopRow + "=" + encodeURIComponent($(sField).value());
        }
      }
    }
  }

  var sReturn = ajax("invoke.aspx?key=form2recordsAll", sForm);
  if(sReturn != null) {
    if (sReturn.length > 0) {
      alert("[table2recordsAll] " + sReturn);
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $table2sql(sTableId, nRowStart, nRowEnd, nColKey, sSql) {
  //one sql statement: insert into dbTable1(dbField1,dbField2,dbField3,...) values(value1,'$[nColumn2]',dbField3=-$[nColumn3.attributeName],...)
  //multiple sql statements for one sql server database: insert into dbTable1(dbField1,dbField2,dbField3,...) values(value1,'$[nColumn2]',dbField3=-$[nColumn3.attributeName],...); update dbTable2 set dbField1=value1,dbField2='$[nColumn2]',dbField3=-$[nColumn3.attributeName],...) where ...
  
  var sForm = "dbsTable=&dbsCriteria=";
  var oList = document.getElementById(sTableId);
  if(oList.tagName == "TABLE")
    oList = oList.getElementsByTagName("TR");
  else
    oList = oList.getElementsByTagName("TABLE");
  for(var iLoopRow=nRowStart; iLoopRow<oList.length-nRowEnd; iLoopRow++) {
    var oTDs = oList[iLoopRow].getElementsByTagName("TD");
    var sKey = $(oTDs[nColKey]).attribute("dbf.key");
    if((sKey && sKey!="" && sKey!="0") || (sKey==null && $(oTDs[nColKey]).value().length>0)) {
      var s=sSql, n = s.indexOf("$["), n2, sTemp, nTemp;
      while(n > 0) {
        n2 = s.indexOf("]", n);
        sTemp = s.substring(n+2,n2);
        if((nTemp=sTemp.indexOf("."))>0) sTemp = oTDs[sTemp.substr(0,nTemp)].getAttribute(sTemp.substr(nTemp+1)).replace(/'/g,"''");
        else sTemp = $(oTDs[sTemp]).value().replace(/'/g,"''");
        if(sTemp.length==0) {
          if(s.substr(n-1,1) == "'") s = s.substr(0,n-1) + "NULL" + s.substr(n2+2); //in case of ...,'$[n]',...
          else s = s.substr(0,n) + "NULL" + s.substr(n2+1); //in case of ...,$[n],...
        }
        else if(sTemp.indexOf(",")>0) {
          if(s.substr(n-1,1) == "'") s = s.substr(0,n) + sTemp.replace(/\r\n/g,"<br>") + s.substr(n2+1); //in case of ...,'$[n]',...
          else s = s.substr(0,n) + sTemp.replace(/,/g,"") + s.substr(n2+1); //in case of ...,$[n],... and $[n]==12,345,678.00
        }
        else {
          s = s.substr(0,n) + sTemp.replace(/\r\n/g,"<br>") + s.substr(n2+1);
        }
        n = s.indexOf("$[");
      }
      n = s.indexOf("[!sid]");
      while(n > 0) {
        n2 = s.substr(0,n).toLowerCase().lastIndexOf("insert into ");
        if(n2 < 0) { alert("[table2sql] no INSERT INTO found for [!sid] in sql"); return 0; }
        sTemp = s.substr(n2+12, s.indexOf("(", n2)-n2-12);
        sTemp = ajax("invoke.aspx?key=uniqueId&tableName="+sTemp+"&fieldName=sid");
        if(sTemp.length > 15) {alert("[table2sql][!sid]\n"+sTemp); return 0; }
        s = s.substr(0,n) + sTemp + s.substr(n+6);
        n = s.indexOf("[!sid]");
      }
      if(s.substr(s.length-1, 1) != ";") s+=";";
      sForm += encodeURIComponent(s);
    }
  }

  var nContextId = _nContextId;
  if (nContextId == 0) {
    var sSearch = location.search;
    var nPos = sSearch.indexOf("context=");
    if (nPos > 0) {
      sSearch = sSearch.substr(nPos + 8);
      nPos = sSearch.indexOf("&");
      if (nPos > 0)
        nContextId = parseInt(sSearch.substr(0, nPos));
      else
        nContextId = parseInt(sSearch);
    }
  }

  var sReturn = ajax("invoke.aspx?key=form2record&context="+nContextId, sForm);
  if(sReturn != null) {
    if (sReturn.length > 0) {
      alert("[table2sql] " + sReturn);
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $form2field(dbsSql, nameOfLoopAppended, loopAppended, loopAppendedByRow, returnValue) {
  var nContextId = _nContextId;
  if (nContextId == 0) {
    var sSearch = location.search;
    var nPos = sSearch.indexOf("context=");
    if (nPos > 0) {
      sSearch = sSearch.substr(nPos + 8);
      nPos = sSearch.indexOf("&");
      if (nPos > 0)
        nContextId = parseInt(sSearch.substr(0, nPos));
      else
        nContextId = parseInt(sSearch);
    }
  }
  var s="";
  if(typeof(loopAppendedByRow)=="object"){s="<tr>";for(var i=0;i<loopAppendedByRow.length;i++){s+="<td>"+(loopAppendedByRow[i].id?$(loopAppendedByRow[i].id).value().replace(/\r\n/g,"<br>"):loopAppendedByRow[i].innerHTML)+"</td>";}s+="</tr>";}
  else if(loopAppendedByRow) {s="<tr>";var aLoop=loopAppendedByRow.split(",");for(var i=0;i<aLoop.length;i++){s+="<td>"+$(aLoop[i]).value().replace(/\r\n/g,"<br>")+"</td>";}s+="</tr>";}
  else if(loopAppended) s=loopAppended;

  var sReturn = ajax("invoke.aspx?key=form2field&context="+nContextId+(returnValue==1?"&returnValue=1":""), "dbsSql="+encodeURIComponent(dbsSql)+"&nameOfLoopAppended="+encodeURIComponent(nameOfLoopAppended)+"&loopAppended="+encodeURIComponent(s));
  if(sReturn != null) {
    if(returnValue == 1) {
      return sReturn;
    }
    else if (sReturn.length > 0) {
      alert("[form2field] " + sReturn);
      return 0;
    }
    else if(returnValue == 10) {
      if(typeof(loopAppendedByRow)=="object"){for(var i=0;i<loopAppendedByRow.length;i++){if(loopAppendedByRow[i].id) $(loopAppendedByRow[i].id).value("");}}
      else if(loopAppendedByRow) {var aLoop=loopAppendedByRow.split(",");for(var i=0;i<aLoop.length;i++){$(aLoop[i]).value("");}}
      var sForm=document.forms[0].innerHTML;
      var nStart=sForm.indexOf("<!--"+nameOfLoopAppended+"Start-->");
      if(nStart>=0) {var nEnd=sForm.indexOf("<!--"+nameOfLoopAppended+"End-->");if(nEnd>nStart) document.forms[0].innerHTML=sForm.substr(0,nStart)+s+sForm.substring(nEnd+("<!--"+nameOfLoopAppended+"End-->").length);}
      else document.forms[0].innerHTML=sForm.replace("<!--"+nameOfLoopAppended+"-->",s+"<!--"+nameOfLoopAppended+"-->");
      return 1;
    }
    else {
      return 1;
    }
  }
  else {
    return 0;
  }
}
function $form2report(reportName, loopAppended, loopAppendedByRow, flag) {
  if(flag && !confirm("[form2report] " + translate["areYouSure"])) return 0;

  var nContextId = _nContextId;
  if (nContextId == 0) {
    var sSearch = location.search;
    var nPos = sSearch.indexOf("context=");
    if (nPos > 0) {
      sSearch = sSearch.substr(nPos + 8);
      nPos = sSearch.indexOf("&");
      if (nPos > 0)
        nContextId = parseInt(sSearch.substr(0, nPos));
      else
        nContextId = parseInt(sSearch);
    }
  }
  var s="";
  if(loopAppendedByRow) {s="<tr>";var aLoop=loopAppendedByRow.split(",");for(var i=0;i<aLoop.length;i++){if(aLoop[i].indexOf("[!")>=0) s+="<td>"+aLoop[i]+"</td>";else{s+="<td>"+$(aLoop[i]).value().replace(/\r\n/g,"<br>")+"</td>";if(flag) $(aLoop[i]).value('');}}s+="</tr>";}
  else if(loopAppended) s=loopAppended;
  if(s.length == 0) {alert("[form2report] invalid value to be appended into report"); return 0;}

  var sReturn = ajax("invoke.aspx?key=form2report&context="+nContextId, "name="+encodeURIComponent(reportName)+"&loopAppended="+encodeURIComponent(s));
  if (sReturn.length > 0) {alert("[form2report] " + sReturn); return 0;}
  else return 1;
}

function $amountSum(nameObjects, nDecimal) {
  if (typeof(nDecimal)=="undefined") nDecimal=2;
  var nSum = 0;
  var ec = document.all["e."+nameObjects];
  if(ec==null || ec.length==0)
    ec = document.all[nameObjects];
  if(ec) {
    if(ec.length) {
      for(var i=0;i<ec.length;i++) {
        var s = ((ec[i].tagName=="INPUT"||ec[i].tagName=="TEXTAREA")?ec[i].value:ec[i].innerHTML).replace("<br>","").replace(/&nbsp;/g, " ").replace(/(^\s*)|(\s*$)/g, "");
        if(s.length>0){
          var n = Number(s.replace(/,/g,""));
          if(ec[i].tagName=="INPUT"||ec[i].tagName=="TEXTAREA") ec[i].value = (_bAmountWithThousands ? amountWithThousands(n.toFixed(nDecimal)) : n.toFixed(nDecimal));
          else ec[i].innerHTML = (_bAmountWithThousands ? amountWithThousands(n.toFixed(nDecimal)) : n.toFixed(nDecimal));
          nSum += n;
        }
      }
    }
    else {
      var s = ((ec.tagName=="INPUT"||ec.tagName=="TEXTAREA")?ec.value:ec.innerHTML).replace("<br>","").replace(/&nbsp;/g, " ").replace(/(^\s*)|(\s*$)/g, "");
      if(s.length>0){
        var n = Number(s.replace(/,/g,""));
        if(ec.tagName=="INPUT"||ec.tagName=="TEXTAREA") ec.value = (_bAmountWithThousands ? amountWithThousands(n.toFixed(nDecimal)) : n.toFixed(nDecimal));
        else ec.innerHTML = (_bAmountWithThousands ? amountWithThousands(n.toFixed(nDecimal)) : n.toFixed(nDecimal));
        nSum = n;
      }
    }
  }
  return nSum.toFixed(nDecimal);
}
function $amountSub(minuend,subtrahend) {
    var r1,r2,m;
    try {
        r1 = minuend.toString().split(".")[1].length;
    }
    catch(e) {
        r1 = 0;
    }
    try {
        r2 = subtrahend.toString().split(".")[1].length;
    }
    catch(e) {
        r2 = 0;
    }   
    m=Math.pow(10,Math.max(r1,r2));
    return ((minuend*m-subtrahend*m)/m).toFixed(2);
}
function $amountMul(multiplicand,multiplier) {
    var m = 0;
    var s1 = multiplicand.toString();
    var s2 = multiplier.toString();
    try {
        m+=s1.split(".")[1].length;
    }
    catch(e) {} 
    try {
        m+=s2.split(".")[1].length;
    }
    catch(e) {} 
    return (Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m)).toFixed(2);
}
function $amountDiv(dividend,divisor) {
  var t1=0,t2=0,r1,r2; 
  try {
      t1=dividend.toString().split(".")[1].length;
  }
  catch(e) {} 
  try {
      t2=divisor.toString().split(".")[1].length;
  }
  catch(e) {} 
  with(Math) { 
    r1=Number(dividend.toString().replace(".","")) 
    r2=Number(divisor.toString().replace(".","")) 
    return ((r1/r2)*pow(10,t2-t1)).toFixed(2); 
  } 
}
function $amountOfChinese(numberValue) {
  if(_sLang!="cn" && _sLang!="tc") return ""; 
  var numberValue = Math.round(numberValue * 100).toString(); // 数字金额
  var chineseValue = ""; // 转换后的汉字金额
  var string1 = "零壹贰叁肆伍陆柒捌玖"; // 汉字数字
  var string2 = "万仟佰拾亿仟佰拾万仟佰拾元角分"; // 对应单位
  var len = numberValue.length; // numberValue 的字符串长度
  var ch1; // 数字的汉语读法
  var ch2; // 数字位的汉字读法
  var nZero = 0; // 用来计算连续的零值的个数
  var string3; // 指定位置的数值
  if (len > 15) {
    alert("超出计算范围");
    return "";
  }
  if (numberValue == 0) {
    chineseValue = "零元整";
    return chineseValue;
  }
  string2 = string2.substr(string2.length - len, len); // 取出对应位数的string2的值
  for (var i = 0; i < len; i++) {
    string3 = parseInt(numberValue.substr(i, 1), 10); // 取出需转换的某一位的值
    if (i != (len - 3) && i != (len - 7) && i != (len - 11) && i != (len - 15)) {
      if (string3 == 0) {
        ch1 = "";
        ch2 = "";
        nZero = nZero + 1;
      }
      else if (string3 != 0 && nZero != 0) {
        ch1 = "零" + string1.substr(string3, 1);
        ch2 = string2.substr(i, 1);
        nZero = 0;
      }
      else {
        ch1 = string1.substr(string3, 1);
        ch2 = string2.substr(i, 1);
        nZero = 0;
      }
    }
    else { // 该位是万亿，亿，万，元位等关键位
      if (string3 != 0 && nZero != 0) {
        ch1 = "零" + string1.substr(string3, 1);
        ch2 = string2.substr(i, 1);
        nZero = 0;
      }
      else if (string3 != 0 && nZero == 0) {
        ch1 = string1.substr(string3, 1);
        ch2 = string2.substr(i, 1);
        nZero = 0;
      }
      else if (string3 == 0 && nZero >= 3) {
        ch1 = "";
        ch2 = "";
        nZero = nZero + 1;
      }
      else {
        ch1 = "";
        ch2 = string2.substr(i, 1);
        nZero = nZero + 1;
      }
      if (i == (len - 11) || i == (len - 3)) { // 如果该位是亿位或元位，则必须写上
        ch2 = string2.substr(i, 1);
      }
    }
    chineseValue = chineseValue + ch1 + ch2;
  }
  if (string3 == 0) { // 最后一位（分）为0时，加上“整”
    chineseValue = chineseValue + "整";
  }
  return chineseValue;
}
function $dateFormat(format, dateValue) { /* eg: format="yyyy/MM/dd hh:mm:ss" */
  var d = typeof(dateValue)=="object" ? new Date(dateValue.innerHTML.replace(/-/g,"/")) : typeof(dateValue)=="string" ? new Date(dateValue.replace(/-/g,"/")) : new Date();
  var o = {
    "M+": d.getMonth() + 1,  //month
    "d+": d.getDate(),   //day
    "h+": d.getHours(),  //hour
    "m+": d.getMinutes(),  //minute
    "s+": d.getSeconds(), //second
    "q+": Math.floor((d.getMonth() + 3) / 3),  //quarter
    "S": d.getMilliseconds() //millisecond
  }
  if (/(y+)/.test(format)) format = format.replace(RegExp.$1, (d.getFullYear() + "").substr(4 - RegExp.$1.length));
  for (var k in o) {
    if (new RegExp("(" + k + ")").test(format)) format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
  }
  return format;
}
function $dateDiff(dateStart, dateEnd, eDateDiff, eHourDiff, eMinuteDiff) {
  var d1 = dateStart instanceof Date ? dateStart : new Date((typeof(dateStart)=="object" ? dateStart.innerHTML : dateStart).replace(/-/g, "/"));
  var d2 = dateEnd instanceof Date ? dateEnd : new Date((typeof(dateEnd)=="object" ? dateEnd.innerHTML : dateEnd).replace(/-/g, "/"));
  var diff = d2 - d1;
  if (eDateDiff)
    $(eDateDiff).value(eHourDiff? parseInt(diff/3600000/24) : (diff/3600000/24).toFixed(1));
  if (eHourDiff)
    $(eHourDiff).value(eMinuteDiff? parseInt(diff/3600000) : (diff/3600000).toFixed(1));
  if (eMinuteDiff)
    $(eMinuteDiff).value(parseInt(diff/60000));
  return (diff/3600000/24).toFixed(2);
}
function $dateAdd(dateValue, numberDiff) {
  var d = typeof(dateValue)=="object" ? new Date(dateValue.innerHTML.replace(/-/g,"/")) : typeof(dateValue)=="string" ? new Date(dateValue.replace(/-/g,"/")) : new Date();
  d.setDate(d.getDate()+numberDiff);
  return d.getFullYear()+"/"+(d.getMonth()+1)+"/"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
}
function $addRow(sTableId, nNum, iRowEnd) {
  var objExsit;
  var bInsertFlag=false;
  if (!(typeof(iRowEnd)=="undefined")) {
    bInsertFlag=true;
  }
  if (!nNum) nNum = 1;
  var objTb = document.getElementById(sTableId);
  if (!bInsertFlag) iRowEnd=objTb.rows.length;
  if(objTb && objTb.rows.length > 0)
  {
    var objTr = objTb.rows[iRowEnd-1].cloneNode(true);
    if(bInsertFlag) objExsit = objTb.rows[iRowEnd];
    var objInputs = objTr.getElementsByTagName("INPUT");
    for(var i=0; i<objInputs.length; i++) {
      if(objInputs[i].type=="text") objInputs[i].value="";
    }
    objTb = objTb.tBodies[0];
    for(var i=0; i<nNum; i++) {
    if(bInsertFlag) {
      objTb.insertBefore(objTr,objExsit);
    }else {
      objTb.appendChild(objTr);
    }
    objTr=objTr.cloneNode(true);}
  }
}
function $delRow(obj,iRowStart,iRowEnd) {
  if (typeof(iRowStart)=="undefined") iRowStart=2;
  if (typeof(iRowEnd)=="undefined") iRowEnd=obj.parentNode.parentNode.parentNode.getElementsByTagName("TR").length;
  if(iRowEnd-iRowStart<1) alert($translate("operation not allowed"));
  else if(confirm(translate["areYouSure"])) {
    var objTb = obj.parentNode.parentNode.parentNode.parentNode;
    objTb.deleteRow(obj.parentNode.parentNode.rowIndex);
  }
}
function $reSortNo(sTableId,iRowStart,iRowEnd,iColumnOfNo) {
  var iRow=1;
  var aTRs = document.getElementById(sTableId).getElementsByTagName('TR');
  for(var i=iRowStart;i<aTRs.length-iRowEnd; i++) {
    $(aTRs[i].cells[iColumnOfNo]).value(iRow++);
  }
}
function $insertRow(obj) {
  if(confirm(translate["areYouSure"])) {
    var objTr = obj.parentNode.parentNode.cloneNode(true);
    var objInputs = objTr.getElementsByTagName("INPUT");
    for(var i=0; i<objInputs.length; i++) {
      if(objInputs[i].type=="text") objInputs[i].value="";
    }
    obj.parentNode.parentNode.parentNode.insertBefore(objTr,obj.parentNode.parentNode);
  }
}
function $opener2form(fieldsMapping) {
  if(!opener) return;

	var aFields = fieldsMapping.split(",");
	var sField, aField, eOpener, e; 
	for(var iMapping=0; iMapping<aFields.length; iMapping++) {
    sField = aFields[iMapping];
    if(sField.indexOf(":") > 0) {
      aField = sField.split(":");
      eOpener = opener.document.getElementById(aField[0].replace(/(^\s*)|(\s*$)/g, ""));
      e = document.getElementsByName(aField[1].replace(/(^\s*)|(\s*$)/g, ""));
      if(e.length == 1)
        e = e[0];
      else if(e.length == 0)
        e = document.getElementById(aField[1].replace(/(^\s*)|(\s*$)/g, ""));
    } else {
      eOpener = opener.document.getElementById(sField.replace(/(^\s*)|(\s*$)/g, ""));
      e = document.getElementsByName(sField.replace(/(^\s*)|(\s*$)/g, ""));
      if(e.length == 1)
        e = e[0];
      else if(e.length == 0)
        e = document.getElementById(sField.replace(/(^\s*)|(\s*$)/g, ""));
    }
    
    if(eOpener && e) {
      if(e.length) {
        for(var i=0; i<e.length; i++) {
          if(e[i].tagName != "TD" || ($(e[i]).value()==0 && $(e[i].parentNode.cells[Number(e[i].parentNode.parentNode.parentNode.getAttribute("dbf.keyCol")||"0")]).value().length>0)) {
            if(e[i].getAttribute("dbf.key") != null) {
              if(e[i].lastChild && e[i].lastChild.tagName=="DIV")
                e[i].lastChild.innerHTML = $(eOpener).value();
              else
                e[i].innerHTML = $(eOpener).value();
              e[i].setAttribute("dbf.key", eOpener.getAttribute("dbf.key"));
            } else {
              $(e[i]).value($(eOpener).value());
            }
          }
        }
      } else if(e.tagName == "TABLE") {
        var iKeyCol = Number(e.getAttribute("dbf.keyCol")||"0");
        var aTrsOpener = eOpener.getElementsByTagName("TR");
        if(aTrsOpener.length > 0) {
          var iRowStartForOpener = 1;
          if(aTrsOpener[0].cells[iKeyCol].id)
            iRowStartForOpener = 0; //check first row to copy
          var aTrs = e.getElementsByTagName("TR");
          var iRowStart = 1;
          if(aTrs[0].cells[iKeyCol].id)
            iRowStart = 0; //check first row to paste
          for(; iRowStart < aTrs.length; iRowStart++) { //check first N rows without pasting
            if($(aTrs[iRowStart].cells[iKeyCol]).value().length == 0) break;
          }
          
          var nRowsToAppend = -1; //aTrsOpener.length-iRowStartForOpener;
          for(var i=iRowStartForOpener; i<aTrsOpener.length; i++)
          {
              if(aTrsOpener[i].cells[iKeyCol].innerHTML.indexOf("checkbox")>0 && aTrsOpener[i].cells[iKeyCol].getElementsByTagName("INPUT")[0].checked) nRowsToAppend++;
          }
          if(nRowsToAppend > -1) nRowsToAppend++;
          else nRowsToAppend = aTrsOpener.length-iRowStartForOpener;          
          if(aTrs.length-iRowStart < nRowsToAppend) $addRow(e.id, nRowsToAppend-aTrs.length+iRowStart);
          
          while(iRowStartForOpener < aTrsOpener.length) {
            var ecOpener = aTrsOpener[iRowStartForOpener++].cells;
            if(ecOpener[iKeyCol].innerHTML.indexOf("checkbox")>0 && !ecOpener[iKeyCol].getElementsByTagName("INPUT")[0].checked) continue;
            
            var ec = aTrs[iRowStart++].cells;
            for(var i=0; i<ecOpener.length; i++) {
              if(ecOpener[i].id) {
                for(var j=0; j<ec.length; j++) {
                  if(ec[j].id == ecOpener[i].id) {
                    if(ec[j].getAttribute("dbf.key") != null) {
                      if(ec[j].lastChild && ec[j].lastChild.tagName=="DIV")
                        ec[j].lastChild.innerHTML = $(ecOpener[i]).value();
                      else
                        ec[j].innerHTML = $(ecOpener[i]).value();
                      ec[j].setAttribute("dbf.key", ecOpener[i].getAttribute("dbf.key"));
                    } else {
                      $(ec[j]).value($(ecOpener[i]).value());
                    }
                  }
                }
              }
            }
          }
        }
      } else {
        if(e.getAttribute("dbf.key") != null) {
          if(e.lastChild && e.lastChild.tagName=="DIV")
            e.lastChild.innerHTML = $(eOpener).value();
          else
            e.innerHTML = $(eOpener).value();
          e.setAttribute("dbf.key", eOpener.getAttribute("dbf.key"));
        } else {
          $(e).value($(eOpener).value());
        }
      }
	  }
	}
}
function $table2excel(sTableIdOrFileName, sSql) {
  if(sSql) { //Build the Excel content on Server to download
    windowOpen("../view/file.aspx?attachment=1&name="+escape(sTableIdOrFileName)+".xls&contentType=text/html&file="+escape(sSql));
  }
  else if(window.navigator.userAgent.indexOf("MSIE")>=0) { //Copy local html content to Excel
    var oActive;
    try {
      oActive = new ActiveXObject("Excel.Application");
    }
    catch(e) {
      alert("Please use Internet Explorer browser with version 10.0 below, and enable ActiveX Controls or set the current site trusted");
      return ;
    }
    try{
      var oTable = document.getElementById(sTableIdOrFileName);
      var oText = document.body.createTextRange();
      oText.moveToElementText(oTable);
      oText.select();
      oText.execCommand("Copy");
      var newSheet = oActive.WorkBooks.add().ActiveSheet;
      if(oTable.getElementsByTagName("CAPTION")[0]) newSheet.name = oTable.getElementsByTagName("CAPTION")[0].innerHTML;
      newSheet.Paste();
      oActive.Visible = true;
      oActive = null;
    }
    catch(e){
      oActive = null;
      alert(e);
    }
  }
  else {
    var table2excel = (function() {
      var uri = 'data:application/vnd.ms-excel;base64,',
      template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',
      base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))); },
      format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }); };
      return function(table, name) {
        if (!table.nodeType) table = document.getElementById(sTableIdOrFileName);
          var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML };
          window.location.href = uri + base64(format(template, ctx));
      }
    })();
    table2excel(sTableIdOrFileName);
  }
}
function $handWrite(sContainer, bOverContainer, sColor, nLineWidth) {
  document.write("<script src='../addon/jQuery.min.js'></script><script src='../addon/flashcanvas.js'></script><script src='../addon/jSignature.min.js'></script>");
  var eContainer = document.getElementById(sContainer);
  if(bOverContainer) {
    if(document.getElementById("_handWriteImageXOf"+sContainer))
      document.getElementById("_handWriteImageXOf"+sContainer).style.display='none';
    window.onload = function(){
      var eHandWrite = document.createElement("DIV");
      eHandWrite.id = "_handWriteOf"+sContainer;
      eHandWrite.style.border = "1px solid "+sColor;
      eHandWrite.style.position = "absolute";
      eHandWrite.style.zIndex = "10";
      var nTop= 0, nLeft= 0, eLoop = eContainer;
      while(eLoop) {nTop+=eLoop.offsetTop; nLeft+=eLoop.offsetLeft; eLoop=eLoop.offsetParent;}
      eHandWrite.style.top = nTop+"px";
      eHandWrite.style.left = nLeft+"px";      
      document.body.appendChild(eHandWrite);
      jQuery.noConflict();
      jQuery("#_handWriteOf"+sContainer).jSignature({"UndoButton":true, "color":sColor, "signatureLine":false, "decor-color":"white", "lineWidth":nLineWidth, "width":eContainer.clientWidth+"px", "height":eContainer.clientHeight+"px"});
    }
  }
  else {
    window.onload = function(){
      eContainer.innerHTML = "";
      jQuery.noConflict();
      jQuery("#"+sContainer).jSignature({"UndoButton":true, "color":sColor, "lineWidth":nLineWidth, "width":eContainer.clientWidth+"px", "height":eContainer.clientHeight+"px"});
    }
  }
}
function $handWriteToImage(sContainer, bOverContainer, sColor) {
  var eContainer = document.getElementById(sContainer);
  if(bOverContainer) {
    var eTable = document.getElementById("_handWriteImageOf"+sContainer), eTd, eTdX;
    if(!eTable) {
      eTable = document.createElement("TABLE");
      eTable.id = "_handWriteImageOf"+sContainer;
      eTable.style.width = eContainer.clientWidth+"px";
      eTable.style.fontSize = eContainer.style.fontSize;
      eTable.border = 0;
      eTable.cellPadding = 0;
      eTable.cellSpacing = 0;
      eTable.style.border = "1px solid "+sColor;
      var eTr = document.createElement("TR");
      eTd = document.createElement("TD");
      eTd.style.color = "white";
      eTr.appendChild(eTd);
      eTable.appendChild(eTr);
      var eTrX = document.createElement("TR");
      eTdX = document.createElement("TD");
      eTdX.id = "_handWriteImageXOf"+sContainer;
      eTdX.vAlign = "top";
      eTrX.appendChild(eTdX);
      eTable.appendChild(eTrX);
      if(eContainer.tagName == "TD")
        eContainer.parentNode.parentNode.parentNode.parentNode.appendChild(eTable);
      else if(eContainer.tagName == "DIV")
        eContainer.parentNode.appendChild(eTable);
      else {
        alert("[handWriteToImage] Container should be an element of TD or DIV");
        return 0;
      }
    }
    else {
      eTd = eTable.rows[0].cells[0];
      eTdX = eTable.rows[1].cells[0];
    }
    eTd.style.backgroundColor = sColor;
    eTd.innerHTML = "&nbsp;&nbsp;Handwrited by "+ajax("invoke.aspx?key=sign")+"&nbsp;&nbsp;<a style='color:white;' href=\"javascript:void(0);\" onclick=\"javascript:if(document.getElementById('_handWriteImageXOf"+sContainer+"').style.display=='') document.getElementById('_handWriteImageXOf"+sContainer+"').style.display='none';else document.getElementById('_handWriteImageXOf"+sContainer+"').style.display='';return false;\">&raquo; 展开/隐藏</a>";
    eTdX.style.display = "none";
    eTdX.style.height = eContainer.clientHeight+"px";
    eTdX.innerHTML = "";
    var eImage = new Image();
    eImage.style.position = "absolute";
    eImage.style.zIndex = "10";
    eImage.src = jQuery("#_handWriteOf"+sContainer).jSignature("getData");
    eTdX.appendChild(eImage);
    eTdX.innerHTML += document.getElementById(sContainer).innerHTML;
  }
  else {
    var eImage = new Image();
    eImage.src = jQuery("#"+sContainer).jSignature("getData");
    eContainer.innerHTML = "";
    eContainer.appendChild(eImage);
  }
  return 1;
}
function $gantt(sContainer, nColumnOfStart, nColumnOfEnd, nDayWidth) {
  var aTree = document.getElementById(sContainer).childNodes;
  var nColumnForGantt = aTree.length>0 ? aTree[0].childNodes.length-1 : null;
  if(aTree.length>0 && aTree[0].childNodes[nColumnForGantt].style.backgroundImage.length>0) {
    for (var i = aTree.length-1; i >= 0; i--) {
      aTree[i].childNodes[nColumnForGantt].style.backgroundImage = "";
      aTree[i].childNodes[nColumnForGantt].style.paddingLeft = "";
      aTree[i].childNodes[nColumnForGantt].style.paddingRight = "";
      aTree[i].childNodes[nColumnForGantt].innerHTML = "&nbsp;";
    }
    var thGantt = document.getElementById(sContainer).parentNode.getElementsByTagName("TH")[nColumnForGantt];
    thGantt.style.backgroundImage = "";
    thGantt.style.paddingLeft = "";
    thGantt.innerHTML = "&nbsp;";
    document.getElementById(sContainer).parentNode.style.width = "";
  }
  else {
    if(!nDayWidth) nDayWidth = 25;
    var dFirstDay = aTree.length>0 ? new Date(aTree[0].childNodes[nColumnOfStart].innerHTML.replace("&nbsp;","")) : null;
    var dLastDay = dFirstDay, dStartDay, dEndDay;
    for (var i = aTree.length-1; i >= 0; i--) {
      aTree[i].childNodes[nColumnForGantt].style.backgroundImage = "url('../images/canvasBg.gif')";
      aTree[i].childNodes[nColumnForGantt].style.paddingLeft = nDayWidth+"px";
      aTree[i].childNodes[nColumnForGantt].style.paddingRight = "0px";
      if(aTree[i].childNodes[nColumnOfStart].innerHTML.length >= 8 && aTree[i].childNodes[nColumnOfEnd].innerHTML.length >= 8) {
        dStartDay = new Date(aTree[i].childNodes[nColumnOfStart].innerHTML.replace("&nbsp;",""));
        dEndDay = new Date(aTree[i].childNodes[nColumnOfEnd].innerHTML.replace("&nbsp;",""));
        var nDays = ((dEndDay-dStartDay)/3600000/24); //$dateDiff(dStartDay, dEndDay);
        aTree[i].childNodes[nColumnForGantt].innerHTML = "<div style='margin-left:"+($dateDiff(dFirstDay, dStartDay)*nDayWidth)+"px;width:"+(nDays*nDayWidth+nDayWidth)+"px;height:16px;color:white;background-color:"+(aTree[i].childNodes[0].innerHTML.indexOf("treeDisplay0ByTable")>0?"gray":"steelblue")+";font:normal 10px Tahoma;border-radius:2px' align=center>"+(nDays+1)+"d</div>";
        if(dEndDay > dLastDay) dLastDay = dEndDay;
      }
      else if(aTree[i].childNodes[nColumnOfStart].innerHTML.length >= 8) {
        dStartDay = new Date(aTree[i].childNodes[nColumnOfStart].innerHTML.replace("&nbsp;",""));
        aTree[i].childNodes[nColumnForGantt].innerHTML = "<div style='margin-left:"+($dateDiff(dFirstDay, dStartDay)*nDayWidth)+"px;width:"+nDayWidth+"px' align=center><i class='fa fa-caret-up fa-2x'></i></div>";
        if(dStartDay > dLastDay) dLastDay = dStartDay;
      }
      else if(aTree[i].childNodes[nColumnOfEnd].innerHTML.length >= 8) {
        dEndDay = new Date(aTree[i].childNodes[nColumnOfEnd].innerHTML.replace("&nbsp;",""));
        aTree[i].childNodes[nColumnForGantt].innerHTML = "<div style='margin-left:"+($dateDiff(dFirstDay, dEndDay)*nDayWidth)+"px;width:"+nDayWidth+"px' align=center><i class='fa fa-caret-up fa-2x'></i></div>";
        if(dEndDay > dLastDay) dLastDay = dEndDay;
      }
    }
    if(aTree.length > 0) {
      document.getElementById(sContainer).parentNode.style.width = (800+($dateDiff(dFirstDay, dLastDay)*nDayWidth))+"px";
      var dDay = dFirstDay, s = "<div style='display:inline-block;width:"+nDayWidth+"px;font-size:10px;font-weight:normal;' align=center>"+dDay.getDate()+"</div>";
      while(dDay < dLastDay) {
        dDay = new Date(dDay.setDate(dDay.getDate()+1));
        s += "<div style='display:inline-block;width:"+nDayWidth+"px;font-size:10px;font-weight:normal;' align=center>"+(dDay.getDate()==1?(dDay.getMonth()+1)+"/":"")+dDay.getDate()+"</div>";
      }
      var thGantt = document.getElementById(sContainer).parentNode.getElementsByTagName("TH")[nColumnForGantt];
      thGantt.style.backgroundImage = "url('../images/canvasBg.gif')";
      thGantt.style.paddingLeft = nDayWidth+"px";
      thGantt.innerHTML = s;
    }
  }
}
