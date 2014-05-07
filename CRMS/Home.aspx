<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page</title>
</head>
<body bgcolor="#edd7ff">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }
    </script>    
    <div>
        &nbsp;&nbsp;        
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderWidth="1px" Height="120px"
            Style="z-index: 100; left: 40px; position: absolute; top: 136px" Width="672px">
            <asp:Panel ID="Panel2" runat="server" BorderColor="Black" BorderWidth="1px" Height="104px"
                Style="z-index: 100; left: 8px; position: absolute; top: 8px" Width="656px">
                <asp:Panel ID="Panel3" runat="server" BorderColor="Black" BorderWidth="1px" Height="88px"
                    Style="z-index: 100; left: 8px; position: absolute; top: 8px" Width="640px">
                    <asp:Panel ID="Panel4" runat="server" BorderColor="Black" BorderWidth="1px" Height="72px"
                        Style="z-index: 100; left: 8px; position: absolute; top: 8px" Width="624px">
                        <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderStyle="Solid" Height="48px"
                            Style="z-index: 100; left: 8px; position: absolute; top: 8px" Width="600px">
                            <asp:Panel ID="Panel6" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="1px"
                                Height="32px" Style="z-index: 100; left: 8px; position: absolute; top: 8px" Width="584px">
                                <asp:Label ID="lblcrms" runat="server" BackColor="Cyan" BorderColor="#404040" BorderWidth="2px"
                                    Font-Bold="True" Font-Names="Georgia" ForeColor="Black" Height="20px" Style="z-index: 100;
                                    left: 8px; position: absolute; top: 4px; text-align: center" Text="Complaints Registering & Monitoring System"
                                    Width="568px"></asp:Label>
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        <asp:Label ID="lblghmc" runat="server" BackColor="LightSalmon" BorderColor="Black"
            BorderWidth="2px" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="Green"
            Style="z-index: 101; left: 0px; position: absolute; top: 8px; text-align: center; clear: none; padding-right: 37px; padding-left: 5px;"
            Text="Greater Hyderabad Municipal Corporation" Width="728px"></asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="LavenderBlush" Height="1px" Style="z-index: 102;
            left: 288px; position: absolute; top: 280px; clear: left; display: inline; float: left; visibility: visible;" Width="416px" BorderColor="Black" BorderWidth="2px">
            &nbsp;
            <asp:Label ID="lblerg" runat="server" BackColor="Moccasin" Font-Bold="True" Font-Italic="True"
                Font-Names="Century Gothic" Font-Size="Medium" ForeColor="Green" Style="z-index: 102;
                left: 0px; position: absolute; top: 144px; text-align: center" TabIndex="5" Text="-   Generating EIS Reports"
                Width="416px"></asp:Label>
            <asp:Label ID="lblcmd" runat="server" BackColor="LightYellow" Font-Bold="True" Font-Italic="True"
                Font-Names="Century Gothic" Font-Size="Medium" ForeColor="Green" Style="z-index: 103;
                left: 0px; position: absolute; top: 112px; text-align: center" TabIndex="4" Text="- Complaints Monitoring Details"
                Width="416px"></asp:Label>
            <asp:Label ID="lblcrd" runat="server" BackColor="LightSteelBlue" Font-Bold="True"
                Font-Italic="True" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="DarkGreen"
                Style="z-index: 104; left: 0px; position: absolute; top: 80px; text-align: center"
                TabIndex="3" Text="- Complaints Registration Details" Width="416px"></asp:Label>
            <asp:Label ID="lblcmm" runat="server" BackColor="LightCyan" Font-Bold="True" Font-Italic="True"
                Font-Names="Century Gothic" ForeColor="Green" Style="z-index: 105; left: 0px;
                position: absolute; top: 48px; text-align: center; clear: none; display: inline; float: left; visibility: visible; overflow: auto;" TabIndex="2" Text="-  Complaints Master Maintenance"
                Width="416px"></asp:Label>
            <asp:Label ID="lblfp" runat="server" BackColor="RosyBrown" Font-Bold="True" Font-Names="Georgia"
                Font-Size="Medium" Font-Underline="True" ForeColor="Black" Style="z-index: 106;
                left: 0px; position: absolute; top: 16px; text-align: left" TabIndex="1" Text="Functions Provided"
                Width="416px"></asp:Label>
            <asp:Button ID="btnclk" runat="server" BorderColor="Black" BorderWidth="1px" OnClientClick="exit()"
                Style="z-index: 108; left: 136px; position: absolute; top: 184px" TabIndex="6"
                Text="Click Here to Exit" />
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
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        &nbsp;<br />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
