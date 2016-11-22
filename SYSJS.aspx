<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SYSJS.aspx.cs" Inherits="SYSJS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
.STYLE2 {
	font-size: 14px;
	line-height: 22px;
}
.STYLE3 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <p align="center" class="STYLE3"><% =strZT %></p>
        <p align="left" class="STYLE2"><% =strNR%></p>
<p align="center"  ><img src="image/<% =strTP1%>" /><br /><img src="image/<% =strTP2%>" /><br /><img src="image/<% =strTP3%>" /><br /><img src="image/<% =strTP4%>" /><br /></p>


    </div>
    </form>
</body>
</html>
