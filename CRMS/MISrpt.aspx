<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MISrpt.aspx.cs" Inherits="MISrpt" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>MISreport form Page</title>
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#e6ffdc">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }    
    </script>
    <div>
        <asp:Label ID="lbldt" runat="server" Style="z-index: 100; left: 832px; position: absolute;
            top: 88px; text-align: center;" Text="Date" Width="40px" BorderColor="Orange" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblacmwy" runat="server" Style="z-index: 101; left: 5px; position: absolute;
            top: 88px; text-align: center;" Text="Abstract of Complaints Month wise for the Year" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="Green" Font-Names="Times New Roman" Width="1032px"></asp:Label>
        <asp:Label ID="lblghmc" runat="server" Style="z-index: 102; left: 0px; position: absolute;
            top: 8px; text-align: center;" Text="Greater Hyderabad Muncipal Corporation" Font-Bold="True" Font-Size="X-Large" ForeColor="Green" Width="1040px" BackColor="LightSalmon" BorderColor="Black" BorderWidth="2px" Font-Names="Arial"></asp:Label>
        <asp:Label ID="lblyear" runat="server" Style="z-index: 103; left: 392px; position: absolute;
            top: 144px" Text="Year" Width="48px" BackColor="Gainsboro" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
        <asp:TextBox ID="txtyear" runat="server" Style="z-index: 104; left: 504px; position: absolute;
            top: 144px" TabIndex="1" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 105; left: 904px; position: absolute;
            top: 88px" BackColor="Bisque" BorderColor="Gray" BorderWidth="1px" Width="104px"></asp:TextBox>
        <asp:Button ID="btnprvw" runat="server" Style="z-index: 106; left: 376px; position: absolute;
            top: 192px" Text="Preview" TabIndex="2" OnClick="btnprvw_Click" BackColor="Bisque" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnexit" runat="server" Style="z-index: 107; left: 600px; position: absolute;
            top: 192px" Text="Exit" OnClientClick="exit()" TabIndex="4" BackColor="Bisque" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnclr" runat="server" Style="z-index: 108; left: 496px; position: absolute;
            top: 192px" Text="Clear" TabIndex="3" BackColor="Bisque" BorderColor="Gray" BorderWidth="1px" />
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
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
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="152px" Style="z-index: 110; left: 0px;
            position: absolute; top: 272px" Width="1048px" BackColor="LavenderBlush" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Names="Microsoft Sans Serif" ForeColor="Blue">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
                Style="z-index: 114; left: 0px; position: absolute; top: 0px" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
