<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %>  
<html xmlns="http://www.w3.org/1999/xhtml" >
	<head id="Head1" runat = "server"><TITLE>管理后台</TITLE>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">		
		
	</head>  
	 
 <frameset rows="150,*,30" cols="800" frameborder="NO" border="0" framespacing="0"       >
	    <frame src="Top.aspx" name="topFrame" scrolling="no" >
	        <frameset cols="184,*" frameborder="yes" border="0" framespacing="0" id="frame" >
		        <frame name="frmLeft"　   src="Left.aspx" scrolling="no" noresize marginwidth="0" marginheight="0"  >
		        <frame name="OfficeMain"     src="main.aspx"  scrolling="yes" marginwidth="0" marginheight="0"   >
            </frameset>
        <frame src="bottom.aspx" name="bottomFrame" scrolling="no"   />
   </frameset> 
    <NOFRAMES>您的浏览器不支持框架 </NOFRAMES> 
</html>


