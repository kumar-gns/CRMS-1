<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="LightGreen" BorderColor="Black" BorderStyle="Solid"
            BorderWidth="1px" Height="112px" Style="z-index: 100; left: 128px; position: absolute;
            top: 104px" Width="520px">
            &nbsp;
            <asp:TextBox ID="txtpwd" runat="server" BackColor="Honeydew" BorderColor="Fuchsia"
                Font-Names="Century Gothic" ForeColor="DeepSkyBlue" Style="z-index: 101; left: 256px;
                position: absolute; top: 88px" TabIndex="2" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtaname" runat="server" BackColor="Honeydew" BorderColor="Fuchsia"
                Font-Names="Century Gothic" ForeColor="DeepSkyBlue" Style="z-index: 102; left: 256px;
                position: absolute; top: 64px" TabIndex="1"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblupwd" runat="server" BackColor="Honeydew" BorderColor="Red" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Arial Narrow" Style="z-index: 104; left: 96px;
                position: absolute; top: 88px" Text="Enter Password"></asp:Label>
            <asp:Label ID="lbluname" runat="server" BackColor="Honeydew" BorderColor="Red" BorderStyle="Solid"
                BorderWidth="1px" Font-Bold="False" Font-Italic="False" Font-Names="Arial Narrow"
                ForeColor="Black" Style="z-index: 105; left: 96px; position: absolute; top: 64px"
                Text="User Id"></asp:Label>
            <asp:Label ID="lbllog" runat="server" BackColor="Lavender" BorderColor="#FF8000"
                BorderStyle="Ridge" BorderWidth="1px" Font-Bold="True" Font-Names="Book Antiqua"
                Font-Size="X-Large" ForeColor="Black" Style="z-index: 106; left: 200px; color: black;
                font-style: normal; font-family: 'Courier New', Sans-Serif; position: absolute;
                top: 16px; font-variant: normal; text-decoration: none; text-align: center; clear: none; visibility: visible;" Text="LOGIN" Width="120px"></asp:Label>
            <asp:Button ID="btnsbmt" runat="server" BackColor="LightSkyBlue" BorderColor="#000040"
                Font-Names="Georgia" ForeColor="DarkViolet" OnClick="btnsbmt_Click" Style="z-index: 107;
                left: 240px; position: absolute; top: 176px" TabIndex="4" Text="Submit" Font-Bold="True" />
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <br />
            <asp:Label ID="lblloginmsg" runat="server" Font-Names="Comic Sans MS" ForeColor="Transparent"
                Style="z-index: 111; left: 184px; position: absolute; top: 136px" Width="184px"></asp:Label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd"
                ErrorMessage="RequiredFieldValidator" Style="z-index: 110; left: 400px; position: absolute;
                top: 88px">Enter Password</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp;
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
