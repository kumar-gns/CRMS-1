<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ward Civic Centre Code.aspx.cs" Inherits="Ward_Civic_Centre_Code" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Mangement of Wards Page</title>
</head>
<body bgcolor="lightblue">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }
    </script>
    <div style="background-color: #ffdeff">
        <asp:Label ID="lbladd" runat="server" Font-Bold="True" Style="z-index: 100; left: 128px;
            position: absolute; top: 232px" Text="Ward Address" Width="104px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblHno" runat="server" Font-Bold="True" Style="z-index: 101; left: 128px;
            position: absolute; top: 264px" Text="H.No " Width="40px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblcd" runat="server" Font-Bold="True" Style="z-index: 102; left: 128px;
            position: absolute; top: 168px" Text="Ward/Civic Centre Code" Width="176px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblname" runat="server" Font-Bold="True" Style="z-index: 103; left: 128px;
            position: absolute; top: 200px" Text="Ward/ Civic Centre Name" Width="176px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblfax" runat="server" Font-Bold="True" Style="z-index: 104; left: 128px;
            position: absolute; top: 456px" Text="Fax" Width="32px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbleid" runat="server" Font-Bold="True" Style="z-index: 105; left: 128px;
            position: absolute; top: 424px" Text="Email-id" Width="64px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblphno" runat="server" Font-Bold="True" Style="z-index: 106; left: 128px;
            position: absolute; top: 392px" Text="Phone No" Width="72px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblPcd" runat="server" Font-Bold="True" Style="z-index: 107; left: 128px;
            position: absolute; top: 360px" Text="Pin Code" Width="72px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblArea" runat="server" Font-Bold="True" Style="z-index: 108; left: 128px;
            position: absolute; top: 328px" Text="Area" Width="40px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblStr" runat="server" Font-Bold="True" Style="z-index: 109; left: 128px;
            position: absolute; top: 296px" Text="Street" Width="48px" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        &nbsp;
        <asp:Label ID="lbl12" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Large" Font-Underline="True" Style="z-index: 111; left: 0px; position: absolute;
            top: 96px; text-align: center;" Text="Ward / Civic Centre Master" Width="728px" ForeColor="Green" Height="24px"></asp:Label>
        <asp:TextBox ID="txtphno" runat="server" MaxLength="20" Style="z-index: 112; left: 328px;
            position: absolute; top: 392px" TabIndex="8" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtfax" runat="server" MaxLength="10" Style="z-index: 113; left: 328px;
            position: absolute; top: 456px" TabIndex="10" Width="256px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txteid" runat="server" MaxLength="25" Style="z-index: 114; left: 328px;
            position: absolute; top: 424px" TabIndex="9" Width="256px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtpincd" runat="server" MaxLength="7" Style="z-index: 115; left: 328px;
            position: absolute; top: 360px" TabIndex="7" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtArea" runat="server" MaxLength="25" Style="z-index: 116; left: 328px;
            position: absolute; top: 328px" TabIndex="6" Width="256px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtStr" runat="server" MaxLength="25" Style="z-index: 117; left: 328px;
            position: absolute; top: 296px" TabIndex="5" Width="336px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtHno" runat="server" MaxLength="25" Style="z-index: 118; left: 328px;
            position: absolute; top: 264px" TabIndex="4" Width="336px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtadd" runat="server" MaxLength="45" Style="z-index: 119; left: 328px;
            position: absolute; top: 232px" TabIndex="3" Width="336px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtname" runat="server" MaxLength="45" Style="z-index: 120; left: 328px;
            position: absolute; top: 200px" TabIndex="2" Width="336px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtcd" runat="server" MaxLength="7" Style="z-index: 121; left: 328px;
            position: absolute; top: 168px" TabIndex="1" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:Button ID="btndlt" runat="server" Font-Bold="True" OnClick="btndlt_Click" Style="z-index: 122;
            left: 320px; position: absolute; top: 544px" TabIndex="13" Text="Delete" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnMdfy" runat="server" Font-Bold="True" OnClick="btnMdfy_Click"
            Style="z-index: 123; left: 240px; position: absolute; top: 544px" TabIndex="12"
            Text="Modify" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnext" runat="server" Font-Bold="True" Font-Overline="False" OnClick="btnext_Click"
            OnClientClick="exit()" Style="z-index: 124; left: 552px; position: absolute;
            top: 544px" TabIndex="17" Text="Exit" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnview" runat="server" Font-Bold="True" OnClick="btnview_Click"
            Style="z-index: 125; left: 400px; position: absolute; top: 544px" TabIndex="16"
            Text="View" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btncncl" runat="server" Font-Bold="True" OnClick="btncncl_Click"
            Style="z-index: 126; left: 472px; position: absolute; top: 544px" TabIndex="15"
            Text="Cancel" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnAdd" runat="server" Font-Bold="True" OnClick="btn1_Click" Style="z-index: 127;
            left: 176px; position: absolute; top: 544px" TabIndex="11" Text="Add" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcd"
            Style="z-index: 128; left: 488px; position: absolute; top: 168px" Width="136px">Please enter the code</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txteid"
            Style="z-index: 129; left: 600px; position: absolute; top: 424px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            Width="96px">Enter correct id</asp:RegularExpressionValidator>
        <asp:Label ID="lblmsg" runat="server" Style="z-index: 131; left: 0px; position: absolute;
            top: 496px; direction: ltr; text-indent: 10pt; text-align: center;" Width="712px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="Large" ForeColor="Blue" Height="24px"></asp:Label>
        &nbsp; &nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
