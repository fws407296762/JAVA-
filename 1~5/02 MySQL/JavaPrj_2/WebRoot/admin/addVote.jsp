<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����ͶƱ</title>
	<script type="text/javascript" language="javascript">
		var i = 4;
		function addVoteOption(){
			var voteP = document.getElementById("voteOptionList");
			var inputText = document.createTextNode("ѡ��" + (i++) +"����:");
			voteP.appendChild(inputText);
			var inputP = document.createElement("input");
			inputP.type="text";
			inputP.name="voteOption";
			voteP.appendChild(inputP);
			var brP = document.createElement("<br>");
			voteP.appendChild(brP);
		}
	</script>
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> <span style="font-size: 12px">����ͶƱ</span></td>
        <td width="281" background="images/tab_05.gif"></td>
        <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="images/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3">
        <div style="padding-left: 100px;padding-top: 10px;font-size: 12px">
	       	<form action="addVote.action" method="post" name="addForm">
	  		ѡ��ͶƱƵ��:<select name="channel">
	  			<option value="1">NBA</option>
	  			<option value="2">CBA</option>
	  			<option value="3">�������籭</option>
	  			<option value="4">�г�</option>
	  			<option value="5">Ӣ��</option>
	  			<option value="6">F1</option>
	  		</select><br/>
	  		������ͶƱ����:<input type="text" name="voteName"/><br/>
	  		<div id="voteOptionList">
	  		ѡ��1����:<input type="text" name="voteOption"/><br/>
	  		ѡ��2����:<input type="text" name="voteOption"/><br/>
	  		ѡ��3����:<input type="text" name="voteOption"/><br/>
	  		</div>
	  		<input type="button" value="����ͶƱѡ��" onclick="addVoteOption()"/>
	  		<input type="submit" value="����"/>
	  		<input type="reset" value="����"/>
  		</form>
  		</div>
  	</td>
        <td width="9" background="images/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>
        <td background="images/tab_21.gif">&nbsp;</td>
        <td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
