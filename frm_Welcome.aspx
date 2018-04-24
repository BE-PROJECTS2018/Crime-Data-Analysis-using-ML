<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Welcome.aspx.cs" Inherits="My_Application.frm_ESPN" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
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
            width: 956px;
        }
        .style4
        {
            text-align: center;
            font-weight: bold;
            color: #FFFFFF;
        }
        .style5
        {
            text-align: left;
            font-weight: bold;
            color: #FFFFFF;
        }
        .style7
        {
            text-align: center;
        }
        .style32
        {
            text-align: center;
            z-index: 1;
        }
        .style38
        {
            text-align: left;
        }
        .style39
        {
            font-family: Verdana;
            font-size: xx-large;
            text-align: left;
        }
        .style41
        {
            width: 162px;
            font-family: Verdana;
            font-size: small;
            font-weight: bold;
        }
        .style43
        {
            width: 331px;
        }
        .style44
        {
            width: 93px;
        }
        .style45
        {
            width: 93px;
            font-family: Verdana;
            font-size: small;
            font-weight: bold;
        }
        .style55
        {
            text-align: center;
            z-index: 1;
            font-family: Verdana;
            font-size: small;
            font-weight: bold;
        }
        .style56
        {
            text-align: center;
            font-family: Verdana;
            font-size: 11pt;
        }
        .style58
        {
            width: 162px;
            font-family: Verdana;
            font-size: small;
        }
        .style59
        {
            width: 331px;
            font-family: Verdana;
            font-size: small;
        }
        .style60
        {
            text-align: right;
            color: #FFFFFF;
        }
        .style61
        {
            width: 162px;
            font-family: Verdana;
            font-size: small;
            font-weight: bold;
            height: 23px;
        }
        .style62
        {
            width: 331px;
            height: 23px;
        }
        .style63
        {
            width: 93px;
            height: 23px;
        }
        .style64
        {
            height: 23px;
        }
        .style65
        {
            width: 93px;
            color: #999999;
        }
    </style>
</head>

<body >
    <form id="form1" runat="server" submitdisabledcontrols="True" style=" margin-left:5%; background-color: #FFFFFF">
    <uc1:Topmenu ID="Topmenu1" runat="server" />
        <table style="width: 67%;" align="center">
            <tr>
                <td class="style38">
                    <table style="width: 80%;" align="center">
                        <tr>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style45">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style59">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;
                            </td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style61">
                    <asp:Label ID="Label1" runat="server" BackColor="White" Font-Names="Calibri" Font-Size="XX-Large"
                        ForeColor="#94AFAC" Text="welcome" style="font-size: x-large"></asp:Label>
                            </td>
                            <td class="style62">
                                <asp:Label ID="lblUserName" runat="server" Height="38px" Text="lblUserName" Width="220px"
                                    CssClass="style39" Font-Bold="True" Font-Names="Calibri" 
                                    Font-Size="XX-Large" ForeColor="#5A7875"></asp:Label>
                            </td>
                            <td class="style63">
                            </td>
                            <td style="text-align: right" class="style64">
                            </td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style44">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style65">
                                &nbsp;</td>
                            <td style="text-align: left">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style58">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style65">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    &nbsp;
                </td>
            </tr>

            <tr>
                <td class="style32">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style56">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" style="text-align: right">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
