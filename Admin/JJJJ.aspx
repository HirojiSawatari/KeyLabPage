<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JJJJ.aspx.cs" Inherits="Admin_JJJJ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

	
		<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="../css/CSS2.css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 18px;
            width: 301px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td height="25" align="center" class="tdHeader" colspan="2">
		[基金介绍管理]</td>
	</tr>
			<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 主题：</td>
        <td style="text-align: left; " class="style1">
                                <asp:TextBox id="txt主题" runat="server" Width="261px"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 内容：</td>
        <td style="text-align: left; " class="style1">
                                <asp:TextBox id="txt内容" runat="server" Width="294px" Height="193px" 
                                    TextMode="MultiLine"></asp:TextBox>
             
        </td></tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            &nbsp;</td>
        <td style="text-align: left; " class="style1">
                                &nbsp;</td></tr>
			<tr>
	<td height="25" colspan="2"><div align="center">
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_ok.gif" onclick="btnAdd_Click" />
	&nbsp;</div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>