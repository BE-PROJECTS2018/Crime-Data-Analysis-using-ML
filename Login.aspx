<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyApplication.Login1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>::: Login Here !! :::</title>
   <link href="App_Themes/FSGrey/FS_StyleSheet.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
    
  document.oncontextmenu=noValue;
 // document.onkeydown = DisableKeys;
  function noValue() { 
	alert("Copyright © 2016-2017 , All rights reserved."); 
	event.returnValue=false; 
	}
   
 function trimString(sString)
 {
    while (sString.substring(0,1) == ' ')
     {
       sString = sString.substring(1, sString.length);
     }
    while(sString.substring(sString.length-1, sString.length) == ' ')
     {
       sString = sString.substring(0,sString.length-1);
     }
       return sString;
  }
      
//     function ChgPwd()
//	 {
//	//   var win=window.open('Forms/ChangePassword.aspx?RequestFrom=BeforeLogin','Onetelcp','width=350,height=250,top=200,left=250'); 
//	     var win=window.open('Forms/ChangePassword.aspx?RequestFrom=BeforeLogin','EPaper','width=350,height=450,top=200,left=250'); 
//	 }
	 
 function validateonsubmit()
 {
  if(trimString(document.getElementById("txtLoginId").value) =="")
   {
     alert("Enter your Login Id !!!          ");
     document.getElementById("txtLoginId").focus();
     return false;
   }
   else if(trimString(document.getElementById("txtPassword").value) =="")
   {
     alert("Enter Password !!!          ");
     document.getElementById("txtPassword").focus();
     return false;
   }
  else
   {
    return true;
   }
   
 }
 
 function Reset()
 {
    document.getElementById("txtPassword").value ="";
    document.getElementById("txtLoginId").value =""
 }
    
    </script>
    
    
    <style type="text/css">
        .style1
        {
            width: 19px;
        }
        .style2
        {
            width: 112px;
        }
        .style3
        {
            width: 112px;
            font-size: small;
        }
    </style>
    
</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
      <table border="0" height="100%" width="100%" valign="top">
     <tr>
       <td valign="top">
           <!--image -->
          
          <table width="100%" style="height: 68px" ><tr><td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              </td>
                                <td>
                                    &nbsp;&nbsp;<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:#003366; font-family:Verdana;font-size:x-large" ><b 
                      style="font-size: xx-large">Crime Investigation System</b> </font></td></tr> 
          </table>
         </td>
     </tr>
     <tr>
       <td>
         <center>
          <table width="100%" style="height: 399px">
            <tr>
             <td width="50%">
             
             <table style="height: 389px; width: 101%">
              <tr>
                <td>
                     &nbsp;</td>
               </tr>
               <tr>
                <td>
                  <table width="100%" align="left">
                   <tr align="center"><td align="right">
                       <img alt="" src="IMG/Home-img.png" style="width: 500px; height: 317px" /></td>
                       <td align="right">
                           &nbsp;</td>
                   </tr>
                   <tr>
                    <td align="left">
                        &nbsp;</td>
                   
                    <td align="left">
                        &nbsp;</td>
                   
                   </tr>
                  </table>   
                </td>
               </tr>
           
             </table>
             
             
             </td>
             <td  bgcolor="Black" style="width: 1px"></td>
            
             <td style="width: 50%" align="left">
            
              <asp:Panel ID="pnlLogin" runat="server" Height="207px" Width="368px" >
                <table align="left" style="width: 99%">
                  <tr height="50">
                  <td colspan=3 valign="baseline"><font face="Verdana" color="#FF8000" size="2">
                      <b style="font-size: medium">Sign In</b></font><hr 
                          color="#F0F0F0" style="height: -12px; width: 99%"/> </td>
                  </tr>
                  <tr>
                   <td colspan=3><asp:Label ID="lblErrMsg" runat="Server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red"></asp:Label></td>
                  </tr>
                  
                  <tr><td class="style1"></td>
                      <td class="style2">&nbsp;</td>
                      <td align="left">&nbsp;</td>
                  </tr>
                  
                  <tr><td class="style1">&nbsp;</td><td class="style3"><font face="Verdana" ><b>
                      Login ID :</b></font></td> <td style="width: 5px; text-align: left;">
                          <asp:TextBox ID="txtLoginId" runat="server" Width="160px" Font-Size="X-Small" 
                              ForeColor="Maroon" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" 
                              Font-Bold="True" Height="17px" Font-Names="Verdana" MaxLength="25" 
                              style="text-align: left"></asp:TextBox></td> </tr>
                  <tr><td class="style1">&nbsp;</td><td class="style3"><font face="Verdana"><b>Password :</b></font></td>
                      <td style="width: 5px; text-align: left;">
                      <asp:TextBox ID="txtPassword" runat="server" Width="160px" Font-Size="X-Small" 
                          ForeColor="Maroon" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" 
                          Font-Names="Verdana" Height="17px" MaxLength="25" TextMode="Password"></asp:TextBox> 
                     
                  </td> </tr>
                  
                  <tr><td class="style1"></td><td class="style2"></td><td style="width: 5px">
                  <table>
                  <tr>
                  
                  <td>
                  <asp:Button ID="btnSubmit" runat="Server"  Text="Sign In"
                          CssClass="ele_button" onclick="btnSubmit_Click" 
                          OnClientClick="return validateonsubmit();" />
                  
                  </td>
                   <td> 
                       <asp:Button ID="btnReset" runat="server" CssClass="ele_button"  Text="Reset" 
                           OnClientClick="Reset();" onclick="btnReset_Click"/></td>                  
                  </tr>
                  </table>
                   </td></tr>
                                    
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td style="width: 5px; text-align: left;">
                            <asp:Label ID="lblerror" runat="server" Text="hgjhgjhg"></asp:Label>
                        </td>
                    </tr>
                                    
                </table>
                <p></p>
                
              </asp:Panel>
           
            
              </td>
            </tr>
          </table>
          </center>
       </td>
     </tr>
            <cc1:RoundedCornersExtender TargetControlID="pnlLogin" ID="RoundedCornersExtender1" BorderColor="Tan" runat="server">
            </cc1:RoundedCornersExtender>
     <tr>
       <td >
         
   <br /><br />
     <table align="center"><tr><td><font face="Verdana" size="1" color="Red" >Copyright ©2016-17 . All rights reserved. Best viewed in IE 6 browser, in 1024 x 768 resolution.</font>
       </td>
     </tr>
     
     
    
    </table> 
        
    </div>
    </form>
</body>
</html>
