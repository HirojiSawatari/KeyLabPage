<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SSSPY_1.aspx.cs" Inherits="SSSPY_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	line-height: 22px;
}
.STYLE2 {
	font-size: 16px;
	font-weight: bold;
}
    .style1
    {
        font-size: x-large;
        font-weight: bold;
    }
    .style2
    {
        font-size: large;
    }
    .style3
    {
        font-size: large;
        font-weight: bold;
    }
    .style4
    {
        text-align: center;
        font-size: large;
    }
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p align="center" class="style1">硕士生培养</p>



    </div>
    <p align="center" class="style3">
        地图学与地理信息系统</p>
                            	<asp:GridView ID="gvData" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    <p class="style2" style="text-align: center">
        <strong>第四纪地质学</strong></p>
                            	<asp:GridView ID="gvData0" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    <p class="style4">
        <strong style="text-align: center">课程与教学论</strong></p>
                            	<asp:GridView ID="gvData1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    <p class="style4">
        <strong style="text-align: center">人文地理学</strong></p>
                            	<asp:GridView ID="gvData2" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    <p class="style4">
        <strong style="text-align: center">生态学</strong></p>
                            	<asp:GridView ID="gvData3" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    <p class="style4">
        <strong style="text-align: center">水文学</strong></p>
                            	<asp:GridView ID="gvData4" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    <p class="style4">
        <strong style="text-align: center">自然地理学</strong></p>
                            	<asp:GridView ID="gvData5" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%"
                                    BackColor="White" BorderColor="#CC9966">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#000000" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="ID" HeaderText="ID" Visible="False" >
		</asp:BoundField>
				<asp:BoundField DataField="研究方向" HeaderText="研究方向" >
		</asp:BoundField>
				<asp:BoundField DataField="教师" HeaderText="教师" >
		</asp:BoundField>

                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
    </form>
</body>
</html>
