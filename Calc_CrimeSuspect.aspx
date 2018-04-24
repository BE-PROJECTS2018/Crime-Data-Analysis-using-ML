<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc_CrimeSuspect.aspx.cs" Inherits="SmartSystems_NS.Calc_CrimeSuspect" %>

<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style>
    .CSSTableGenerator {
	margin:0px;padding:0px;
	width:55%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:14px;
	-webkit-border-bottom-left-radius:14px;
	border-bottom-left-radius:14px;
	
	-moz-border-radius-bottomright:14px;
	-webkit-border-bottom-right-radius:14px;
	border-bottom-right-radius:14px;
	
	-moz-border-radius-topright:14px;
	-webkit-border-top-right-radius:14px;
	border-top-right-radius:14px;
	
	-moz-border-radius-topleft:14px;
	-webkit-border-top-left-radius:14px;
	border-top-left-radius:14px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:99%;
	height:238px;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:14px;
	-webkit-border-bottom-right-radius:14px;
	border-bottom-right-radius:14px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:14px;
	-webkit-border-top-left-radius:14px;
	border-top-left-radius:14px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:14px;
	-webkit-border-top-right-radius:14px;
	border-top-right-radius:14px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:14px;
	-webkit-border-bottom-left-radius:14px;
	border-bottom-left-radius:14px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffaaaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
	
	background-color:#ffffff;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:7px;
	font-size:12px;
	font-family:verdana;
	font-weight:normal;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #ff5656 5%, #7f0000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff5656), color-stop(1, #7f0000) );
	background:-moz-linear-gradient( center top, #ff5656 5%, #7f0000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff5656", endColorstr="#7f0000");	background: -o-linear-gradient(top,#ff5656,7f0000);

	background-color:#ff5656;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff5656 5%, #7f0000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff5656), color-stop(1, #7f0000) );
	background:-moz-linear-gradient( center top, #ff5656 5%, #7f0000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff5656", endColorstr="#7f0000");	background: -o-linear-gradient(top,#ff5656,7f0000);

	background-color:#ff5656;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}

        .style1
        {
            height: 37px;
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
        .style2
        {}
        </style>   
 
</head>
<body >
    <form id="form1" runat="server">
     <div id="centered">  
   
        <uc1:Topmenu ID="Topmenu1" runat="server" />
    
    <br /><br /><br />
    <table align="center" style="width: 67%;">
        <tr>
            <td colspan="4" align="center" >
                <div class="CSSTableGenerator" >
 <table align="center">
        <tr>
            <td colspan="2">
                &nbsp;Add Suspect Details</td>
        </tr>
        <tr>
            <td class="style1">
                Enter Age :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="133px" MaxLength="2"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Select Gender : </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="141px" Height="20px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Enter Region :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="144px" Height="18px">
                    <asp:ListItem>Local</asp:ListItem>
                    <asp:ListItem>Non-Local</asp:ListItem>
                    <asp:ListItem>Foreigner</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Enter Education :</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" Height="28px" Width="145px">
                    <asp:ListItem>Litreate</asp:ListItem>
                    <asp:ListItem>Iliterate</asp:ListItem>
                    <asp:ListItem>Professional</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Select Crime Intensity :</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="29px" Width="148px">
                    <asp:ListItem>Minor</asp:ListItem>
                    <asp:ListItem>Major</asp:ListItem>
                    <asp:ListItem>Severe</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Select Crime Type :</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="21px" Width="148px">
                </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                Select Motive :</td>
            <td>
                <asp:DropDownList ID="ddlcmo" runat="server">
                    <asp:ListItem>Intentional</asp:ListItem>
                    <asp:ListItem>Personal Reasons</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Accidental</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="style1">
                Select Method :</td>
            <td>
                &nbsp;<asp:DropDownList ID="ddlmethod" runat="server">
                    <asp:ListItem>Knife</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                    <asp:ListItem>Verbal</asp:ListItem>
                    <asp:ListItem>Indirect</asp:ListItem>
                    <asp:ListItem>Gun</asp:ListItem>
                    <asp:ListItem>Rope</asp:ListItem>
                    <asp:ListItem>SAW</asp:ListItem>
                    <asp:ListItem>White Collar</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="style1">
                Select Modus Operandi :</td>
            <td>
                &nbsp;<asp:DropDownList ID="ddlmo" runat="server">
                    <asp:ListItem>Location</asp:ListItem>
                    <asp:ListItem>Organized</asp:ListItem>
                    <asp:ListItem>Victim Age</asp:ListItem>
                    <asp:ListItem>Vehicle</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" align="center" >
                <asp:Button ID="Button1" runat="server" Text="Calculate" 
                    onclick="Button1_Click" />
            </td>

        </tr>        
    </table>
    </div>  </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="504px" 
                        AutoGenerateColumns="False" CellPadding="4" Font-Names="Verdana" 
                        Font-Size="Small" ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="cr_param" HeaderText="Evaluation Parameters" />
                            <asp:BoundField DataField="cr_param_per" HeaderText="% Contribution" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            <td class="style2" colspan="2">
        
                <asp:Chart ID="Chart1" runat="server" Width="389px" BorderlineWidth="0">
            <BorderSkin BorderWidth="0" />
            <Titles>
                <asp:Title Name="Parameter Contribution" 
                    Text="Parameter Contribution">
                </asp:Title>
            </Titles>
            <Legends>

            <asp:Legend Alignment="Center" Docking="Bottom" Name="Dotnet Chart Example" />

            </Legends>

            <Series>

            <asp:Series Name="Series1" ChartType="Pie"  IsValueShownAsLabel ="true" />

            </Series>

            <ChartAreas>

            <asp:ChartArea Name="ChartArea1" />

            </ChartAreas>
        </asp:Chart>
        
                </td>
        </tr>
        <tr><td>
        
                &nbsp;</td></tr>
    </table>
    <br /><br /><br />
</div>
    </form>
    
</body>
</html>
