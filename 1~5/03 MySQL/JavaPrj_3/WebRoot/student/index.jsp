<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>��ʼ����</title>
<link href="student/images/css2.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
<!--
.STYLE3 {font-size: 18px; }
.STYLE4 {font-size: 18px; font-weight: bold; }
.STYLE5 {color: #FF0000}
-->
</style>
<script type="text/javascript">
 var ksTime; //���忼��ʱ���Է��Ӽ���
 ksTime = 120;//����ʱ�� ��������Ϊ0.1������6��,������
 if(readCookie("ss")==""){
  setCookie("ss",new Date(),ksTime/60);
 }
 function sT(){
  var tti = new Date();
  var lt  = parseInt((tti-new Date(readCookie("ss")))/1000)
  if((ksTime*60-lt)<0){
   setCookie("ss",new Date(),0);
   alert("����ʱ�䵽!\n�����ύ�Ծ�!");
   document.forms[0].submit();
  }else{
  	lm = Math.floor(lt / 60);
	ls = lt % 60;
	allY = ksTime*60-lt;
	ym = Math.floor(allY / 60);
	ys = allY % 60;
   document.getElementById("tTime").innerHTML = "�����Ѿ���ʼ��" + lm + "��" + ls + "��" + ",ʣ��"  + ym + "��" + ys + "��";
   var ttt = setTimeout("sT()",1000);
  }
 }
 function readCookie(name) { 
  var cookieValue = ""; 
  var search = name + "="; 
  if(document.cookie.length > 0) { 
   offset = document.cookie.indexOf(search); 
   if (offset != -1) { 
    offset += search.length; 
    end = document.cookie.indexOf(";", offset); 
    if (end == -1) 
     end = document.cookie.length; 
    cookieValue = document.cookie.substring(offset, end) 
   } 
  } 
  return cookieValue; 
 }  
 function setCookie(name, value, hours) { 
  var expire = ""; 
  if(hours != null) { 
   expire = new Date((new Date()).getTime() + hours * 3600000); 
   expire = "; expires=" + expire.toGMTString(); 
  } 
  document.cookie = name + "=" + value + expire; 
 }
 </script>
</head>

<body onload="sT()">
<table width="1003" height="485" border="0" cellpadding="0" cellspacing="0" class="centerbg">
  <tr>
    <td width="149" height="485">&nbsp;</td>
    <td width="741" valign="top" class="rightbian">
	 <form action="submitExam.action" method="post">
	<table width="98%" border="0" align="center" cellpadding="0" cellspacing="10">
      <tr>
        <td><div align="center" class="STYLE3">����ʱ�䣺120 ����</div></td>
        <td><div align="center" class="STYLE3">������${sessionScope.studentInfo.studentName}</div></td>
        <td><div align="center" class="STYLE3">�ܷ� ��100 ��</div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><div id="tTime"></div></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3" bgcolor="#999999" class="STYLE4">ѡ����(ÿС��5�֣���20��)</td>
      </tr>
	  <!--��Ŀ��ʼ-->
	 
	  <s:iterator value="#request.subjects" var="subject" status="sta">
	  	 <tr>
	  	 <input type="hidden" name="subjectID" value="${subject.subjectID}"/>
        <td colspan="3"><strong>��<span class="STYLE5">${sta.index + 1}</span>��&nbsp;${subject.subjectTitle}</strong>		</td>
      </tr>
      <tr>
        <td colspan="3"><strong>A��</strong>${subject.subjectOptionA}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>B��</strong>${subject.subjectOptionB}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>C��</strong>${subject.subjectOptionC}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>D��</strong>${subject.subjectOptionD}</td>
      </tr>
      <tr>
        <td height="32" colspan="3" bgcolor="#CCCCCC">ѡ��𰸣�
          <input type="radio" name="subjectAnswer${sta.index}" value="A" checked="checked"/>
          A
          <input type="radio" name="subjectAnswer${sta.index}" value="B" />
          B
          <input type="radio" name="subjectAnswer${sta.index}" value="C" />
          C
          <input type="radio" name="subjectAnswer${sta.index}" value="D" />
          D</td>
      </tr>
	  </s:iterator>
	   <!--��Ŀ����-->
      <tr>
        <td colspan="3"><div align="center">
          <input type="submit" value=" �ύ��� " name="Submit" />
        </div></td>
      </tr>
    </table>
     </form>
    </td>
    <td width="113">&nbsp;</td>
  </tr>
</table>
</body>
</html>
