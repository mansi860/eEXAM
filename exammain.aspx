<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exammain.aspx.cs" Inherits="exammain" StylesheetTheme="them1" EnableEventValidation ="false"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Online Examination System - Examination</title>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <div>
    

	<table border="0" width="1262" cellspacing="0" id="table1">
		<tr>
			<td width="16" height="74" align="left">&nbsp;</td>
			<td width="1239" height="74" align="left" colspan="2">
			<img border="0" src="images/logo.gif" width="432" height="89"></td>
		</tr>
		<tr>
			<td width="16" background="images/topnav_bgnd.gif" height="28" align="left">&nbsp;</td>
			<td width="1239" background="images/topnav_bgnd.gif" height="28" align="left" colspan="2">
			<b><font face="Arial" size="2">Paper : <span id="sp_paper" runat ="server" ></span> &nbsp; &nbsp; &nbsp; Candidate : <span id="sp_candidate" runat ="server" ></span> &nbsp; &nbsp; &nbsp; Examination Date : <span id="sp_date" runat ="server" ></span></font></b></td>
		</tr>
        <tr>

            <td style="height: 21px" width="16">
            </td>
            <td   valign="top">
            </td>
            <td   valign="top" width="1179">
            </td>
        </tr>
		<tr>
			<td width="16" style="height: 21px">&nbsp; </td>
			<td style="border-bottom-style: solid; width: 61px; height: 21px;" valign="top"><span id="sp_qst_no" runat ="server" ></span></td>
			<td width="1179" style="border-bottom-style: solid; height: 21px;" valign="top">
			<span id="sp_qst" runat ="server" ></span>
			
			</td>
		</tr>
		<tr>
			<td width="16">&nbsp; </td>
			<td width="1239" colspan="2">
			<table border="0" width="100%" cellspacing="1" id="table2" cellpadding="2">
                <tr>
                    <td align="left" style="width: 5%" valign="top">
                    </td>
                    <td align="left" valign="top" width="95%">
                        &nbsp;</td>
                </tr>
				<tr>
					<td align="left" valign="top" style="width: 5%" >
                        <span id="sp_ans_op1" runat ="server" ></span> 
                        <asp:RadioButton ID="r1" runat="server" Width="15px" GroupName="options" />
                        <asp:CheckBox ID="c1" runat="server" Width="14px" /></td>
					<td align="left" valign="top" width="95%">
                        <span id="sp_ans1" runat ="server" ></span> </td>
				</tr>
				<tr>
					<td align="left" valign="top" style="width: 5%; height: 23px;" >
                        <span id="sp_ans_op2" runat ="server" ></span>
                        <asp:RadioButton ID="r2" runat="server" Width="15px" GroupName="options" /><asp:CheckBox ID="c2" runat="server"
                            Width="14px" /></td>
					<td align="left" valign="top" width="95%" style="height: 23px" >
					<span id="sp_ans2" runat ="server" ></span> </td>
				</tr>
				<tr>
					<td align="left" valign="top" style="width: 5%; height: 23px;" >
                        <span id="sp_ans_op3" runat ="server" ></span>
                        <asp:RadioButton ID="r3" runat="server" Width="15px" GroupName="options" /><asp:CheckBox ID="c3" runat="server"
                            Width="14px" /></td>
					<td align="left" valign="top" width="95%" style="height: 23px" >
					<span id="sp_ans3" runat ="server" ></span>
					</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="width: 5%; height: 23px;" >
                        <span id="sp_ans_op4" runat ="server" ></span>
                        <asp:RadioButton ID="r4" runat="server" Width="15px" GroupName="options" /><asp:CheckBox ID="c4" runat="server"
                            Width="14px" /></td>
					<td align="left" valign="top" width="95%" style="height: 23px" >
					<span id="sp_ans4" runat ="server" ></span>
					</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="width: 5%; height: 46px;" >
                        <span id="sp_ans_op5" runat ="server" ></span>
                        <asp:RadioButton ID="r5" runat="server" Width="15px" GroupName="options" /><asp:CheckBox ID="c5"
                            runat="server" Width="14px" /></td>
					<td align="left" valign="top" width="95%" style="height: 46px" >
					<span id="sp_ans5" runat ="server" ></span>
					
					</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="width: 5%" >
                        &nbsp;</td>
					<td align="left" valign="top" width="95%" >&nbsp;</td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width="16" background="images/topnav_bgnd.gif" height="28" align="left">&nbsp;</td>
			<td width="1239" background="images/topnav_bgnd.gif" height="28" align="left" colspan="2">
			&nbsp;<asp:Button ID="BtnBack" runat="server" Text="< Back" Width="57px" OnClick="BtnBack_Click" />&nbsp;
                <asp:Label ID="LblPos" runat="server" Text="11/20" Width="53px"></asp:Label>&nbsp;
                <asp:Button ID="BtnNext" runat="server" Text="Next >" OnClick="BtnNext_Click" />
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="BtnEnd" runat="server" Text="End Examination" Width="117px" OnClick="BtnEnd_Click" />
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <form name="counter"><input type="text" size="8" 
name="d2"></form> 
<%--
<script> 
<!-- 
// 
 var milisec=0 
 var seconds=30 
 document.counter.d2.value='30' 

function display(){ 
 if (milisec<=0){ 
    milisec=9 
    seconds-=1 
 } 
 if (seconds<=-1){ 
    milisec=0 
    seconds+=1 
 } 
 else 
    milisec-=1 
    document.counter.d2.value=seconds+"."+milisec 
    setTimeout("display()",100) 
} 
display() 
--> 
</script> --%>

                
                
                
                </td>
		</tr>
	</table>
	    </div>
    </form>
</body>
</html>