<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EISreport1.aspx.cs" Inherits="EISreport1" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>EISreport form</title>
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#dcd8a7">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
       window.close();
    }
    </script>
    <div>
        &nbsp;&nbsp;
        <asp:Label ID="lbltd" runat="server" Style="z-index: 100; left: 648px; position: absolute;
            top: 184px" Text="To Date" BackColor="Gainsboro" BorderColor="DimGray" BorderWidth="1px" Width="80px"></asp:Label>
        &nbsp;
        <asp:Label ID="lblsc" runat="server" Style="z-index: 101; left: 648px; position: absolute;
            top: 136px" Text="Status Code" BackColor="Gainsboro" BorderColor="DimGray" BorderWidth="1px" Width="88px"></asp:Label>
        &nbsp;
        <asp:Label ID="lblwc" runat="server" Style="z-index: 103; left: 224px; position: absolute;
            top: 136px" Text="Ward Code" BackColor="Gainsboro" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbldt" runat="server" Style="z-index: 104; left: 864px; position: absolute;
            top: 88px; text-align: center;" Text="Date" Width="40px" BorderColor="#FF8000" BorderWidth="1px"></asp:Label>
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 105; left: 912px; position: absolute;
            top: 88px" Width="120px" BackColor="#FFE0C0" BorderColor="Silver" BorderWidth="1px" ForeColor="#000040"></asp:TextBox>
        <asp:Label ID="lblfd" runat="server" Style="z-index: 106; left: 224px; position: absolute;
            top: 184px" Text="From Date" BackColor="Gainsboro" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblcswdp" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False"
            Font-Size="Large" Font-Underline="True" Style="z-index: 107; left: 0px; position: absolute;
            top: 88px; text-align: center;" Text="Compliant Status Wise Reports Ward/Department For Period" Width="1040px" Font-Names="Times New Roman" ForeColor="Green"></asp:Label>
        <asp:Label ID="lblghmc" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Green"
            Style="z-index: 108; left: 0px; position: absolute; top: 8px; text-align: center;" Text="Greater Hyderabad Municipal Corpotion"
            Width="1040px" BackColor="LightSalmon" BorderColor="Black" BorderWidth="2px" Font-Names="Arial"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtwc" runat="server" Style="z-index: 109; left: 344px; position: absolute;
            top: 136px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtsc" runat="server" Style="z-index: 111; left: 776px; position: absolute;
            top: 136px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txttd" runat="server" Style="z-index: 112; left: 776px; position: absolute;
            top: 184px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px"></asp:TextBox>
        <asp:TextBox ID="txtfd" runat="server" Style="z-index: 113; left: 344px; position: absolute;
            top: 184px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px"></asp:TextBox>
        <asp:Button ID="btnppf" runat="server" Style="z-index: 114; left: 424px; position: absolute;
            top: 224px" Text="Preview" OnClick="btnppf_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnexit" runat="server" Style="z-index: 115; left: 648px; position: absolute;
            top: 224px" Text="Exit" OnClientClick="exit()" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnclr" runat="server" Style="z-index: 116; left: 584px; position: absolute;
            top: 224px" Text="Clear" OnClick="btnclr_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Label ID="lblprd" runat="server" Style="z-index: 117; left: 96px; position: absolute;
            top: 184px; text-align: center;" Text="Period" BackColor="LightPink" BorderColor="DimGray" BorderWidth="1px" Width="72px"></asp:Label>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
        <asp:Button ID="btnfile" runat="server" OnClick="btnfile_Click" Style="z-index: 120;
            left: 511px; position: absolute; top: 224px" Text="File" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" Width="48px" />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="144px" Style="z-index: 119; left: 0px;
            position: absolute; top: 264px" Width="1040px" BackColor="LavenderBlush" BorderColor="#000040" BorderWidth="2px" Font-Bold="True" Font-Names="Microsoft Sans Serif" ForeColor="Blue">
            <br />
            <br />
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
                Style="z-index: 183; left: 0px; position: absolute; top: 0px; color: blue; text-align: center;" />
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
        </asp:Panel>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
