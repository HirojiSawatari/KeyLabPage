<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                  RepeatColumns="4" Width="680px" Height="100%">
            <ItemTemplate>
    
                <embed src="video/<%# DataBinder.Eval(Container, "DataItem.视频").ToString()%>" hidden="no" autostart="true" 
                    style="height: 255px; width: 280px">
                     </ItemTemplate>
                                            </asp:DataList>

                    </div>
    </form>
</body>
</html>
