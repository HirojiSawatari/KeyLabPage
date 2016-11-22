<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="FramePage_Top" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Top</title>
<link href="../css/css.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" >
    <form id="Form1"  runat="server">
     <table WIDTH="100%" BORDER=0 align="center" CELLPADDING=0 CELLSPACING=0  style="height: 148px">
      <tr>
		<td height="53">
            <img src="../images/lv.gif" style="width: 100%; height: 120px" /></td>
      </tr>
      <tr>
		<td height="28"  >
		<table border="0" cellspacing="0" cellpadding="0"  width=100%>
          <tr>
            <td height="29" class="style1"    >&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lbltitle"　></asp:Label></td>
            <td height="29" class="style1" align="right"    >
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0099CC" 
                    onclick="LinkButton1_Click">退出系统</asp:LinkButton>
&nbsp;&nbsp;
                             </td>
          </tr>
        </table>
        </TD>
	</TR>
	</table>
      </form>
</body>
</html>
