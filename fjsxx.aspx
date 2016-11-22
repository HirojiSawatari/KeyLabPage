<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fjsxx.aspx.cs" Inherits="jsxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 25px;
	margin-top: 0px;
	margin-right: 4px;
	margin-bottom: 0px;
}
.jianjie {	font-weight: bold;
}
.jianjie {	font-weight: bold;
}
.jianjie {	font-weight: bold;
}
.jianjie {	font-weight: bold;
}
.jianjie {	font-weight: bold;
}
.jianjie {	color: #F00;
}
.jianjie {	text-align: center;
}
.jianjie {	text-align: center;
}
.STYLE2 {
	font-size: 14px;
	line-height: 22px;
}
.FONT1 {
	font-size: 14px;
	font-style: normal;
	line-height: normal;
	font-weight: normal;
	font-variant: normal;
	letter-spacing: 10pc;
	word-spacing: 10em;
}
.STYLE3 {
	font-size: 14px;
	line-height: 22px;
}
.STYLE4 {
	font-size: 14px;
	line-height: 22px;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>


<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                  RepeatColumns="1" Width="680px" Height="100%">
                                                <ItemTemplate>
                                                   
    <p class="STYLE2">&nbsp;</p>
<p class="STYLE2"><img src="image/<%# DataBinder.Eval(Container, "DataItem.图片").ToString()%>" width="114" height="131" hspace="12" align="left" /><strong><%# DataBinder.Eval(Container, "DataItem.名称").ToString()%></strong>，<%# DataBinder.Eval(Container, "DataItem.介绍").ToString()%> </p>
<p class="STYLE3">&nbsp;</p>
<p class="STYLE2">&nbsp;</p>
<p class="STYLE2">&nbsp;</p>
                                                </ItemTemplate>
                                            </asp:DataList>
    </div>
    </form>
</body>
</html>
