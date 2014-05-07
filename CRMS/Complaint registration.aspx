<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Complaint registration.aspx.cs" Inherits="Complaint_registration" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Complaint Registration Page</title>
</head>
<body bgcolor="#00f9e3">
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Label ID="lbledc" runat="server" Style="z-index: 101; left: 384px; position: absolute;
            top: 192px" Text="Expected Date Of Completion" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="152px"></asp:Label>
        <asp:Label ID="lblcrn" runat="server" Style="z-index: 102; left: 384px; position: absolute;
            top: 168px" Text="Complaint Registration" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        &nbsp;
        <asp:Label ID="lbldoc" runat="server" Style="z-index: 104; left: 384px; position: absolute;
            top: 136px" Text="Description Of Complaint" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Height="24px" Width="160px"></asp:Label>
        <asp:Label ID="lblphone" runat="server" Style="z-index: 105; left: 384px; position: absolute;
            top: 240px" Text="Phone" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="56px"></asp:Label>
        <asp:Label ID="lblfax" runat="server" Style="z-index: 106; left: 384px; position: absolute;
            top: 264px" Text="Fax" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="48px"></asp:Label>
        <asp:Label ID="lblmail" runat="server" Style="z-index: 107; left: 16px; position: absolute;
            top: 328px" Text="E-mail" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblpcd" runat="server" Style="z-index: 108; left: 384px; position: absolute;
            top: 288px" Text="Pin Code" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="72px"></asp:Label>
        <asp:Label ID="lblarea" runat="server" Style="z-index: 109; left: 16px; position: absolute;
            top: 304px" Text="Area" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblstreet" runat="server" Style="z-index: 110; left: 16px; position: absolute;
            top: 280px" Text="Street" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblhno" runat="server" Style="z-index: 111; left: 16px; position: absolute;
            top: 256px" Text="H.No" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbladdr" runat="server" Style="z-index: 112; left: 16px; position: absolute;
            top: 232px" Text="Address" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblan" runat="server" Style="z-index: 113; left: 16px; position: absolute;
            top: 208px" Text="Applicant Name" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblrdt" runat="server" Style="z-index: 114; left: 16px; position: absolute;
            top: 184px" Text="Registration Date" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblwcc" runat="server" Style="z-index: 115; left: 16px; position: absolute;
            top: 160px" Text="Ward/Civic Centre" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbltoc" runat="server" Style="z-index: 116; left: 16px; position: absolute;
            top: 136px" Text="Type Of Complaint" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Button ID="btncncl" runat="server" Style="z-index: 117; left: 384px; position: absolute;
            top: 376px" Text="Cancel" TabIndex="14" OnClick="btncncl_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Label ID="lbldt" runat="server" Style="z-index: 118; left: 552px; position: absolute;
            top: 104px; text-align: center;" Text="Date" Width="56px"></asp:Label>
        <asp:Label ID="lblroc" runat="server" Style="z-index: 119; left: 0px; position: absolute;
            top: 104px; text-align: center; padding-right: 37px; padding-left: 5px;" Text="Registration Of Complaint" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="Green" Width="760px"></asp:Label>
        <asp:Label ID="lblghmc" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Green"
            Style="z-index: 120; left: 0px; position: absolute; top: 8px; text-align: center; padding-right: 37px; padding-left: 5px;" Text="Greater Hyderabad Muncipal Corporation"
            Width="760px" Height="24px" BackColor="LightSalmon" BorderColor="Black" BorderWidth="2px" Font-Names="Arial"></asp:Label>
        <asp:Button ID="btnsubmit" runat="server" Style="z-index: 121; left: 296px; position: absolute;
            top: 376px" Text="Submit" OnClick="btnsubmit_Click" TabIndex="13" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        &nbsp;
        <asp:TextBox ID="txtedc" runat="server" Style="z-index: 123; left: 576px; position: absolute;
            top: 192px" TabIndex="12" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" Font-Bold="True" ForeColor="SlateGray" Height="32px"></asp:TextBox>
        <asp:TextBox ID="txtcrn" runat="server" Style="z-index: 124; left: 576px; position: absolute;
            top: 168px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" Font-Bold="True" ForeColor="SlateGray"></asp:TextBox>
        <asp:TextBox ID="txtfax" runat="server" Style="z-index: 125; left: 576px; position: absolute;
            top: 264px" MaxLength="15" TabIndex="11" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
            Style="z-index: 126; left: 376px; position: absolute; top: 328px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter correct id</asp:RegularExpressionValidator>
        &nbsp; &nbsp;
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ddltoc"
            ErrorMessage="Select a Value" Operator="NotEqual" Style="z-index: 127; left: 240px;
            position: absolute; top: 136px" ValueToCompare="--SELECT--"></asp:CompareValidator>
        <asp:TextBox ID="txtphone" runat="server" Style="z-index: 128; left: 576px; position: absolute;
            top: 240px" MaxLength="15" TabIndex="10" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtmail" runat="server" Style="z-index: 130; left: 144px; position: absolute;
            top: 328px" Width="224px" MaxLength="25" TabIndex="9" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtpcd" runat="server" Style="z-index: 131; left: 576px; position: absolute;
            top: 288px" MaxLength="6" TabIndex="12" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtarea" runat="server" Style="z-index: 132; left: 144px; position: absolute;
            top: 304px" Width="224px" MaxLength="25" TabIndex="8" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtstreet" runat="server" Style="z-index: 133; left: 144px; position: absolute;
            top: 280px" Width="224px" MaxLength="25" TabIndex="7" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txthno" runat="server" Style="z-index: 134; left: 144px; position: absolute;
            top: 256px" MaxLength="25" TabIndex="6" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtaddr" runat="server" Style="z-index: 135; left: 144px; position: absolute;
            top: 232px" Width="224px" MaxLength="40" TabIndex="5" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtan" runat="server" Style="z-index: 136; left: 144px; position: absolute;
            top: 208px" Width="224px" MaxLength="40" TabIndex="4" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtrdt" runat="server" Style="z-index: 137; left: 144px; position: absolute;
            top: 184px" TabIndex="3" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtdoc" runat="server" Style="z-index: 138; left: 576px; position: absolute;
            top: 136px" MaxLength="400" TabIndex="11" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" Font-Bold="True" ForeColor="SlateGray"></asp:TextBox>
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 139; left: 624px; position: absolute;
            top: 104px" Width="88px" Height="16px"></asp:TextBox>
        <asp:DropDownList ID="ddltoc" runat="server" 
            Style="z-index: 140; left: 144px; position: absolute; top: 136px" TabIndex="1" AutoPostBack="True" OnSelectedIndexChanged="ddltoc_SelectedIndexChanged" BackColor="Lavender" ForeColor="Fuchsia">
            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="ddlwcc" runat="server" Style="z-index: 141; left: 144px; position: absolute;
            top: 160px" TabIndex="2" AutoPostBack="True" OnSelectedIndexChanged="ddlwcc_SelectedIndexChanged" BackColor="Lavender" ForeColor="Fuchsia" >
            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="txtwcc" runat="server" Style="z-index: 142; left: 240px; position: absolute;
            top: 160px" Width="104px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="SlateGray" EnableViewState="False"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddlwcc"
            ErrorMessage="Select a Value" Operator="NotEqual" Style="z-index: 144; left: 240px;
            position: absolute; top: 160px" ValueToCompare="--SELECT--"></asp:CompareValidator>
        &nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
