<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiangshi_1.aspx.cs" Inherits="js_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
.STYLE4 {font-size: 14px}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
    .style1
    {
        width: 147px;
    }
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

     <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                  RepeatColumns="4" Width="680px" Height="100%">
                                                <ItemTemplate>
                                                   
                                                  <td width="147" align=center height="206" background="images/pic_book.jpg" class="jianjie"><img src="image/<%# DataBinder.Eval(Container, "DataItem.图片").ToString()%>" width="114" height="131" border="0"/><br />
      <br />
      <span class="STYLE4"> <a href="<%# "jiangsxx.aspx?ID="+DataBinder.Eval(Container, "DataItem.ID") %>"><%# DataBinder.Eval(Container, "DataItem.名称").ToString()%> </a></span></td>
                                                </ItemTemplate>
                                            </asp:DataList>

    </div>
    </form>
</body>
</html>
