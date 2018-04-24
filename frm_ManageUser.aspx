<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ManageUser.aspx.cs"
    Inherits="My_Application.frm_ManageUser" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="Topmenu.ascx" TagName="Topmenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #centered
        {
            width: 70%;
            text-align: center;
            border: 0px;
            padding: 0;
            margin: 0 auto;
        }
        .style21
        {
            width: 92px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style25
        {
            width: 191px;
            text-align: left;
        }
        .style23
        {
            width: 132px;
        }
        .style20
        {
            width: 109px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style18
        {
            width: 189px;
        }
        .style26
        {
            width: 92px;
            height: 9px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style24
        {
            height: 9px;
            width: 132px;
        }
        .style19
        {
            height: 9px;
            width: 189px;
        }
        .style12
        {
            height: 9px;
        }
        .style3
        {
            font-family: Verdana;
            font-size: small;
        }
        .style29
        {
            width: 71px;
        }
        .style33
        {
            width: 206px;
            text-align: right;
            color: #006600;
            font-weight: bold;
        }
        .style35
        {
        }
        .style39
        {
            width: 88px;
        }
        .style40
        {
            width: 78px;
        }
        .style41
        {
            width: 75px;
        }
        .style42
        {
            width: 73px;
        }
        body
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
            margin: 0 auto;
        }
        #form1
        {
            width: 965px;
        }
        .style44
        {
            width: 70px;
        }
        .style45
        {
            color: #006600;
            font-weight: bold;
        }
        .style46
        {
            width: 144px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server" >
    <div id="centered">  
            <uc1:Topmenu ID="Topmenu1" runat="server" />
        <table align="center" style="width: 130%;">
        <tr>
            <td colspan="3" align="center" >        
        <table style="width: 99%;" align="center">
            <tr>
            <td class="style46"></td>
                <td style="text-align: left">
                    <table style="width: 95%;">
                        <tr>
                            <td class="style21">
                                &nbsp;</td>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style23">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style21">
                                &nbsp;</td>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style23">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style21">
                                &nbsp;
                            </td>
                            <td class="style25">
                                &nbsp;
                            </td>
                            <td class="style23">
                                &nbsp;
                            </td>
                            <td class="style20">
                                &nbsp;
                            </td>
                            <td class="style18">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                Login ID :
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="txtLoginID" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="155px" BorderWidth="1px" Height="18px"></asp:TextBox>
                                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Solid" Height="20px"
                                    ImageUrl="~/IMG/icon-search.gif" Width="22px" OnClick="ImageButton1_Click" 
                                    CausesValidation="False" />
                            </td>
                            <td class="style23">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                Full
                                Name :
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="txtEmpName" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="210px" BorderWidth="1px" Height="20px"></asp:TextBox>
                            </td>
                            <td class="style24">
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtEmpName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style20">
                                Access :
                            </td>
                            <td class="style19">
                                <telerik:RadComboBox ID="ddlAccessLevel" runat="server" Skin="Sunset" Height="50px">
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </telerik:RadComboBox>
                            </td>
                            <td class="style12">
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                Password :</td>
                            <td class="style25">
                                <asp:TextBox ID="txtpass" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="210px" BorderWidth="1px" Height="20px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="style24">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style26">
                                Email Id :</td>
                            <td class="style25">
                                <asp:TextBox ID="txtemail" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="210px" BorderWidth="1px" Height="20px"></asp:TextBox>
                            </td>
                            <td class="style24">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="Enter Valid email" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ControlToValidate="txtemail"></asp:RegularExpressionValidator>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="5">
                                <table style="width: 102%;">
                                    <tr>
                                        <td class="style35" colspan="4">
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginID"
                                                Display="Dynamic" ErrorMessage="please enter Login ID"></asp:RequiredFieldValidator>
                                            &nbsp;<table style="width: 100%;">
                                                <tr>
                                                    <td class="style40">
                                                        &nbsp;
                                                        </td>
                                                    <td class="style42">
                                                        <asp:Button ID="Button1" runat="server" Text="Clear" Width="55px" BackColor="#F4EDE1"
                                                            BorderColor="#EC7C32" BorderStyle="Outset" BorderWidth="1px" CausesValidation="False"
                                                            Height="27px" OnClick="Button1_Click" />
                                                    </td>
                                                    <td class="style41">
                                                        <asp:Button ID="cmdUpdate" runat="server" Text="Update" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                            BorderStyle="Outset" BorderWidth="1px" Height="27px" Width="55px" OnClick="cmdUpdate_Click" />
                                                    </td>
                                                    <td class="style44">
                                                        <asp:Button ID="cmdCreate" runat="server" Text="Create" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                            BorderStyle="Outset" BorderWidth="1px" Height="27px" Width="55px" OnClick="cmdCreate_Click" />
                                                    </td>
                                                    <td>
                                                        <asp:Button ID="cmdReset" runat="server" Text="Reset Password" 
                                                            BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                            BorderStyle="Outset" BorderWidth="1px" Height="27px" Width="114px" 
                                                            OnClick="cmdReset_Click" />
                                                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                            BorderStyle="Outset" BorderWidth="1px" Height="27px" Width="55px" onclick="btnDelete_Click" 
                                                            />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="text-align: right">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style39">
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style29">
                                            &nbsp;
                                        </td>
                                        <td class="style33">
                                            <asp:Label ID="lblResetPwd" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td style="text-align: right" class="style45">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    </table>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</td></tr></table></div>

    </form>
</body>
</html>
