<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ruanjian.aspx.cs" Inherits="科研成果_ruanjian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1" 
            AllowPaging="True" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="序号" ForeColor="#333333" GridLines="None" 
            Font-Size="Small">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="软件名称" HeaderText="软件名称" SortExpression="软件名称" />
                <asp:BoundField DataField="著作权人" HeaderText="著作权人" SortExpression="著作权人" />
                <asp:BoundField DataField="软件登记号" HeaderText="软件登记号" SortExpression="软件登记号" />
                <asp:BoundField DataField="授权单位" HeaderText="授权单位" SortExpression="授权单位" />
                <asp:BoundField DataField="授权时间" HeaderText="授权时间" SortExpression="授权时间" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/zd.mdb" 
            SelectCommand="SELECT * FROM [软件著作权]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
