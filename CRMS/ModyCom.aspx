<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModyCom.aspx.cs" Inherits="ModyCom" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Modifying Complaints Page</title>
</head>
<body bgcolor="#b9ccff">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblstrt" runat="server" Style="z-index: 100; left: 24px; position: absolute;
            top: 360px" Text="Street" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="72px"></asp:Label>
        <asp:Label ID="lblarea" runat="server" Style="z-index: 101; left: 24px; position: absolute;
            top: 392px" Text="Area" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="64px"></asp:Label>
        <asp:Label ID="lblpc" runat="server" Height="16px" Style="z-index: 102; left: 568px;
            position: absolute; top: 344px" Text="Pin Code" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="112px"></asp:Label>
        <asp:Label ID="lblhno" runat="server" Style="z-index: 103; left: 24px; position: absolute;
            top: 328px" Text="H.No." BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="80px"></asp:Label>
        <asp:Label ID="lbladrs" runat="server" Style="z-index: 104; left: 24px; position: absolute;
            top: 296px" Text="Address" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="88px"></asp:Label>
        <asp:Label ID="lblname" runat="server" Style="z-index: 105; left: 24px; position: absolute;
            top: 264px" Text="Applicant Name" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="128px"></asp:Label>
        <asp:Label ID="lblrd" runat="server" Style="z-index: 106; left: 24px; position: absolute;
            top: 232px" Text="Registration Of Date" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="136px"></asp:Label>
        <asp:Label ID="lbldoc" runat="server" Style="z-index: 107; left: 568px; position: absolute;
            top: 200px" Text="Desc. of Compl." Width="128px" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbltoc" runat="server" Style="z-index: 108; left: 24px; position: absolute;
            top: 200px" Text="Type Of Complaint" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="136px"></asp:Label>
        <asp:Label ID="lblwcc" runat="server" Style="z-index: 109; left: 568px; position: absolute;
            top: 168px" Text="Ward/Civic Centre" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="120px"></asp:Label>
        <asp:Label ID="lblghmc" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Green"
            Style="z-index: 110; left: 0px; position: absolute; top: 8px; text-align: center; padding-right: 37px; padding-left: 3px;" Text="Greater Hyderabad Muncipal Corporation"
            Width="800px" BackColor="LightSalmon" BorderColor="Black" BorderWidth="2px" Font-Names="Arial"></asp:Label>
        <asp:Label ID="lblmail" runat="server" Style="z-index: 111; left: 24px; position: absolute;
            top: 424px" Text="E-Mail" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="56px"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtmail" runat="server" Style="z-index: 113; left: 232px; position: absolute;
            top: 424px" Width="304px" TabIndex="13" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        &nbsp;
        <asp:Label ID="lblphno" runat="server" Style="z-index: 115; left: 568px; position: absolute;
            top: 280px" Text="Phone " BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="80px"></asp:Label>
        <asp:Label ID="lbldate" runat="server" Style="z-index: 116; left: 712px; position: absolute;
            top: 96px; text-align: center;" Text="Date" BorderColor="Orange" BorderWidth="1px" Width="40px"></asp:Label>
        <asp:Label ID="lbledc" runat="server" Style="z-index: 117; left: 568px; position: absolute;
            top: 232px" Text="Expected Date Of Completion" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="120px"></asp:Label>
        <asp:Label ID="lblfax" runat="server" Style="z-index: 118; left: 568px; position: absolute;
            top: 312px" Text="Fax" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="56px"></asp:Label>
        <asp:TextBox ID="txtdt" runat="server"  Style="z-index: 119;
            left: 776px; position: absolute; top: 96px" BackColor="Bisque" BorderColor="Gray" BorderWidth="1px" Width="96px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtedc" runat="server" Style="z-index: 120; left: 704px; position: absolute;
            top: 232px" Width="104px" TabIndex="6" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtph" runat="server" Style="z-index: 121; left: 704px; position: absolute;
            top: 280px" TabIndex="15" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtfax" runat="server" Style="z-index: 122; left: 704px; position: absolute;
            top: 312px" TabIndex="16" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"  ></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txttoc" runat="server" Style="z-index: 123; left: 232px; position: absolute;
            top: 200px" Width="48px" TabIndex="3" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtdoc" runat="server" Style="z-index: 124; left: 704px; position: absolute;
            top: 200px" Width="152px" TabIndex="4" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:DropDownList ID="ddlwcc" runat="server" Style="z-index: 125; left: 704px; position: absolute;
            top: 168px" Width="96px" TabIndex="2" BackColor="Lavender" ForeColor="Fuchsia">
            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlcrn" runat="server" Style="z-index: 126; left: 232px; position: absolute;
            top: 168px" Width="96px" TabIndex="1" BackColor="Lavender" ForeColor="Fuchsia" >
            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtrod" runat="server" Style="z-index: 127; left: 232px; position: absolute;
            top: 232px" Width="96px" TabIndex="5" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtan" runat="server" Style="z-index: 128; left: 232px; position: absolute;
            top: 264px" Width="304px" TabIndex="7" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtaddrs" runat="server" Style="z-index: 129; left: 232px; position: absolute;
            top: 296px" Width="304px" TabIndex="8" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txthno" runat="server" Style="z-index: 130; left: 232px; position: absolute;
            top: 328px" Width="240px" TabIndex="9" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtstrt" runat="server" Style="z-index: 131; left: 232px; position: absolute;
            top: 360px" Width="232px" TabIndex="10" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtarea" runat="server" 
            Style="z-index: 132; left: 232px; position: absolute; top: 392px" TabIndex="11" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtpc" runat="server" Style="z-index: 133; left: 704px; position: absolute;
            top: 344px" TabIndex="12" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:Label ID="lblcrn" runat="server" Style="z-index: 134; left: 24px; position: absolute;
            top: 168px" Text="Complaint Registration Number" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px" Width="200px"></asp:Label>
        <asp:Label ID="lblmoc" runat="server" Font-Italic="False" Font-Size="Large" Font-Underline="True"
            ForeColor="Green" Style="z-index: 135; left: 0px; position: absolute; top: 96px; text-align: center; padding-right: 37px; padding-left: 5px;"
            Text="Modification Of Complaint" Font-Names="Times New Roman" Width="856px"></asp:Label>
        <asp:Button ID="btncncl" runat="server" Style="z-index: 136; left: 416px; position: absolute;
            top: 512px" Text="Cancel" TabIndex="18" OnClick="btncncl_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnsbmt" runat="server" Style="z-index: 137; left: 320px; position: absolute;
            top: 512px" Text="Submit" TabIndex="17" OnClick="btnsbmt_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
            ErrorMessage="RegularExpressionValidator" Style="z-index: 138; left: 552px; position: absolute;
            top: 424px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="112px">Enter Correct Id</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlwcc"
            ErrorMessage="RequiredFieldValidator" Height="16px" Style="z-index: 139; left: 800px;
            position: absolute; top: 168px" Width="80px">Select Code</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlcrn"
            ErrorMessage="RequiredFieldValidator" Style="z-index: 140; left: 344px; position: absolute;
            top: 168px">Select a Value</asp:RequiredFieldValidator>
        &nbsp; &nbsp;
        <asp:Label ID="lblmocmsg1" runat="server" Style="z-index: 142; left: 0px; position: absolute;
            top: 472px; direction: ltr; text-indent: 10pt; text-align: center;" Width="816px" Font-Bold="True" Font-Names="Monotype Corsiva" ForeColor="Blue"></asp:Label>
        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Style="z-index: 144;
            left: 232px; position: absolute; top: 512px" Text="View" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
    
    </div>
    </form>
</body>
</html>
