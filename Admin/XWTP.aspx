<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XWTP.aspx.cs" Inherits="Admin_XWTP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
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
        .style3
        {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
     <!--******************************增加页面代码********************************-->

<table cellSpacing="0" cellPadding="0" border="0" class="table">
	<tr>
	<td align="center" class="style3" colspan="2">
		[新闻图片管理]</td>
	</tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		 图片1：</td>
        <td style="text-align: left; " class="style1">
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/images/button_save.gif" onclick="ImageButton1_Click" 
                                    style="height: 17px" />
             
        </td>
        </tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            &nbsp;</td>
        <td style="text-align: left; " class="style1">
                                &nbsp;</td></tr>
				<tr>
                    <td style=" text-align: center; width: 151px; height: 18px;">		
		 图片2：</td>
        <td style="text-align: left; " class="style1">
                                <asp:FileUpload ID="FileUpload5" runat="server" />
                                <asp:ImageButton ID="ImageButton5" runat="server" 
                                    ImageUrl="~/images/button_save.gif" onclick="ImageButton2_Click" />
             
        </td>
    </tr>
    <tr>
        <td style=" text-align: center; width: 151px; height: 18px;">		
		    &nbsp;</td>
        <td style="text-align: left; " class="style1">
                               &nbsp;</td>
        </tr>
    <tr>
        <td style=" text-align: center; width: 151px; height: 18px;">		
		 图片3：</td>
        <td style="text-align: left; " class="style1">
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                                <asp:ImageButton ID="ImageButton3" runat="server" 
                                    ImageUrl="~/images/button_save.gif" onclick="ImageButton3_Click" />
             
        </td>
    </tr>
				<tr class="TdStyle"><td style=" text-align: center; width: 151px; height: 18px;">		
		            &nbsp;</td>
        <td style="text-align: left; " class="style1">
                                &nbsp;</td></tr>
			<tr>
	<td height="25" colspan="2"><div align="center">
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_ok.gif" onclick="btnAdd_Click" />
	&nbsp;<asp:ImageButton ID="btnAdd0" runat="server" 
            ImageUrl="~/images/button_cancel.gif" onclick="btnAdd0_Click" />
	    </div></td></tr>
	</table>

    
    </div>
    </form>
</body>
</html>
