<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiangli.aspx.cs" Inherits="科研成果_jiangli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="序号" DataSourceID="AccessDataSource1" ForeColor="#333333" 
            GridLines="None" Font-Size="Small">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="序号" HeaderText="序号" ReadOnly="True" 
                    SortExpression="序号" InsertVisible="False" />
                <asp:BoundField DataField="奖励名称" HeaderText="奖励名称" SortExpression="奖励名称" />
                <asp:BoundField DataField="年份" HeaderText="年份" SortExpression="年份" />
                <asp:BoundField DataField="编号" HeaderText="编号" SortExpression="编号" />
                <asp:BoundField DataField="等级" HeaderText="等级" SortExpression="等级" />
                <asp:BoundField DataField="获奖人" HeaderText="获奖人" SortExpression="获奖人" />
                <asp:BoundField DataField="奖励单位" HeaderText="奖励单位" SortExpression="奖励单位" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/zd.mdb" 
            SelectCommand="SELECT * FROM [奖励]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
