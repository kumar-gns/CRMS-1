<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Status Master.aspx.cs" Inherits="Status_Master" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Status Master Page</title>
</head>
<body bgcolor="mistyrose">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }
    </script>
    <div>
        <asp:Label ID="lblsm" runat="server" Font-Bold="False" Font-Size="Larger" Font-Underline="True"
            Style="z-index: 100; left: 0px; position: absolute; top: 112px; text-align: center; padding-right: 37px; padding-left: 5px;" Text="Status Master" ForeColor="Green" Width="816px"></asp:Label>
        &nbsp;
        <asp:Label ID="lblstdes" runat="server" Style="z-index: 102; left: 272px; position: absolute;
            top: 192px" Text="Status Description" BackColor="Gainsboro" BorderColor="DarkGray"></asp:Label>
        <asp:Label ID="lbldate" runat="server" Style="z-index: 103; left: 616px; position: absolute;
            top: 112px; text-align: center;" Text="Date" BorderColor="Chocolate" BorderWidth="1px" Width="40px"></asp:Label>
        <asp:Label ID="lblstcd" runat="server" Style="z-index: 104; left: 272px; position: absolute;
            top: 160px" Text="Status Code" BackColor="Gainsboro" BorderColor="DarkGray"></asp:Label>
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 105; left: 672px; position: absolute;
            top: 112px" Width="96px" BackColor="Bisque" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtstcd" runat="server" Style="z-index: 106; left: 408px; position: absolute;
            top: 160px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtstdes" runat="server" Style="z-index: 107; left: 408px; position: absolute;
            top: 192px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:Button ID="btnext" runat="server" OnClick="btnext_Click" OnClientClick="exit()"
            Style="z-index: 108; left: 624px; position: absolute; top: 304px" Text="Exit"
            Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" />
        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Style="z-index: 109;
            left: 552px; position: absolute; top: 304px" Text="View" Width="64px" BackColor="AntiqueWhite" BorderColor="Gray" />
        <asp:Button ID="btncncl" runat="server" OnClick="btncncl_Click" Style="z-index: 110;
            left: 480px; position: absolute; top: 304px" Text="Cancel" BackColor="AntiqueWhite" BorderColor="Gray" />
        <asp:Button ID="btndlt" runat="server" OnClick="btndlt_Click" Style="z-index: 111;
            left: 416px; position: absolute; top: 304px" Text="Delete" BackColor="AntiqueWhite" BorderColor="Gray" />
        <asp:Button ID="btnmdfy" runat="server" OnClick="btnmdfy_Click" Style="z-index: 112;
            left: 352px; position: absolute; top: 304px" Text="Modify" BackColor="AntiqueWhite" BorderColor="Gray" />
        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="z-index: 113;
            left: 288px; position: absolute; top: 304px" Text="Add" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" />
        <asp:Label ID="lblsmmsg" runat="server" Style="z-index: 114; left: 0px; position: absolute;
            top: 264px; direction: ltr; text-indent: 50pt; text-align: center;" Width="728px" Font-Bold="True" Font-Names="Monotype Corsiva" ForeColor="Blue" Height="16px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstcd"
            ErrorMessage="Enter the Code" Style="z-index: 116; left: 576px; position: absolute;
            top: 160px" Width="96px"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
