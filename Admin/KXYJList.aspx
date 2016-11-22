<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KXYJList.aspx.cs" Inherits="Admin_KXYJList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title></title>
    <link href="../css/CSS.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div align="center">
            <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" id="Table1">
                <tr>
                    <td   valign="top">
                        <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
                            <tr>
                                <td >
                                    <table  
                                        cellpadding="5" width="100%" 
                                        border="0" cellspacing="0">
                                        <tr>
                                           <td height="25" width="30%" align="center" class="tdHeader"> [科学研究信息管理]</td>
	                                   
                                        </tr>
                                       
                                        <tr>
                                           <td height="25" width="30%" align="right" class="tdHeader"> 
		<asp:ImageButton ID="btnAdd" runat="server" 
            ImageUrl="~/images/button_add.gif" onclick="btnAdd_Click" />
	                                        </td>
	                                   
                                        </tr>
                                       
                                    </table>
                                </td>
                            </tr>
                            <tr>
                            <td>
                            	<asp:GridView ID="gvData" runat="server" 
                                    AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" SkinID="GridViewAuto" 
                                    UseAccessibleHeader="False" Width="100%" onrowcommand="gvData_RowCommand" 
                                    onrowcreated="gvData_RowCreated" onrowdatabound="gvData_RowDataBound" 
                                    BackColor="White" BorderColor="#CC9966" AllowSorting="True" 
                                    DataKeyNames="序号" DataSourceID="AccessDataSource1">
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <EmptyDataTemplate>
                                        <div style="text-align:center;vertical-align:middle">
                                            <br />
                                            找不到和您的查询条件相符的信息 
                                        </div>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    
                                    <Columns>
                                        		<asp:BoundField DataField="序号" HeaderText="序号" SortExpression="序号" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="项目名册名称" HeaderText="项目名册名称" ReadOnly="True"/>
                <asp:BoundField DataField="项目来源" HeaderText="项目来源" ReadOnly="True"/>
                <asp:BoundField DataField="负责人" HeaderText="负责人"/>
                <asp:BoundField DataField="项目编号" HeaderText="项目编号"/>
                <asp:BoundField DataField="立项时间" HeaderText="立项时间"/>
		                                        
                <asp:BoundField DataField="项目状态" HeaderText="项目状态" />
                                                <asp:BoundField DataField="结项时间" HeaderText="结项时间"/>
                                                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" 
                                                    ShowEditButton="True" />
                                    </Columns>
                                    <PagerSettings Visible="False" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                </asp:GridView>
                            
                            </td>
                            </tr>
                            <tr>
                                <td  
                                    align="right">
                                    <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lblPageCount" runat="server"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lblCount" runat="server"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="btnFirst" runat="server" CommandArgument="0" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">最首页</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnPrev" runat="server" CommandArgument="prev" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">前一页</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnNext" runat="server" CommandArgument="next" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">后一页</asp:LinkButton>
                                    &nbsp;
                                    <asp:LinkButton ID="btnLast" runat="server" CommandArgument="last" 
                                        Font-Size="8pt" ForeColor="navy" OnClick="PagerButtonClick">最后页</asp:LinkButton>
                                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                        ConflictDetection="CompareAllValues" DataFile="~/news_pgg.mdb" 
                                        DeleteCommand="DELETE FROM [科研项目2010后] WHERE [序号] = ? AND (([项目名册名称] = ?) OR ([项目名册名称] IS NULL AND ? IS NULL)) AND (([项目来源] = ?) OR ([项目来源] IS NULL AND ? IS NULL)) AND (([负责人] = ?) OR ([负责人] IS NULL AND ? IS NULL)) AND (([项目编号] = ?) OR ([项目编号] IS NULL AND ? IS NULL)) AND (([立项时间] = ?) OR ([立项时间] IS NULL AND ? IS NULL)) AND (([项目状态] = ?) OR ([项目状态] IS NULL AND ? IS NULL)) AND (([结项时间] = ?) OR ([结项时间] IS NULL AND ? IS NULL))" 
                                        InsertCommand="INSERT INTO [科研项目2010后] ([序号], [项目名册名称], [项目来源], [负责人], [项目编号], [立项时间], [项目状态], [结项时间]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectCommand="SELECT [序号], [项目名册名称], [项目来源], [负责人], [项目编号], [立项时间], [项目状态], [结项时间] FROM [科研项目2010后]" 
                                        UpdateCommand="UPDATE [科研项目2010后] SET [项目名册名称] = ?, [项目来源] = ?, [负责人] = ?, [项目编号] = ?, [立项时间] = ?, [项目状态] = ?, [结项时间] = ? WHERE [序号] = ? AND (([项目名册名称] = ?) OR ([项目名册名称] IS NULL AND ? IS NULL)) AND (([项目来源] = ?) OR ([项目来源] IS NULL AND ? IS NULL)) AND (([负责人] = ?) OR ([负责人] IS NULL AND ? IS NULL)) AND (([项目编号] = ?) OR ([项目编号] IS NULL AND ? IS NULL)) AND (([立项时间] = ?) OR ([立项时间] IS NULL AND ? IS NULL)) AND (([项目状态] = ?) OR ([项目状态] IS NULL AND ? IS NULL)) AND (([结项时间] = ?) OR ([结项时间] IS NULL AND ? IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_序号" Type="Int32" />
                                            <asp:Parameter Name="original_项目名册名称" Type="String" />
                                            <asp:Parameter Name="original_项目名册名称" Type="String" />
                                            <asp:Parameter Name="original_项目来源" Type="String" />
                                            <asp:Parameter Name="original_项目来源" Type="String" />
                                            <asp:Parameter Name="original_负责人" Type="String" />
                                            <asp:Parameter Name="original_负责人" Type="String" />
                                            <asp:Parameter Name="original_项目编号" Type="String" />
                                            <asp:Parameter Name="original_项目编号" Type="String" />
                                            <asp:Parameter Name="original_立项时间" Type="String" />
                                            <asp:Parameter Name="original_立项时间" Type="String" />
                                            <asp:Parameter Name="original_项目状态" Type="String" />
                                            <asp:Parameter Name="original_项目状态" Type="String" />
                                            <asp:Parameter Name="original_结项时间" Type="String" />
                                            <asp:Parameter Name="original_结项时间" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="序号" Type="Int32" />
                                            <asp:Parameter Name="项目名册名称" Type="String" />
                                            <asp:Parameter Name="项目来源" Type="String" />
                                            <asp:Parameter Name="负责人" Type="String" />
                                            <asp:Parameter Name="项目编号" Type="String" />
                                            <asp:Parameter Name="立项时间" Type="String" />
                                            <asp:Parameter Name="项目状态" Type="String" />
                                            <asp:Parameter Name="结项时间" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="项目名册名称" Type="String" />
                                            <asp:Parameter Name="项目来源" Type="String" />
                                            <asp:Parameter Name="负责人" Type="String" />
                                            <asp:Parameter Name="项目编号" Type="String" />
                                            <asp:Parameter Name="立项时间" Type="String" />
                                            <asp:Parameter Name="项目状态" Type="String" />
                                            <asp:Parameter Name="结项时间" Type="String" />
                                            <asp:Parameter Name="original_序号" Type="Int32" />
                                            <asp:Parameter Name="original_项目名册名称" Type="String" />
                                            <asp:Parameter Name="original_项目名册名称" Type="String" />
                                            <asp:Parameter Name="original_项目来源" Type="String" />
                                            <asp:Parameter Name="original_项目来源" Type="String" />
                                            <asp:Parameter Name="original_负责人" Type="String" />
                                            <asp:Parameter Name="original_负责人" Type="String" />
                                            <asp:Parameter Name="original_项目编号" Type="String" />
                                            <asp:Parameter Name="original_项目编号" Type="String" />
                                            <asp:Parameter Name="original_立项时间" Type="String" />
                                            <asp:Parameter Name="original_立项时间" Type="String" />
                                            <asp:Parameter Name="original_项目状态" Type="String" />
                                            <asp:Parameter Name="original_项目状态" Type="String" />
                                            <asp:Parameter Name="original_结项时间" Type="String" />
                                            <asp:Parameter Name="original_结项时间" Type="String" />
                                        </UpdateParameters>
                                    </asp:AccessDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>


