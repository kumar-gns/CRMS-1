<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Creation Of Users.aspx.cs" Inherits="Creation_Of_Users" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Creating Users Page</title>
</head>
<body bgcolor="#ffebc3">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }
    </script>
    <div>
        <asp:Label ID="lblun" runat="server" Style="z-index: 100; left: 168px; position: absolute;
            top: 176px" Text="User Name" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblcu" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"
            Style="z-index: 101; left: 0px; position: absolute; top: 96px; text-align: center; padding-right: 37px; padding-left: 5px;" Text="Creation Of Users"
            Width="712px" Font-Names="Times New Roman" ForeColor="Green"></asp:Label>
        <asp:Label ID="lbltou" runat="server" Style="z-index: 102; left: 168px; position: absolute;
            top: 288px" Text="Type Of User" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblcpd" runat="server" Style="z-index: 103; left: 168px; position: absolute;
            top: 240px" Text="Confirm Password" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblghmc" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"
            ForeColor="Green" Style="z-index: 104; left: 0px; position: absolute; top: 8px; text-align: center; padding-right: 37px; padding-left: 5px;"
            Text="Greater Hyderabad Muncipal Corporation" Width="784px" BackColor="LightSalmon" BorderColor="Black" BorderWidth="2px" Font-Names="Arial" Height="8px"></asp:Label>
        <asp:Label ID="lblpwd" runat="server" Style="z-index: 105; left: 168px; position: absolute;
            top: 208px" Text="Password" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblui" runat="server" Style="z-index: 106; left: 168px; position: absolute;
            top: 144px" Text="User Id" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbldt" runat="server" Style="z-index: 107; left: 536px; position: absolute;
            top: 96px" Text="Date" Width="40px" BorderColor="Orange" BorderWidth="1px"></asp:Label>
        <asp:TextBox ID="txtun" runat="server" MaxLength="40" Style="z-index: 108; left: 296px;
            position: absolute; top: 176px" TabIndex="2" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtpwd" runat="server" MaxLength="8" Style="z-index: 109; left: 296px;
            position: absolute; top: 208px" TabIndex="3" TextMode="Password" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtuid" runat="server" MaxLength="10" Style="z-index: 110; left: 296px;
            position: absolute; top: 144px" TabIndex="1" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtcpd" runat="server" MaxLength="8" Style="z-index: 111; left: 296px;
            position: absolute; top: 240px" TabIndex="4" TextMode="Password" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 112; left: 600px; position: absolute;
            top: 96px" TabIndex="1" Width="96px" BackColor="Wheat" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:Button ID="btnexit" runat="server" OnClick="btnexit_Click" OnClientClick="exit()"
            Style="z-index: 113; left: 544px; position: absolute; top: 392px" TabIndex="14"
            Text="Exit" Width="56px" CausesValidation="False" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnmdfy" runat="server" OnClick="btnmdfy_Click" Style="z-index: 114;
            left: 248px; position: absolute; top: 392px" TabIndex="10" Text="Modify" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="z-index: 115;
            left: 176px; position: absolute; top: 392px" TabIndex="9" Text="Add" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btncncl" runat="server" OnClick="btncncl_Click1" Style="z-index: 116;
            left: 392px; position: absolute; top: 392px" TabIndex="12" Text="Cancel" CausesValidation="False" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btndlt" runat="server" OnClick="btndlt_Click" Style="z-index: 117;
            left: 320px; position: absolute; top: 392px" TabIndex="11" Text="Delete" CausesValidation="False" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:RadioButton ID="rbou" runat="server" Style="z-index: 118; left: 472px; position: absolute;
            top: 328px" TabIndex="8" Text="Operator / User" BackColor="Plum" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Maroon" Width="120px" />
        <asp:RadioButton ID="rba" runat="server" Style="z-index: 119; left: 304px; position: absolute;
            top: 288px" TabIndex="5" Text="Administrator" Width="120px" BackColor="Plum" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Maroon" />
        <asp:RadioButton ID="rbc" runat="server" Style="z-index: 120; left: 472px; position: absolute;
            top: 288px" TabIndex="6" Text="Commissioner" BackColor="Plum" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Maroon" />
        <asp:RadioButton ID="rbdho" runat="server" Style="z-index: 121; left: 304px; position: absolute;
            top: 328px" TabIndex="7" Text="Dept.Head / Officer" BackColor="Plum" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Maroon" />
        <asp:Label ID="lblcumsg" runat="server" Style="z-index: 122; left: 0px; position: absolute;
            top: 360px; text-align: center;" Width="720px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="Large" ForeColor="Blue"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd"
            ErrorMessage="Enter the  password" Style="z-index: 123; left: 464px; position: absolute;
            top: 208px" Width="152px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcpd"
            ErrorMessage="Enter Confirm Password" Style="z-index: 124; left: 464px; position: absolute;
            top: 240px" Width="152px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuid"
            ErrorMessage="Enter User Id" Style="z-index: 125; left: 472px; position: absolute;
            top: 144px" Width="96px"></asp:RequiredFieldValidator>
        &nbsp; &nbsp;
        <asp:Button ID="btnview" runat="server" BackColor="AntiqueWhite" BorderColor="Silver"
            BorderWidth="1px" OnClick="btnview_Click" Style="z-index: 127; left: 472px; position: absolute;
            top: 392px" TabIndex="13" Text="View" />
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
