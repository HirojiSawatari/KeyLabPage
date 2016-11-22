<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addnews.aspx.cs" Inherits="addnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
      <p>城市与环境学院新闻发布系统</p>
      <p><br />
        
        <asp:Label ID="Label1" runat="server" Text="标题："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="520px"></asp:TextBox>
        <br />
        <br />
        
        
      </p><asp:Label ID="Label2" runat="server" Text="网页："></asp:Label>
  <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" 
            Width="227px" />
    
        <br />
        <br />
        　　<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="上传" 
            Width="84px" />
        　&nbsp;　　　<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="取消" Width="86px" />
        <br />
        <br />
        <br />
    
    </div>
</form>
</body>
</html>
