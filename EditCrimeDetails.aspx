<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCrimeDetails.aspx.cs" Inherits="SmartSystems_NS.EditCrimeDetails" %>
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
                     <asp:Label ID="Label1" runat="server" Text="Enter Case No:" Font-Names="Calibri"></asp:Label></td>
                     <td align="left">&nbsp;<asp:TextBox ID="txtcase_no" runat="server" Width="192px"></asp:TextBox></td>
                     <td align="left">
                         <asp:Button ID="Button1" runat="server" Text="Submit" Width="66px" OnClick="Button1_Click" />
                     </td></tr>
                 </table>

                 <table align="center" border="0" width="65%">
                 <tr><td align="right">
                     &nbsp;</td>
                     <td align="left">&nbsp;</td></tr>
                 <tr><td align="center" colspan="2">

                     <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="292px" CellPadding="0" Font-Names="Calibri"
                         ForeColor="#333333" AutoGenerateEditButton="True"  DataKeyNames="CaseNo" DefaultMode="Edit"
                         OnItemUpdating="DetailsView1_ItemUpdating" AutoGenerateRows="False" onmodechanging="DetailsView1_ModeChanging1" > 
                         <AlternatingRowStyle BackColor="White" />
                         <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                         <EditRowStyle BackColor="#2461BF" Font-Names="Calibri" />
                         <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />

                         <Fields>

                             <asp:TemplateField HeaderText="CaseName" Visible="True">
                                 

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox1" Text='<%# Bind("CaseName")%>' runat="server" />
                                 </EditItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="FIR">

                                

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox2" Text='<%# Bind("FIR")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Name">


                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox3" Text='<%# Bind("Cr_Name")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Age">

                                 <ItemTemplate><asp:Label ID="Cr_Age" Text='<%# Eval("Cr_Age")%>'  runat="server"  /></ItemTemplate>

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox4" Text='<%# Bind("Cr_Age")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Gender">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox5" Text='<%# Bind("Cr_Gender")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_region">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox6" Text='<%# Bind("Cr_region")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Education">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox7" Text='<%# Bind("Cr_Education")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Intensity">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox8" Text='<%# Bind("Cr_Intensity")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Details">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox9" Text='<%# Bind("Cr_Details")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Type">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox10" Text='<%# Bind("Cr_Type")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_year">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox11" Text='<%# Bind("Cr_year")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                              <asp:TemplateField HeaderText="Cr_Mobile">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox12" Text='<%# Bind("Cr_Mobile")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Bloodgroup">


                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox13" Text='<%# Bind("Cr_Bloodgroup")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Email">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox14" Text='<%# Bind("Cr_Email")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_City">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox15" Text='<%# Bind("Cr_City")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Religion">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox16" Text='<%# Bind("Cr_Religion")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Habits">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox17" Text='<%# Bind("Cr_Habits")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Family">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox18" Text='<%# Bind("Cr_Family")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="CR_Height">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox19" Text='<%# Bind("CR_Height")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_weight">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox20" Text='<%# Bind("Cr_weight")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_SkinColor">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox21" Text='<%# Bind("Cr_SkinColor")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Offname">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox22" Text='<%# Bind("Cr_Offname")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_PS">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox23" Text='<%# Bind("Cr_PS")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Date">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox24" Text='<%# Bind("Cr_Date")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Motive">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox25" Text='<%# Bind("Cr_Motive")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="CR_method">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox26" Text='<%# Bind("CR_method")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Mo">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox27" Text='<%# Bind("Cr_Mo")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_status">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox28" Text='<%# Bind("Cr_status")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_Hospital">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox29" Text='<%# Bind("Cr_Hospital")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Doctor">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox30" Text='<%# Bind("Cr_Doctor")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cr_Injury">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox31" Text='<%# Bind("Cr_Injury")%>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Cr_PastHistory">

                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox32" Text='<%# Bind("Cr_PastHistory")%>' runat="server" />
                                 </EditItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="CaseNo">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox33" Text='<%# Bind("CaseNo") %>' runat="server" /></EditItemTemplate>
                             </asp:TemplateField>
                         </Fields>

                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />

                     </asp:DetailsView>
                     <br />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database_ConnectionString %>" UpdateCommand="UPDATE [dbo].[tbl_crimedetails]
   SET  
      [CaseName] = @CaseName, 
      [FIR] = @FIR, 
      [Cr_Name] = @Cr_Name, 
      [Cr_Age] = @Cr_Age, 
      [Cr_Gender] = @Cr_Gender, 
      [Cr_region] = @Cr_region, 
      [Cr_Education] = @Cr_Education, 
      [Cr_Intensity] = @Cr_Intensity, 
      [Cr_Details] = @Cr_Details, 
      [Cr_Type] = @Cr_Type, 
      [Cr_year] = @Cr_year, 
      [Cr_Mobile] = @Cr_Mobile, 
      [Cr_Bloodgroup] = @Cr_Bloodgroup, 
      [Cr_Email] = @Cr_Email, 
      [Cr_City] = @Cr_City, 
      [Cr_Religion] = @Cr_Religion, 
      [Cr_Habits] = @Cr_Habits, 
      [Cr_Family] = @Cr_Family, 
      [CR_Height] = @CR_Height, 
      [Cr_weight] = @Cr_weight, 
      [Cr_SkinColor] = @Cr_SkinColor, 
      [Cr_Offname] = @Cr_Offname, 
      [Cr_PS] = @Cr_PS, 
      [Cr_Date] = @Cr_Date, 
      [Cr_Motive] = @Cr_Motive, 
      [CR_method] = @CR_method, 
      [Cr_Mo] = @Cr_Mo, 
      [Cr_status] = @Cr_status, 
      [Cr_Hospital] = @Cr_Hospital, 
      [Cr_Doctor] = @Cr_Doctor, 
      [Cr_Injury] = @Cr_Injury, 
      [Cr_PastHistory] = @Cr_PastHistory, 
      [Cr_RecordedDate] = Getdate()
 WHERE CaseNo=@caseno" SelectCommand="SELECT [CaseNo]
      ,[CaseName]
      ,[FIR]
      ,[Cr_Name]
      ,[Cr_Age]
      ,[Cr_Gender]
      ,[Cr_region]
      ,[Cr_Education]
      ,[Cr_Intensity]
      ,[Cr_Details]
      ,[Cr_Type]
      ,[Cr_year]
      ,[Cr_Mobile]
      ,[Cr_Bloodgroup]
      ,[Cr_Email]
      ,[Cr_City]
      ,[Cr_Religion]
      ,[Cr_Habits]
      ,[Cr_Family]
      ,[CR_Height]
      ,[Cr_weight]
      ,[Cr_SkinColor]
      ,[Cr_Offname]
      ,[Cr_PS]
      ,[Cr_Date]
      ,[Cr_Motive]
      ,[CR_method]
      ,[Cr_Mo]
      ,[Cr_status]
      ,[Cr_Hospital]
      ,[Cr_Doctor]
      ,[Cr_Injury]
      ,[Cr_PastHistory]
      ,[Cr_RecordedDate]
      ,[idd]
  FROM [dbo].[tbl_crimedetails] where CaseNo=@caseno">



                         <UpdateParameters>
                             <asp:Parameter Name="CaseName" />
                             <asp:Parameter Name="FIR" />
                             <asp:Parameter Name="Cr_Name" />
                             <asp:Parameter Name="Cr_Age" />
                             <asp:Parameter Name="Cr_Gender" />
                             <asp:Parameter Name="Cr_region" />
                             <asp:Parameter Name="Cr_Education" />
                             <asp:Parameter Name="Cr_Intensity" />
                             <asp:Parameter Name="Cr_Details" />
                             <asp:Parameter Name="Cr_Type" />
                             <asp:Parameter Name="Cr_year" />
                             <asp:Parameter Name="Cr_Mobile" />
                             <asp:Parameter Name="Cr_Bloodgroup" />
                             <asp:Parameter Name="Cr_Email" />
                             <asp:Parameter Name="Cr_City" />
                             <asp:Parameter Name="Cr_Religion" />
                             <asp:Parameter Name="Cr_Habits" />
                             <asp:Parameter Name="Cr_Family" />
                             <asp:Parameter Name="CR_Height" />
                             <asp:Parameter Name="Cr_weight" />
                             <asp:Parameter Name="Cr_SkinColor" />
                             <asp:Parameter Name="Cr_Offname" />
                             <asp:Parameter Name="Cr_PS" />
                             <asp:Parameter Name="Cr_Date" />
                             <asp:Parameter Name="Cr_Motive" />
                             <asp:Parameter Name="CR_method" />
                             <asp:Parameter Name="Cr_Mo" />
                             <asp:Parameter Name="Cr_status" />
                             <asp:Parameter Name="Cr_Hospital" />
                             <asp:Parameter Name="Cr_Doctor" />
                             <asp:Parameter Name="Cr_Injury" />
                             <asp:Parameter Name="Cr_PastHistory" />

                             <asp:Parameter Name="caseno" />

                         </UpdateParameters>
                     </asp:SqlDataSource>
                     <br />
                     </td>
                     </tr>
                 </table>
    </div>
    </form>
</body>
</html>
