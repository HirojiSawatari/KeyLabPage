<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lunwen.aspx.cs" Inherits="科研成果_lunwen" %>

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
                <asp:BoundField DataField="序号" HeaderText="序号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="序号" />
                <asp:BoundField DataField="第一作者" HeaderText="第一作者" SortExpression="第一作者" />
                <asp:BoundField DataField="合作人" HeaderText="合作人" SortExpression="合作人" />
                <asp:BoundField DataField="论文题目" HeaderText="论文题目" SortExpression="论文题目" />
                <asp:BoundField DataField="期刊" HeaderText="期刊" SortExpression="期刊" />
                <asp:BoundField DataField="发表时间" HeaderText="时间" SortExpression="发表时间" />
                <asp:BoundField DataField="首页码" HeaderText="首页码" SortExpression="首页码" />
                <asp:BoundField DataField="尾页码" HeaderText="尾页码" SortExpression="尾页码" />
                <asp:BoundField DataField="检索" HeaderText="检索" SortExpression="检索" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/zd.mdb" SelectCommand="SELECT * FROM [论文]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
