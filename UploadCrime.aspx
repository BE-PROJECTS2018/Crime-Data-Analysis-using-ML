<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadCrime.aspx.cs" Inherits="SmartSystems_NS.UploadCrime" %>

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
	height:100%;
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
         height: 29px;
     }
    </style>     
</head>
<body>
    <form id="form1" runat="server">
     <div id="centered">  
        <uc1:Topmenu ID="Topmenu1" runat="server" />
    
<br /><br /><br />
    <br /><br /><br />
    

        <table align="center" border="0">
            <tr><td colspan=2 class="style2"><b>Crime Data&nbsp; Upload</b></td></tr>
             <tr><td colspan=2></td></tr>
            <tr>
            <td>   Bulk Upload :</td>
            <td >
                <table style="width: 100%;">
                    <tr>
                        <td class="style1">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" />
                        </td>
                        <td>
                            <asp:Button ID="cmdValidate" runat="server" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                BorderStyle="Outset" BorderWidth="1px" CausesValidation="False" OnClick="cmdValidate_Click"
                                Style="height: 24px" Text="Upload" Width="64px" />
                        </td>
                    </tr>
                </table>
    </td>
    </tr>
    <tr>
    <td>   &nbsp;</td>
    <td >
        &nbsp;</td>
    </tr>
    <tr>
    <td colspan="2">   
        <asp:Label ID="lblUploadStatus" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
    <td colspan="2">   
        &nbsp;</td>
    </tr>
    <tr>
    <td colspan="2">   
        &nbsp;</td>
    </tr>

    </table>
    </div>
<br /><br /><table align="center" style="width: 823px">
    <tr><td align="center" class="style2">
        <asp:GridView ID="GridView1" runat="server" Font-Names="Verdana" 
            Font-Size="Small" Width="858px">
        <AlternatingRowStyle BackColor="#FBD7E0" />
        </asp:GridView>
        </td>
    </tr>
    </table>
    </form>
</body>
</html>
