﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XK.aspx.cs" Inherits="Admin_PY" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

		
		
		
		<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="../css/CSS2.css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td align="center" class="style1" colspan="2">
		[学科教师管理]</td>
	</tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            &nbsp;</td>
        <td style="width: 235px; text-align: left; height: 18px;">
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            教师名单：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt教师名单" runat="server" Width="207px" Height="91px" 
                                    TextMode="MultiLine"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            所属专业：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:TextBox id="txt所属专业" runat="server" Width="204px"></asp:TextBox>
             
        </td></tr>
			<tr>
	<td height="25" colspan="2"><div align="center">
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_save.gif" onclick="btnAdd_Click" />
	&nbsp;<asp:ImageButton ID="btnCancel" runat="server" 
            ImageUrl="~/images/button_cancel.gif" onclick="btnCancel_Click" />
	</div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>