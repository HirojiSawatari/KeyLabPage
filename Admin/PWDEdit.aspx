<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PWDEdit.aspx.cs" Inherits="ADMIN_PWDEdit" %> 
<HTML>
	<HEAD>
		<title>密码修改</title>	
		<LINK href="../css/CSS.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                width: 256px;
            }
        </style>
	</HEAD>
	<body  >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table cellSpacing="0" cellPadding="5" width="600" align="center" border="0">
					<tr>
						<td >
							<table cellSpacing=0 cellPadding=5 width="100%"  class="table1">
								<tr  >
									<td  class="tdHeader"  height=22 align=center><STRONG>【用户密码修改】</STRONG></td>
								</tr>
								<tr>
									<td height="22">
										<table cellSpacing="0" cellPadding="0" width="100%" border="0" class="table1">
											<tr>
												<td height="22" class="style1">
													<div align="right">新 密 码：</div>
												</td>
												<td height="22" align="left"><asp:textbox id="txtPassword" runat="server" TextMode="Password"></asp:textbox></td>
											</tr>
											<tr>
												<td height="22" class="style1">
													<div align="right">
														新密码确认：</div>
												</td>
												<td height="22" align="left"><asp:textbox id="txtPassword1" runat="server" TextMode="Password"></asp:textbox></td>
											</tr>
											<tr>
												<td colSpan="2" height="22"><asp:label id="lblMsg" runat="server"></asp:label></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="22">
										<div align="center">
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                ImageUrl="~/Images/button_ok.gif" onclick="ImageButton1_Click" 
                                                style="height: 17px" />
                                            <FONT face="宋体">&nbsp;</FONT>
                                        </div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		 
		</form>
	</body>
</HTML>