<%@ page contentType="text/html; charset=GBK" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������Դ����ϵͳ</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<form name="stipendForm" method="post" action="modifystipend.do?action=addstipend" onSubmit="return stipendValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >н������¼��</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
			
			<input type="reset" value="����" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>н������</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="9%">Ա��������</td>
					    <td width="36%"><input name="name" type="text" class="input">
						<span class="red">*</span></td>
					    <td width="12%"><div align="right">����н��</div></td>
					    <td width="43%"><input name="basic" type="text" class="input" id="basic" />
					      <span class="red">*</span></tr>
					  <tr>
					    <td nowrap align="right" width="9%">������</td>
					    <td><input name="eat" type="text" class="input" id="eat"></td>
					    <td><div align="right">������</div></td>
					    <td><input name="house" type="text" class="input" id="house"></td>
					  </tr>
					  <tr>
					    <td nowrap align="right">ȫ�ڽ���</td>
					    <td><input name="duty" type="text" class="input" id="duty"></td>
					    <td><div align="right">��˰��</div></td>
					    <td><input name="scot" type="text" class="input" id="scot"></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">���ⲹ����</td>
					    <td><input name="other" type="text" class="input" id="other"></td>
					    <td><div align="right">���</div></td>
					    <td><input name="punishment" type="text" class="input" id="punishment"></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">����ʱ�䣺</td>
					    <td><input name="granttime" type="text" class="input" id="granttime">
				        <span class="red">*</span></td>
					    <td colspan="2"><div align="left">ע����Ǯ��λ��Ԫ/RMB��</div></td>
					    </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="�ύ" type="submit" class="button" value="����"/>��
			<input name="����" type="reset" class="button" value="����"/></TD>
		</TR>
		</TABLE>	
</div>
</form>
</body>
</html>

