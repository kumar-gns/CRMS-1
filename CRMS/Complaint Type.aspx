<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Complaint Type.aspx.cs" Inherits="Complaint_Type" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Complaint Type Page</title>
</head>
<body bgcolor="#e0d4c6">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    {
    window.close();
    }
    </script>
    <div>
        <asp:Label ID="lblpoc" runat="server" Style="z-index: 100; left: 120px; position: absolute;
            top: 200px" Text="Priority Of Complaint" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtctc"
            ErrorMessage="RequiredFieldValidator" Style="z-index: 101; left: 504px; position: absolute;
            top: 152px" Width="112px">Enter the Code</asp:RequiredFieldValidator>
        &nbsp;
        <asp:Label ID="lblctc" runat="server" Style="z-index: 103; left: 120px; position: absolute;
            top: 152px" Text="Complaint Type Code" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        &nbsp; &nbsp;
        <asp:Label ID="lblctd" runat="server" Style="z-index: 106; left: 120px; position: absolute;
            top: 176px" Text="Complaint Type Description" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        &nbsp;
        <asp:Label ID="lblnowh" runat="server" Style="z-index: 108; left: 120px; position: absolute;
            top: 248px" Text="No. of Working Hours" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lblct" runat="server" Font-Bold="False" Font-Size="Large" Font-Underline="True"
            Height="24px" Style="z-index: 109; left: 0px; position: absolute; top: 96px; text-align: center;"
            Text="Complaint type" Width="728px" Font-Italic="False" Font-Names="Times New Roman" ForeColor="Green"></asp:Label>
        <asp:Label ID="lbldcc" runat="server" Style="z-index: 110; left: 120px; position: absolute;
            top: 224px" Text="Department / Category Code" BackColor="Gainsboro" BorderColor="Gray" BorderWidth="1px"></asp:Label>
        <asp:Label ID="lbldt" runat="server" Style="z-index: 111; left: 544px; position: absolute;
            top: 96px; text-align: center;" Text="Date" BorderColor="#FF8000" BorderWidth="1px" Width="40px"></asp:Label>
        <asp:TextBox ID="txtnowh" runat="server" MaxLength="2" Style="z-index: 112; left: 320px;
            position: absolute; top: 248px" TabIndex="7" Width="40px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px"></asp:TextBox>
        <asp:TextBox ID="txtctd" runat="server" MaxLength="40" Style="z-index: 113; left: 320px;
            position: absolute; top: 176px" TabIndex="3" Width="400px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px"></asp:TextBox>
        <asp:TextBox ID="txtpoc" runat="server" MaxLength="10" Style="z-index: 114; left: 320px;
            position: absolute; top: 200px" TabIndex="4" Width="120px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px"></asp:TextBox>
        <asp:TextBox ID="txtctc" runat="server" MaxLength="5" Style="z-index: 115; left: 320px;
            position: absolute; top: 152px" TabIndex="2" Width="176px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px"></asp:TextBox>
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 116; left: 608px; position: absolute;
            top: 96px" TabIndex="1" BackColor="Bisque" BorderColor="Gray" BorderWidth="1px" ForeColor="Black" Width="96px"></asp:TextBox>
        &nbsp;
        <asp:DropDownList ID="ddldcc" runat="server" Style="z-index: 118; left: 320px; position: absolute;
            top: 224px" TabIndex="5" Width="120px" BackColor="Lavender" ForeColor="Fuchsia">
            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
       
        <asp:Button ID="btnview" runat="server" Style="z-index: 121; left: 456px; position: absolute;
            top: 336px" TabIndex="14" Text="View" OnClick="btnview_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btncncl" runat="server" Style="z-index: 122; left: 392px; position: absolute;
            top: 336px" TabIndex="13" Text="Cancel" OnClick="btncncl_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btndlt" runat="server" Style="z-index: 123; left: 328px; position: absolute;
            top: 336px" TabIndex="12" Text="Delete" OnClick="btndlt_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnmdfy" runat="server" OnClick="btnmdfy_Click" Style="z-index: 124;
            left: 264px; position: absolute; top: 336px" TabIndex="11" Text="Modify" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="z-index: 125;
            left: 216px; position: absolute; top: 336px" TabIndex="10" Text="Add" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:Label ID="lblctmsg" runat="server" Style="z-index: 126; left: 8px; position: absolute;
            top: 288px; text-align: center;" Width="712px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="Large" ForeColor="Blue"></asp:Label>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:Button ID="btnexit" runat="server" OnClientClick="exit()" Style="z-index: 127;
            left: 512px; position: absolute; top: 336px" TabIndex="16" Text="Exit" Width="40px" OnClick="btnexit_Click" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddldcc"
            ErrorMessage="Select a value" Style="z-index: 129; left: 464px; position: absolute;
            top: 224px" Operator="NotEqual" ValueToCompare="--SELECT--"></asp:CompareValidator>
    
    </div>
    </form>
</body>
</html>
