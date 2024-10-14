<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" StylesheetTheme="them1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Examination System - Sign Up</title>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <div>
    

	<table border="0" width="1262" cellspacing="0" id="table1">
		<tr>
			<td width="16" height="74" align="left">&nbsp;</td>
			<td width="1239" height="74" align="left">
			<img border="0" src="images/logo.gif" width="432" height="89"></td>
		</tr>
		<tr>
			<td width="16" background="images/topnav_bgnd.gif" height="28" align="left">&nbsp;</td>
			<td width="1239" background="images/topnav_bgnd.gif" height="28" align="left">
			<b><font face="Arial" size="2"><a href="default.aspx">HOME</a>&nbsp; |&nbsp; &nbsp;<a
                href="examination.aspx">EXAMINATION</a>&nbsp; | &nbsp;<a href="contactus.aspx">CONTACT US</a></font></b></td>
		</tr>

		<tr>
			<td width="16">&nbsp; </td>
			<td width="1239">&nbsp;</td>
		</tr>
		<tr>
			<td width="16">&nbsp; </td>
			<td width="1239">
			<table border="0" width="100%" cellspacing="1" id="table2">
				<tr>
					<td width="217" align="left" valign="top" style="border-style:solid; border-width:1px; ">
					<table border="0" width="100%" cellspacing="1" id="table3">
						<tr>
							<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">
							<b><font face="Arial" size="2" color="#FF0000">Online Examination System</font></b></td>
						</tr>
						<tr style="font-size: 12pt; font-family: Times New Roman">
							<td style="text-align: justify; margin-left: 10">
							
								<p style="text-align: left"><font size="2" face="Arial">Online examination system can be used to take online
                                    test for student. </font></p>
                                <p style="text-align: left">
                                    <font face="Arial" size="2">The purpose of online examination system is to take online
                                        test in an efficient manner and no time wasting for checking the paper. </font>
                                </p>
                                <p style="text-align: left">
                                    <font face="Arial" size="2">This on-line test simulator is to efficiently evaluate the
                                        candidate thoroughly through a fully automated
								system that not only saves lot of
                                        time but also gives fast results.</font></p>
							
							</td>
						</tr>
						<tr style="font-size: 12pt; font-family: Times New Roman">
							<td>&nbsp;</td>
						</tr>
					</table>
					</td>
					<td align="left" valign="top" style="font-size: 12pt; font-family: Times New Roman">
					<table border="0" width="98%" id="table4" cellspacing="0">
						<tr>
							<td width="2%" align="left" valign="top" style="height: 43px">&nbsp;</td>
							<td colspan="3" align="left" background="mid_bar.gif" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px; height: 43px;">&nbsp;<b><font face="Arial">Sign
                                Up to eExam</font></b></td>
						</tr>
						<tr>
							<td width="2%" align="left" valign="top">&nbsp;</td>
							<td align="left" valign="top" width="2%" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;
							</td>
							<td align="left" valign="top" width="87%">
							<font face="Arial" size="2"><b><br>
							New user, please register your details</b><br>
							<br>
							</font><font size="2" face="Arial">To use this site, 
							a registration is required. To register, please fill 
							the form and click on the 'Submit' button.<br>
&nbsp;</font><table width="457" border="0" cellspacing="1" cellpadding="3" id="table5">
<tr>
<td align="left" valign="top" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" colspan="2">
<b><font face="Arial" color="#999999">Registration Details</font></b></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">
<font color="#FF0000">*</font> Email Address</font><font class="arial10pt" face="Arial" size="2">:</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtEmailID" runat="server"></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">
<font color="#FF0000">*</font> Password</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtPassword1" runat="server" TextMode="Password" ></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">
<font color="#FF0000">*</font> Confirm Password</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password"></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top">&nbsp;</td>
<td width="308" align="left" valign="top">&nbsp;</td>
</tr>
<tr>
<td align="left" valign="top" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" colspan="2">
<b><font face="Arial" color="#999999">Personal Details</font></b></td>
</tr>
<tr>
<td align="right" valign="top"><b><font class="arial10pt" face="Arial" size="2">
<font color="#FF0000">*</font> Display Name:</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtFirstName" runat="server" ></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">Address</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtAddress" runat="server" MaxLength="100" TextMode="MultiLine" Width="148px" ></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">Country</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:DropDownList ID="DdlCountry" runat="server" BackColor="WhiteSmoke" Width="152px">
    </asp:DropDownList></font></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">City</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtCity" runat="server" MaxLength="50" ></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top"><b><font face="Arial" size="2">Zip Code</font></b></td>
<td width="308" align="left" valign="top"><font face="Arial">
    <asp:TextBox ID="TxtZipCode" runat="server" MaxLength="6" ></asp:TextBox></font></td>
</tr>
<tr>
<td align="right" valign="top">&nbsp;</td>
<td width="308" align="left" valign="top">&nbsp;</td>
</tr>
<tr>
<td align="right" valign="top">&nbsp;</td>
<td width="308" align="left" valign="top"><font size="2" face="Arial">
    <asp:Button ID="CmdSubmit" runat="server" 
        Text="Submit" Width="67px" OnClick="CmdSubmit_Click" />&nbsp;</font></td>
</tr>
<tr>
<td align="right" valign="top">&nbsp;</td>
<td width="308" align="left" valign="top">&nbsp;</td>
</tr>
</table>
							</td>
							<td align="left" valign="top" width="6%" style="border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
						</tr>
						<tr>
							<td width="2%" align="left" valign="top">&nbsp;</td>
							<td align="left" valign="top" width="2%" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
							<td align="left" valign="top" width="87%">
							<b><font face="Arial" size="2">Existing User click 
							here to <a href="Default.aspx">Sign In</a></font></b></td>
							<td align="left" valign="top" width="6%" style="border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
						</tr>
						<tr>
							<td width="2%" align="left" valign="top">&nbsp;</td>
							<td align="left" valign="top" width="2%" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">&nbsp;</td>
							<td align="left" valign="top" width="87%" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">&nbsp;</td>
							<td align="left" valign="top" width="6%" style="border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">&nbsp;</td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td width="217" align="left" valign="top" height="22">&nbsp;</td>
					<td align="left" valign="top" height="22">&nbsp;</td>
				</tr>
				<tr>
					<td align="left" valign="top" height="22" colspan="2">
					<p align="center"><font face="Arial" size="2">(C) 2021 - Online Examination System</font></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	    </div>
    </form>
</body>
</html>
