<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ʾͶƱ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:active {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
.STYLE7 {font-size: 12}
-->
</style></head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> <span class="STYLE4">ͶƱ����</span></td>
        <td width="281" background="images/tab_05.gif">&nbsp;</td>
        <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="images/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="8%" height="18" background="images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͶƱ���</div></td>
            <td width="24%" height="18" background="images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͶƱ��</div></td>
            <td width="10%" height="18" background="images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͶƱѡ��1</div></td>
            <td width="14%" height="18" background="images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͶƱѡ��2</div></td>
            <td width="24%" height="18" background="images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">ͶƱѡ��3</div></td>
            <td width="7%" height="18" background="images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">ɾ��</div></td>
          </tr>
          
          <!--ѭ�����ͶƱ���� -->
          <s:iterator value="#request.voteResultList" var="voteResult">
          	 <tr>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">${voteResult.vote.voteID}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${voteResult.vote.voteName}</div></td>
           	<!-- ֻ���ǰ����ͶƱѡ�� -->
            <s:subset source="#voteResult.voteOptions" id="subvoteOptions" start="0" count="3"></s:subset>
            <s:iterator value="#attr.subvoteOptions" var="voteOption">
            	<td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${voteOption.voteOptionName}</div></td>
            </s:iterator>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="images/010.gif" width="9" height="9" /> </span><span class="STYLE1">[</span><a href="deleteVote.action?voteID=${voteResult.vote.voteID}">ɾ��</a><span class="STYLE1">]</span></div></td>
         	 </tr>
          </s:iterator>
        </table></td>
        <td width="9" background="images/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>
        <td background="images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25%" height="29" nowrap="nowrap"><span class="STYLE1">��${page.totalCount}����¼����ǰ��${page.currentPage}/${page.totalPage}ҳ��ÿҳ${page.everyPage}����¼</span></td>
            <td width="75%" valign="top" class="STYLE1"><div align="right">
              <table width="215" height="20" border="0" cellpadding="0" cellspacing="0">
                <tr>
                <s:if test="#request.page.hasPrePage">
                	<td width="62" height="22" valign="middle">
                	<div align="right">
                		<a href="showVote.action?currentPage=1"><img src="images/first.gif" border="0"/></a>
                	</div></td>
                	<td width="50" height="22" valign="middle">
                	<div align="right">
                		<a href="showVote.action?currentPage=${page.currentPage - 1}"><img src="images/back.gif" border="0"/></a>
                	</div></td>
                </s:if>
                <s:else>
                	<td width="62" height="22" valign="middle">
                	<div align="right">
                		<img src="images/first.gif" border="0"/>
                	</div></td>
                	<td width="50" height="22" valign="middle">
                	<div align="right">
                		<img src="images/back.gif" border="0"/>
                	</div></td>
                </s:else>
                <s:if test="#request.page.hasNextPage">
                	<td width="54" height="22" valign="middle">
                	<div align="right">
                		<a href="showVote.action?currentPage=${page.currentPage+1}"><img src="images/next.gif" border="0"/></a>
                	</div></td>
                	<td width="49" height="22" valign="middle">
                	<div align="right">
                		<a href="showVote.action?currentPage=${page.totalPage}"><img src="images/last.gif" border="0"/></a>
                	</div></td>
                </s:if>
                <s:else>
                	<td width="54" height="22" valign="middle">
                	<div align="right">
                		<img src="images/next.gif" border="0"/>
                	</div></td>
                	<td width="49" height="22" valign="middle">
                	<div align="right">
                		<img src="images/last.gif" border="0"/>
                	</div></td>
                </s:else>
                  </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
