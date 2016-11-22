<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SCSP.aspx.cs" Inherits="Admin_JS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link href="../css/CSS2.css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td height="25" align="center" class="tdHeader" colspan="2">
		[视频维护]</td>
	</tr>
				
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            视频：</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
             
        </td></tr>
			<tr>
                <td style=" text-align: center; width: 151px; height: 18px;">		
		            &nbsp;</td>
        <td style="width: 235px; text-align: left; height: 18px;">
                                <br />
                                <asp:Image ID="Image1" runat="server" Height="160px" Width="225px" />
                                <br />
                </td>
    </tr>
			<tr>
	<td height="25" colspan="2"><div align="center">
		<br />
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_save.gif" onclick="btnAdd_Click" />
	&nbsp;</div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>
