<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bsspy_2_1.aspx.cs" Inherits="研究生培养_ssspy_1_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-family: 宋体;
            font-size: x-large;
        }
        .style2
        {
            font-family: 宋体;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        人文地理学</div>
    <p class="MsoNormal">
        <span class="style2" 
            style="font-size: 14.0pt; mso-hansi-font-family: &quot;Times New Roman&quot;">
        培养目标：</span></p>
    <p class="MsoNormal">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p class="MsoNormal">



<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                  RepeatColumns="1" Width="689px" Height="100%">
                                                <ItemTemplate>
                                                   
   <p align="center" class="STYLE1"><a href="image/<%# DataBinder.Eval(Container, "DataItem.附带文件").ToString()%>" target=_blank><%# DataBinder.Eval(Container, "DataItem.主题").ToString()%></a></p>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            
                                            
    </p>
    </form>
</body>
</html>
