<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="Topmenu.ascx.cs" Inherits="SmartSystems.Topmenu" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css" >
.item-font
{
    font-size: Medium !important;
}
        .body
        {
            margin: 0;
            padding: 0;
            padding-top: 10px;
            padding-left: 10%;
            padding-right: 10%;
            text-align: center;
        }
        #centered
        {
            width: 70%;
            text-align: center;
            border: 0px;
            padding: 0;
            margin: 0 auto;}

</style>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div id="centered" style="border-color: #99CCFF">
        <div>
            <div style="text-align: left">
                <asp:Image ID="Image1" runat="server" Height="260px" ImageUrl="~/IMG/investigations.jpg"
                    Width="960px" Style="text-align: center" />
            </div>
        </div>
<telerik:RadMenu ID="RadMenu1" Runat="server" Skin="Forest" 
    style="top: 0px; left: 0px; height: 34px; width: 958px">
    <CollapseAnimation Duration="200" Type="OutQuint" />
    <Items>
        <telerik:RadMenuItem runat="server" CssClass="item-font" 
            NavigateUrl="~/frm_Welcome.aspx" Text="Home">
        </telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" CssClass="item-font" Text="Data Entry">
            <Items>
                <telerik:RadMenuItem runat="server" CssClass="item-font" 
                    NavigateUrl="~/Add_Crime.aspx" Text="Add Crime Details">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" NavigateUrl="~/AddEvidance.aspx" Text="Add/View Evidance">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" Text="Edit Crime Details" NavigateUrl="~/EditCrimeDetails.aspx">
                </telerik:RadMenuItem>
            </Items>
        </telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" CssClass="item-font" Text="Administration">
            <Items>
                <telerik:RadMenuItem runat="server" CssClass="item-font" 
                    NavigateUrl="~/UserList.aspx" Text="User List">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" CssClass="item-font" 
                    NavigateUrl="~/frm_ManageUser.aspx" Text="User Management">
                </telerik:RadMenuItem>
            </Items>
        </telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" CssClass="item-font" Text="Crime Analysis Reports">
            <Items>
                <telerik:RadMenuItem runat="server" CssClass="item-font" 
                    NavigateUrl="~/CriminalList.aspx" Text="Criminal List">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" CssClass="item-font" NavigateUrl="~/SearchCriminal.aspx" Text="Search Criminal List">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" CssClass="item-font" 
                    NavigateUrl="~/CriminalList_region.aspx" Text="Crime Report(Region)">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" CssClass="item-font" 
                    NavigateUrl="~/CriminalList_Gender.aspx" Text="Crime Report(Gender)">
                </telerik:RadMenuItem>
            </Items>
        </telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" CssClass="item-font" 
            Text="Crime Suspect Analysis" NavigateUrl="~/Calc_CrimeSuspect.aspx">
        </telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" CssClass="item-font" 
            NavigateUrl="~/Logout.aspx" Text="Logout">
        </telerik:RadMenuItem>
    </Items>
</telerik:RadMenu>
</div>



