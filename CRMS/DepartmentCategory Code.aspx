<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepartmentCategory Code.aspx.cs" Inherits="DepartmentCategory_Code" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Department Catagery code Page</title>
</head>
<body bgcolor="lightgreen">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }
    </script>
    
    <div>
        <asp:Label ID="lblghmc" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"
            ForeColor="Green" Style="z-index: 100; left: 0px; position: absolute; top: 8px; text-align: center;"
            Text="Greater Hyderabad Municipal Corporation" Width="728px" BackColor="LightSalmon" BorderColor="DimGray" BorderWidth="2px" Font-Names="Arial"></asp:Label>
        <asp:Label ID="lbldc" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"
            Style="z-index: 101; left: -1px; position: absolute; top: 88px; text-align: center;" Text="Department / Category" Font-Italic="False" ForeColor="Green" Width="728px"></asp:Label>
        <asp:TextBox ID="txtdate" runat="server" Style="z-index: 102; left: 608px; position: absolute;
            top: 88px" TabIndex="1" BackColor="Linen" ForeColor="ControlText" Height="16px" Width="96px"></asp:TextBox>
        <asp:Label ID="lbldate" runat="server" Style="z-index: 103; left: 528px; position: absolute;
            top: 88px; text-align: center;" Text="Date" BackColor="Transparent" BorderColor="Chocolate" BorderWidth="1px" Width="48px"></asp:Label>
        <asp:Label ID="lbldhid" runat="server" Style="z-index: 104; left: 152px; position: absolute;
            top: 224px" Text="Department Head User ID" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px" Width="184px"></asp:Label>
        <asp:Label ID="lbldcn" runat="server" Style="z-index: 105; left: 152px; position: absolute;
            top: 192px" Text="Department / Category Name" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbldcc" runat="server" Font-Bold="False" ForeColor="Black" Style="z-index: 106;
            left: 152px; position: absolute; top: 160px" Text="Department / Category Code" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:TextBox ID="txtdcn" runat="server" MaxLength="40" Style="z-index: 107; left: 408px;
            position: absolute; top: 192px" TabIndex="3" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="txtdcc" runat="server" MaxLength="5" Style="z-index: 108; left: 408px;
            position: absolute; top: 160px" TabIndex="2" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        <asp:Label ID="lbldcmsg" runat="server" Style="z-index: 109; left: 0px; position: absolute;
            top: 272px; direction: ltr; text-indent: 10pt; text-align: center;" Width="720px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="Large" ForeColor="Blue"></asp:Label>
        <asp:Button ID="btnexit" runat="server" CausesValidation="False" OnClick="btnexit_Click"
            OnClientClick="exit()" Style="z-index: 110; left: 512px; position: absolute;
            top: 328px" TabIndex="11" Text="Exit" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnmdfy" runat="server" OnClick="btnmdfy_Click" Style="z-index: 111;
            left: 232px; position: absolute; top: 328px" TabIndex="6" Text="Modify" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="z-index: 112;
            left: 160px; position: absolute; top: 328px" TabIndex="5" Text="Add" Width="64px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:DropDownList ID="ddid" runat="server" Style="z-index: 113; left: 408px; position: absolute;
            top: 224px" Width="128px" BackColor="Lavender" ForeColor="Fuchsia">
            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnview" runat="server" OnClick="btnview_Click1" Style="z-index: 114;
            left: 440px; position: absolute; top: 328px" TabIndex="10" Text="View" Width="56px" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btncncl" runat="server" CausesValidation="False" OnClick="btncncl_Click"
            Style="z-index: 115; left: 368px; position: absolute; top: 328px" TabIndex="9"
            Text="Cancel" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btndlt" runat="server" OnClick="btndlt_Click" Style="z-index: 116;
            left: 304px; position: absolute; top: 328px" TabIndex="7" Text="Delete" BackColor="AntiqueWhite" BorderColor="Gray" BorderWidth="1px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdcc"
            ErrorMessage="Please Enter The Code" Style="z-index: 117; left: 568px; position: absolute;
            top: 160px" Width="144px"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddid"
            ErrorMessage="Select a value" Operator="NotEqual" Style="z-index: 119; left: 544px;
            position: absolute; top: 224px" ValueToCompare="--SELECT--" Width="104px"></asp:CompareValidator>
        &nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    
    </div>
    </form>
</body>
</html>
