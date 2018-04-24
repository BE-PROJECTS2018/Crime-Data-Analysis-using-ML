<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEvidance.aspx.cs" Inherits="SmartSystems_NS.AddEvidance" %>
<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="centered">
            <uc1:Topmenu ID="Topmenu1" runat="server" />

            <br />            <br />            <br />            <br />            <br />            <br />
             <table align="center" border="0" width="65%">
                 <tr><td align="right">
                     <asp:Label ID="Label1" runat="server" Text="Enter Case No:" Font-Names="Calibri"></asp:Label></td><td align="left">&nbsp;
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find Evidance Files" />
                     </td></tr>
                 <tr><td align="right">
                     <asp:Label ID="Label2" runat="server" Text="Enter Description:" Font-Names="Calibri"></asp:Label><hr /></td><td align="left">&nbsp;
                         <asp:TextBox ID="TextBox2" runat="server" Width="266px"></asp:TextBox>
                         <hr /></td></tr>
    <tr><td align="center" colspan="2" >
            <asp:FileUpload ID="FileUpload1" runat="server" />
        
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadFile" />

            </td></tr></table><br /><br />
             <table align="center" width="65%" >
    <tr><td align=center  >
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No files uploaded" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Font-Names="Calibri" GridLines="Horizontal" DataKeyNames="CaseNo">

                <Columns>

                    <asp:BoundField DataField="CaseNo" HeaderText="Case No" />

                    <asp:BoundField DataField="Filename" HeaderText="File Name" />

                    <asp:TemplateField>

                        <ItemTemplate>

                            <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Filename") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField>

                        <ItemTemplate>

                            <asp:LinkButton ID="lnkDelete" Text="Delete" CommandArgument='<%# Eval("Filename") %>' runat="server" OnClick="DeleteFile" />

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView></td></tr></table>
        </div>
    </form>
</body>
</html>
