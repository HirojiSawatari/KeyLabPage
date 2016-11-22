<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>系统登录</title>	
		<LINK href="../css/CSS.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                width: 256px;
            }
            .style2
            {
                border-bottom: 1px solid #000000;
                font-size: 12px;
                font-weight: bold;
                height: 22px;
            }
            .table1
            {
                margin-top: 0px;
            }
        </style>
	</HEAD>
	<body background="../login/loginbg.jpg"  >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table cellSpacing="0" cellPadding="5" width="600" align="center" border="0" 
                    
                    style="background-image: url('../login/loginbgg.jpg'); height: 220px; position: absolute; top: 220px; left: 340px;">
					<tr>
						<td >
							<table cellSpacing=0 cellPadding=5 width="100%"  class="table1">
								<tr  >
									<td  class="style2" align=center><STRONG>
                                        <br />
                                        <br />
                                        <br />
                                        </STRONG></td>
								</tr>
								<tr>
									<td height="22">
										<table cellSpacing="0" cellPadding="0" width="100%" border="0" class="table1">
											<tr>
												<td height="22" class="style1">
													<div align="right">用户名：</div>
												</td>
												<td height="22" align="left"><asp:textbox id="txtPassword" runat="server"></asp:textbox>
                                                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                                </td>
											</tr>
											<tr>
												<td height="22" class="style1">
													<div align="right">
														密码：</div>
												</td>
												<td height="22" align="left"><asp:textbox id="txtPassword1" runat="server" TextMode="Password"></asp:textbox>
                                                    <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                                </td>
											</tr>
                                            <tr>
												<td height="22" class="style1">
													<div align="right">
														验证码：</div>
												</td>
												<td height="22" align="left"><asp:textbox id="Textbox1" runat="server" Width="58px"></asp:textbox>
                                                    <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                                    <asp:Image ID="Image1" runat="server" Height="21px" Width="72px" />
                                                    <asp:LinkButton ID="LinkButton1" runat="server">看不清换一张</asp:LinkButton>
                                                </td>
											</tr>
											<tr>
												<td colSpan="2" height="22" align=center>
                                                    <asp:label id="lblMsg" runat="server"
                                                        ForeColor="#CC0000" style="text-align: center" ></asp:label></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="22">
										<div align="center">
                                            <asp:Label ID="Label4" runat="server" Text="　　"></asp:Label>
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                ImageUrl="~/login/btn_login.gif" onclick="ImageButton1_Click" 
                                                Width="49px" />
                                            <FONT face="宋体">&nbsp;</FONT>
                                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                                ImageUrl="~/login/btn_reset.gif" onclick="ImageButton2_Click" 
                                                Width="49px" />
                                        </div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			&nbsp;</div>
		 
		</form>
	</body>
</HTML>