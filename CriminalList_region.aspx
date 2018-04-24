<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="CriminalList_region.aspx.cs" Inherits="SmartSystems_NS.CriminalList_region" %>

<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<style>
.CSSTableGenerator {
	margin:0px;padding:0px;
	width:60%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #3f7f00;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.CSSTableGenerator tr:hover td{
	
}
.CSSTableGenerator tr:nth-child(odd){ background-color:#d4ffaa; }
.CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
	vertical-align:middle;
	
	
	border:1px solid #3f7f00;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:7px;
	font-size:12px;
	font-family:Verdana;
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
		background:-o-linear-gradient(bottom, #5fbf00 5%, #3f7f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5fbf00), color-stop(1, #3f7f00) );
	background:-moz-linear-gradient( center top, #5fbf00 5%, #3f7f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#5fbf00", endColorstr="#3f7f00");	background: -o-linear-gradient(top,#5fbf00,3f7f00);

	background-color:#5fbf00;
	border:0px solid #3f7f00;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:verdana;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #5fbf00 5%, #3f7f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5fbf00), color-stop(1, #3f7f00) );
	background:-moz-linear-gradient( center top, #5fbf00 5%, #3f7f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#5fbf00", endColorstr="#3f7f00");	background: -o-linear-gradient(top,#5fbf00,3f7f00);

	background-color:#5fbf00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
</style>      
</head>
<body >
    <form id="form1" runat="server">
    
<div id="centered">    
        <uc1:Topmenu ID="Topmenu1" runat="server" />
    <br /><br /><br />
    <table align="center" border="0">
    <tr><td align="center" colspan="2">    
        <asp:Label ID="Label1" runat="server" 
            Font-Names="Verdana" Font-Size="X-Large" 
        Text="Criminal List - Regionwise"></asp:Label></td></tr>
    <tr><td align="center" >            
        <asp:Chart ID="Chart1" runat="server" Width="389px" BorderlineWidth="0">
            <borderskin borderwidth="0" />
            <titles>
                <asp:Title Name="Criminal Concentration Regionwise" 
                    Text="Criminal Concentration Regionwise">
                </asp:Title>
            </titles>
            <legends>

            <asp:Legend Alignment="Center" Docking="Bottom" Name="Dotnet Chart Example" />

            </legends>

            <series>

            <asp:Series Name="Series1" ChartType="Pie"  IsValueShownAsLabel ="true" />

            </series>

            <chartareas>

            <asp:ChartArea Name="ChartArea1" />

            </chartareas>
        </asp:Chart>

        </td>
    <td align="center" >            
                <asp:GridView ID="GridView2" runat="server" Width="354px" BackColor="White" 
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                    GridLines="Horizontal" Caption="Summary" Font-Names="Verdana" 
                    Font-Size="Smaller">
                    <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Center" />
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Center" />
        </asp:GridView></td>    
    </tr>

    <tr>
    <td colspan="2">
        <asp:GridView ID="GridView1" runat="server"  
            Height="187px" Width="813px" 
            Font-Names="Verdana" Font-Size="Small" OnSorting="GridView1_Sorting" 
            AutoGenerateColumns="False" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Region" HeaderText="Region" 
                    SortExpression="Region" />
                <asp:BoundField DataField="Crime Intensity" HeaderText="Crime Intensity" 
                    SortExpression="Crime Intensity" />
                <asp:BoundField DataField="Crime Details" HeaderText="Crime Details" />
                <asp:BoundField DataField="Crime Type" HeaderText="Crime Type" 
                    SortExpression="Crime Type" />
            </Columns>
                        <HeaderStyle Font-Names="Verdana" Font-Size="Small" BackColor="#006600" 
                ForeColor="#FFFFCC" />
            <AlternatingRowStyle BackColor="#D5FFD5" />
        </asp:GridView>
    </td>
    </tr>
    </table>
</div>    
    </form>    
    
</body>
</html>
