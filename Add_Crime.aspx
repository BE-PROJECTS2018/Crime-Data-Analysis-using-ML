<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Crime.aspx.cs" Inherits="SmartSystems_NS.Add_Crime" %>

<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
   <style>
    .CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
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
	width:100%;
	height:495px;
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
            font-weight: bold;
        }
       .style2
       {
           height: 41px;
       }
       .auto-style1 {
           font-weight: bold;
           height: 33px;
       }
       .auto-style2 {
           height: 33px;
       }
       .auto-style3 {
           font-weight: bold;
           height: 29px;
       }
       .auto-style4 {
           height: 29px;
       }
    </style>    
</head>
<body >
    <form id="form1" runat="server">
    <div id="centered">  
        <uc1:Topmenu ID="Topmenu1" runat="server" />
    
<br /><br /><br />
    <br /><br /><br />
    <table align="center" style="width: 587px" >
    <tr><td></td></tr>
    <tr><td>
    <div class="CSSTableGenerator" >
    <table align="center" >
        <tr>
            <td colspan="2">
                &nbsp;Add Crime Details</td>
        </tr>
        <tr>
            <td class="style1">
                Case No :</td>
            <td>
                <asp:TextBox ID="txtcaseno" runat="server"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Case Name :</td>
            <td>
                <asp:TextBox ID="txtcasename" runat="server" Width="361px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                FIR :</td>
            <td>
                <asp:TextBox ID="txtfir" runat="server" Height="45px" TextMode="MultiLine" Width="357px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1" colspan="2" style="font-size: medium; color: #0000FF; font-weight: bold;">
                Criminal Details</td>
        </tr>        
        <tr>
            <td class="style1">
                Enter Name :</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="364px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Enter Age :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Select Gender : </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="141px" Height="20px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Enter Mobile No :</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" MaxLength="10" TextMode="Number" Width="133px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Enter BloodGroup :</td>
            <td>
                <asp:DropDownList ID="ddlbg" runat="server">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Enter Email address :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="363px"></asp:TextBox>
            </td>
        </tr>        
        <tr>
            <td class="style1">
                Enter City :</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" Width="364px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Enter Religion :</td>
            <td>
                <asp:DropDownList ID="ddlreligion" runat="server">
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Islam</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Sikh</asp:ListItem>
                    <asp:ListItem>Buddh</asp:ListItem>
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
                Enter Habits :</td>
            <td>
                <asp:TextBox ID="txthabits" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                Family Details :</td>
            <td>
                <asp:TextBox ID="txtfamily" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <strong>Body Details</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Height :</td>
            <td>
                <asp:TextBox ID="txtheight" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Weight :</td>
            <td>
                <asp:TextBox ID="txtwt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Skin Color :</td>
            <td>
                <asp:TextBox ID="txtskincolor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: medium; color: #0000FF; font-weight: bold;">
                Crime Details</td>
            <td class="auto-style2">
            </td>
        </tr>
        <tr>
            <td class="style1">
                Arrested By Officer Name :</td>
            <td>
                <asp:TextBox ID="txtoffname" runat="server" Width="346px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Arrested at Police Station:</td>
            <td>
                <asp:TextBox ID="txtpsname" runat="server" Width="345px"></asp:TextBox>
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
                Date of Crime :</td>
            <td>
                <asp:TextBox ID="txtcdate" runat="server" TextMode="Date"></asp:TextBox>
                    &nbsp;(YYYY-MM-DD)</td>
        </tr>
        <tr>
            <td class="style1">
                Crime Motive :</td>
            <td>
                <asp:DropDownList ID="ddlcmo" runat="server">
                    <asp:ListItem>Intentional</asp:ListItem>
                    <asp:ListItem>Personal Reasons</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Accidental</asp:ListItem>
                </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                Method/Weapon :</td>
            <td>
                <asp:DropDownList ID="ddlmethod" runat="server">
                    <asp:ListItem>Knife</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                    <asp:ListItem>Verbal</asp:ListItem>
                    <asp:ListItem>Indirect</asp:ListItem>
                    <asp:ListItem>Gun</asp:ListItem>
                    <asp:ListItem>Rope</asp:ListItem>
                    <asp:ListItem>SAW</asp:ListItem>
                    <asp:ListItem>White Collar</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                MO :</td>
            <td>
                <asp:DropDownList ID="ddlmo" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Location</asp:ListItem>
                    <asp:ListItem>Organized</asp:ListItem>
                    <asp:ListItem>Victim Age</asp:ListItem>
                    <asp:ListItem>Vehicle</asp:ListItem>
                </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                Crime Status :</td>
            <td>
                <asp:DropDownList ID="ddlcs" runat="server">
                    <asp:ListItem>Arrested</asp:ListItem>
                    <asp:ListItem>On Bail</asp:ListItem>
                    <asp:ListItem>Arrested but Having Treatement</asp:ListItem>
                </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                Hospital Name :</td>
            <td>
                <asp:TextBox ID="txtHN" runat="server" Width="362px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                Doctor Name :</td>
            <td>
                <asp:TextBox ID="txtdn" runat="server" Width="360px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                Injury Details :</td>
            <td>
                <asp:TextBox ID="txtinjury" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Past History :</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtph" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;Enter Crime Details :</td>
            <td>
                <asp:TextBox ID="txtcd" runat="server" TextMode="MultiLine" 
                    Height="105px" Width="368px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="style2" >
                <asp:Button ID="Button1" runat="server" Text="Add Crime Record" 
                    onclick="Button1_Click" />
            </td>

        </tr>        
    </table>
    </td></tr>    
    </table> 
    </div>   
    </form>
</body>
</html>
