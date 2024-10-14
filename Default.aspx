<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" StylesheetTheme="them1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Examination System</title>
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
						<tr>
							<td style="text-align: justify; margin-left: 10">
							
								<p style="text-align: left"><font size="2" face="Arial">Online examination system can be used to take online
                                    test for student.
                                </p>
                                <p style="text-align: left">
                                    <font face="Arial" size="2">The purpose of online examination system is to take online
                                        test in an efficient manner and no time wasting for checking the paper. </font>
                                </p>
                                <p style="text-align: left">
                                    <font face="Arial" size="2">This on-line test simulator is to efficiently evaluate the
                                        candidate thoroughly through a fully automated system that not only saves lot of
                                        time but also gives fast results.</font></p>
                                </td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
					</td>
					<td align="left" valign="top">
					<table border="0" width="98%" id="table4" cellspacing="0">
						<tr>
							<td width="2%" align="left" valign="top" height="44">&nbsp;</td>
							<td colspan="3" align="left" background="mid_bar.gif" height="44" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;<b><font face="Arial">Registration 
							and Login to eExam</font></b></td>
						</tr>
						<tr>
							<td width="2%" align="left" valign="top">&nbsp;</td>
							<td align="left" valign="top" width="2%" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;
							</td>
							<td align="left" valign="top" width="87%">
							<font face="Arial" size="2"><b><br>
							Existing User Login</b><br>
							<br>
							Please enter the email address provided in registration as the username and password. Enter username and password in Username and Password fields and click on Login button
                                to enter this site.<br>
&nbsp;</font><table width="310" border="0" cellspacing="0" cellpadding="3" id="table5">
<tr>
<td align="right" style="width: 129px"><b><font class="arial10pt" face="Arial" size="2"><span style="color: #ff0066">*</span>
    Email ID:</font></b></td>
<td style="width: 233px"><font face="Arial">
    <asp:TextBox ID="TxtEmailID" runat="server" Width="195px"></asp:TextBox>&nbsp;</font></td>
</tr>
<tr>
<td align="right" style="width: 129px"><b><font class="arial10pt" face="Arial" size="2"><span style="color: #ff0066">*</span>
    Password:</font></b></td>
<td style="width: 233px"><font face="Arial">
    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Width="195px" ></asp:TextBox>&nbsp;</font></td>
</tr>
<tr>
<td style="width: 129px">&nbsp;</td><td style="width: 233px"><font face="Arial"><font size="2">
    <asp:Button ID="CmdLogin" runat="server" 
        Text="Login" Width="67px" OnClick="CmdLogin_Click" />&nbsp;
</font> <a href="forgotpassword.aspx"><font size="2">Forgot Password?</font></a></font></td>
</tr>
</table>
							</td>
							<td align="left" valign="top" width="6%" style="border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
						</tr>
						<tr>
							<td width="2%" align="left" valign="top">&nbsp;</td>
							<td align="left" valign="top" width="2%" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
							<td align="left" valign="top" width="87%">
							<font face="Arial" size="2">&nbsp;</font></td>
							<td align="left" valign="top" width="6%" style="border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
						</tr>
						<tr>
							<td width="2%" align="left" valign="top">&nbsp;</td>
							<td align="left" valign="top" width="2%" style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px">&nbsp;</td>
							<td align="left" valign="top" width="87%">
							<font face="Arial" size="2"><b>New Registration Procedure</b></font><p>
							<font face="Arial"><font size="2">To use this site, a registration is required. To register, please click on the 'Sign Up' button.<br>
							<br><asp:Button ID="CmdSignUp" runat="server" 
        Text="Sign Up" Width="67px" OnClick="CmdSignUp_Click" /></font></font></p>
							</td>
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
