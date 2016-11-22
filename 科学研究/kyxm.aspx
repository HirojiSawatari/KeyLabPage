<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kyxm.aspx.cs" Inherits="科学研究_kyxm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="序号" 
            DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
            Font-Size="Small">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="项目名册名称" HeaderText="项目名册名称" 
                    SortExpression="项目名册名称" />
                <asp:BoundField DataField="项目来源" HeaderText="项目来源" SortExpression="项目来源" />
                <asp:BoundField DataField="负责人" HeaderText="负责人" SortExpression="负责人" />
                <asp:BoundField DataField="项目类别" HeaderText="类别" SortExpression="项目类别" />
                <asp:BoundField DataField="项目编号" HeaderText="编号" SortExpression="项目编号" />
                <asp:BoundField DataField="立项时间" HeaderText="  起止" SortExpression="立项时间" />
                <asp:BoundField DataField="结项时间" HeaderText="时间" SortExpression="结项时间" />
                <asp:BoundField DataField="项目状态" HeaderText="项目状态" SortExpression="项目状态" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/news_pgg.mdb" 
            SelectCommand="SELECT * FROM [科研项目2010后]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
