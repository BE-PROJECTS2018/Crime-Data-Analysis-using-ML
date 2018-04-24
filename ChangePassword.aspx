<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="SmartSystems_NS.changePassword1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ChangePassword</title>
    <style type="text/css">
        .style22
        {
            font-family: Verdana;
            font-size: small;
            width: 314px;
            text-align: right;
        }
        .style23
        {
            font-family: Verdana;
            font-size: small;
        }
    
.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

        .RadInput_Default
        {
            vertical-align: middle;
        }
        .RadInput_Default
        {
            font: 12px arial,sans-serif;
        }
        .RadInput_Default
        {
            vertical-align: middle;
        }
        .RadInput_Default
        {
            font: 12px arial,sans-serif;
        }
        .style24
        {
            width: 146px;
            text-align: left;
        }
        .style25
        {
            width: 314px;
            text-align: right;
        }
    
.RadMenu
{
	white-space:nowrap;
	float:left;
	position:relative;
}

.RadMenu_Sunset
{
	text-align:left;
}

div.RadMenu_Sunset ul.rmHorizontal.rmRootGroup { padding: 0; }

div.RadMenu_Sunset ul.rmHorizontal { padding: 0 2px 0 0; }

.RadMenu ul.rmRootGroup
{
	display:block;
}

.RadMenu .rmRootGroup
{
	margin:0;
	padding:0;
	position:relative;
	left:0;
}

.RadMenu_Sunset .rmRootGroup
{
	background: #f4ede1;
	border: 1px solid #bdbd82;
}

.RadMenu .rmHorizontal .rmItem
{
	clear:none;
}

.RadMenu .rmItem
{
	float:left;
	position:relative;
	list-style-image: none;
	list-style-position:outside;
	list-style:none;	
}

.RadMenu a.rmLink
{
	cursor:default;
	display:block;	
}


.RadMenu .rmLink
{
	width:auto;
}

.RadMenu_Sunset .rmLink
{
	color: #272722;
	text-decoration: none;
	font: normal 11px/20px arial,sans-serif;
	padding: 1px;
}

.RadMenu .rmText
{
	display:block;
}

.RadMenu_Sunset .rmText
{
	padding: 0 15px;
}

        .style26
        {
            text-align: left;
        }
        .style27
        {
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }

        .style28
        {
            height: 156px;
            width: 861px;
        }

    </style>
  
</head>
<body  bgcolor="#eeebe4" style="text-align: center">
    <form id="form1" style="background-color:White; width: 766px;"  runat="server">
    <div id="centered" style="border-color: #99CCFF" >
     <table style="width: 86%; height: 100%;">
        <tr>
            <td align="left">
                    <asp:Image ID="Image1" runat="server" Height="64px" ImageUrl="~/IMG/MyCompanyLogo.png"
                        Width="189px" Style="text-align: center" />
            </td>
        </tr>
        <tr>
            <td align="left">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF6600">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">

    <table style="width: 749px">
        <tr>
            <td class="style22">
                &nbsp;User Name</td>
            <td class="style24">
                                <telerik:RadTextBox ID="txtUserName" Runat="server" ReadOnly="True">
                                </telerik:RadTextBox>
                                
                            </td>
            <td class="style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Please enter the User name." 
                    style="font-size: small; font-family: Verdana"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Old Password:</td>
            <td class="style24">
                <asp:TextBox ID="txtOldPassword" runat="server" BorderStyle="Solid" 
                    BorderWidth="1px" Width="123px" TextMode="Password"></asp:TextBox>
                
            </td>
            <td class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtOldPassword" 
                    ErrorMessage="Please enter the old Password." style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22">
                New Password:</td>
            <td class="style24">
                                <telerik:RadTextBox ID="txtNewPassword" Runat="server" 
                    TextMode="Password">
                                </telerik:RadTextBox>
                                
            </td>
            <td class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNewPassword" 
                    ErrorMessage="Please enter the new Password." style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22" valign="top">
                Confirm Password:</td>
            <td class="style24" valign="top">
                                <telerik:RadTextBox ID="txtConfirmPassword" Runat="server" 
                    TextMode="Password">
                                </telerik:RadTextBox>
                                
            </td>
            <td class="style26">
                <span class="style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Please enter the Confirmation Password"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Passwords does not match."></asp:CompareValidator>
                </span>
                <br class="style23" />
            </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style24">
                <asp:Button ID="btnSubmit" runat="server" BorderStyle="None" 
                    CssClass="styleback" onclick="btnSubmit_Click" Text="Submit" 
                    Width="67px" Height="25px" />
&nbsp;<asp:Button ID="btnCancle" runat="server" BorderStyle="None" CssClass="styleback" 
                    onclick="btnClose_Click" Text="Cancle" Width="66px" Height="25px" 
                    CausesValidation="False" />
            </td>
            <td class="style26">
                &nbsp;</td>
        </tr>
        <%--<tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style15">
                <asp:LinkButton ID="lnkLogin" runat="server" CausesValidation="False" 
                    ForeColor="#663300" onclick="lnkLogin_Click">Login</asp:LinkButton>
                                </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>--%>
    </table>

            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#E57128" style="color: #FFFFFF" >
                Copyright © 2014 ., All rights reserved</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
