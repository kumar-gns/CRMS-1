<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Complaints Deferred And Status Updation.aspx.cs" Inherits="Complaints_Deferred_And_Status_Updation" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> Complaints Monitoring with status Page</title>
</head>
<body bgcolor="#cba299">
    <form id="form1" runat="server">
    <script language="javascript">
    function exit()
    
    {
    window.close();
    }
    </script>
    <div>
        &nbsp;
        <asp:Panel ID="pnlcrn" runat="server" Height="208px" Style="z-index: 100; left: 0px;
            position: absolute; top: 104px" Width="1040px" BackColor="LightSteelBlue">
            <asp:Label ID="lblcrn" runat="server" Style="z-index: 100; left: 56px; position: absolute;
                top: 8px" Text="Complaint Registration Number" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:TextBox ID="txtdoc" runat="server" Style="z-index: 101; left: 832px; position: absolute;
                top: 40px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblpc" runat="server" Style="z-index: 102; left: 648px; position: absolute;
                top: 88px" Text="Pin Code" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblarea" runat="server" Style="z-index: 103; left: 56px; position: absolute;
                top: 176px" Text="Area" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblhno" runat="server" Style="z-index: 104; left: 56px; position: absolute;
                top: 128px" Text="H. No." BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblfax" runat="server" Style="z-index: 105; left: 648px; position: absolute;
                top: 160px" Text="Fax" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblstrt" runat="server" Style="z-index: 106; left: 56px; position: absolute;
                top: 152px" Text="Street" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblph" runat="server" Style="z-index: 107; left: 648px; position: absolute;
                top: 136px" Text="Phone" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblmail" runat="server" Style="z-index: 108; left: 648px; position: absolute;
                top: 112px" Text="E-Mail" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:TextBox ID="txtmail" runat="server" Style="z-index: 109; left: 832px; position: absolute;
                top: 112px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:Label ID="lbledc" runat="server" Style="z-index: 110; left: 648px; position: absolute;
                top: 64px" Text="Expected Date Completion" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblan" runat="server" Style="z-index: 111; left: 56px; position: absolute;
                top: 80px" Text="Applicant Name" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblwcc" runat="server" Style="z-index: 112; left: 56px; position: absolute;
                top: 32px" Text="Ward Civic/Center" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lbladrs" runat="server" Style="z-index: 113; left: 56px; position: absolute;
                top: 104px" Text="Address" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lbltoc" runat="server" Style="z-index: 114; left: 648px; position: absolute;
                top: 16px" Text="Type Of Complaint" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblrdt" runat="server" Style="z-index: 115; left: 56px; position: absolute;
                top: 56px" Text="Registration Date" BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lbldoc" runat="server" Style="z-index: 116; left: 648px; position: absolute;
                top: 40px" Text="Desc. Of Compl." BackColor="Gainsboro" BorderColor="DarkGray" BorderWidth="1px"></asp:Label>
            <asp:TextBox ID="txthno" runat="server" Style="z-index: 117; left: 320px; position: absolute;
                top: 128px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtpc" runat="server" Style="z-index: 118; left: 832px; position: absolute;
                top: 88px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtadrs" runat="server" Style="z-index: 119; left: 320px; position: absolute;
                top: 104px" Width="200px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtan" runat="server" Style="z-index: 120; left: 320px; position: absolute;
                top: 80px" Width="200px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txttoc" runat="server" Style="z-index: 121; left: 832px; position: absolute;
                top: 16px" Width="88px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtstrt" runat="server" Style="z-index: 122; left: 320px; position: absolute;
                top: 152px" Width="200px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtrdt" runat="server" Style="z-index: 123; left: 320px; position: absolute;
                top: 56px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtfax" runat="server" Style="z-index: 124; left: 832px; position: absolute;
                top: 160px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtph" runat="server" Style="z-index: 125; left: 832px; position: absolute;
                top: 136px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtedc" runat="server" Style="z-index: 126; left: 832px; position: absolute;
                top: 64px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtarea" runat="server" Style="z-index: 127; left: 320px; position: absolute;
                top: 176px" Width="200px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
            <asp:DropDownList ID="ddlcrn" runat="server" Style="z-index: 128; left: 320px; position: absolute;
                top: 8px" AutoPostBack="True" OnSelectedIndexChanged="ddlcrn_SelectedIndexChanged" BackColor="Lavender" ForeColor="Fuchsia">
                <asp:ListItem>--SELECT--</asp:ListItem>
            </asp:DropDownList>
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtwcc" runat="server" Style="z-index: 130; left: 320px; position: absolute;
                top: 32px" Width="88px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </asp:Panel>
        &nbsp;&nbsp;
        <asp:Label ID="lblghmc" runat="server" Style="z-index: 101; left: 0px; position: absolute;
            top: 8px; text-align: center;" Text="Greater Hyderbad Muncipal Corporation" Font-Bold="True" Font-Size="X-Large" ForeColor="Green" BackColor="LightSalmon" BorderColor="Black" BorderWidth="2px" Font-Names="Arial" Width="1040px"></asp:Label>
        <asp:Label ID="lbldt" runat="server" Style="z-index: 102; left: 800px; position: absolute;
            top: 72px" Text="Date" BorderColor="Orange" BorderWidth="1px" Width="40px"></asp:Label>
        <asp:Label ID="lblcdsu" runat="server" Style="z-index: 103; left: 0px; position: absolute;
            top: 72px; text-align: center;" Text="Compliant Deferred/Status Updation" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="True" ForeColor="Green" Width="1040px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:TextBox ID="txtdt" runat="server" Style="z-index: 104; left: 880px; position: absolute;
            top: 72px" BackColor="Moccasin" BorderColor="Gray" BorderWidth="1px"></asp:TextBox>
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
        <asp:Panel ID="pnlDef" runat="server" BackColor="#C0FFFF" Height="64px" Style="z-index: 105;
            left: 0px; position: absolute; top: 384px" Width="1040px">
            <asp:Label ID="lbld" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 100;
                left: 24px; position: absolute; top: 32px; text-align: center;" Text="In Case Of Deferred" Font-Italic="True" BorderColor="DimGray" BorderWidth="1px" ForeColor="Red" Width="208px"></asp:Label>
            <asp:Label ID="lbldr" runat="server" Style="z-index: 101; left: 552px; position: absolute;
                top: 72px" Text="Deferred Reason" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lbldd" runat="server" Style="z-index: 102; left: 176px; position: absolute;
                top: 72px" Text="Date Of Deferred" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:TextBox ID="txtdr" runat="server" Style="z-index: 103; left: 680px; position: absolute;
                top: 72px" BackColor="Azure" BorderColor="DarkGray" BorderWidth="1px" TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="txtdd" runat="server" Style="z-index: 105; left: 296px; position: absolute;
                top: 72px" TabIndex="1"></asp:TextBox>
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
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="pnlcr" runat="server" BackColor="#C0C0FF" Height="168px" Style="z-index: 106;
            left: 0px; position: absolute; top: 384px" Width="1040px">
            <asp:Label ID="lblauid" runat="server" Style="z-index: 100; left: 688px; position: absolute;
                top: 40px" Text="Attended User ID" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblrmrks" runat="server" Style="z-index: 101; left: 440px; position: absolute;
                top: 128px" Text="Remarks" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblivd" runat="server" Style="z-index: 102; left: 264px; position: absolute;
                top: 80px" Text="Inspected/Verify Date" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblad" runat="server" Style="z-index: 103; left: 264px; position: absolute;
                top: 40px" Text="Attended Date" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:TextBox ID="txtrmrks" runat="server" Height="40px" Style="z-index: 104;
                left: 512px; position: absolute; top: 120px" Width="344px" BackColor="Azure" BorderColor="Gray" TabIndex="5"></asp:TextBox>
            <asp:TextBox ID="txtivuid" runat="server" Style="z-index: 105; left: 864px; position: absolute;
                top: 80px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="4"></asp:TextBox>
            <asp:TextBox ID="txtauid" runat="server" Style="z-index: 106; left: 864px; position: absolute;
                top: 40px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="txtivd" runat="server" Style="z-index: 107; left: 408px; position: absolute;
                top: 80px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="3"></asp:TextBox>
            <asp:TextBox ID="txtad" runat="server" Style="z-index: 108; left: 408px; position: absolute;
                top: 40px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="1"></asp:TextBox>
            <asp:Label ID="lblcr" runat="server" Font-Bold="True" Font-Underline="True" Style="z-index: 109;
                left: 24px; position: absolute; top: 8px; text-align: center;" Text="In Case Status is Completion /Rejection :" Font-Italic="True" BorderColor="DimGray" BorderWidth="1px" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblivuid" runat="server" Style="z-index: 111; left: 688px; position: absolute;
                top: 80px" Text="Inspected/Verified User ID" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
        </asp:Panel>
        &nbsp;&nbsp;
        <br />
        <asp:Label ID="lblcdosumsg" runat="server" Style="z-index: 107; left: 0px; position: absolute;
            top: 392px; text-align: center;" Width="1040px" Font-Bold="True" Font-Names="Monotype Corsiva" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Panel ID="pnlforward" runat="server" BackColor="#FFC0FF" Height="168px" Style="z-index: 109;
            left: -38px; position: absolute; top: 384px" Width="1040px">
            <br />
            <asp:Label ID="lblforward" runat="server" Style="z-index: 100; left: 32px; position: absolute;
                top: 16px" Text="In Case Of Forward" Font-Bold="True" Font-Italic="True" Font-Underline="True" BorderColor="DimGray" BorderWidth="1px" ForeColor="Red" Width="184px"></asp:Label>
            <asp:Label ID="lblDate" runat="server" Style="z-index: 101; left: 824px; position: absolute;
                top: 56px" Text="Date" BorderColor="DimGray" BorderWidth="1px" Width="40px"></asp:Label>
            <asp:Label ID="lblrmerks" runat="server" Style="z-index: 102; left: 480px; position: absolute;
                top: 112px" Text="Remarks" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblruid" runat="server" Style="z-index: 103; left: 144px; position: absolute;
                top: 56px" Text="Reciever User ID" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblsuid" runat="server" Style="z-index: 104; left: 496px; position: absolute;
                top: 56px" Text="SenderUser Id" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:TextBox ID="txtremrks" runat="server" Height="40px" Style="z-index: 105; left: 600px;
                position: absolute; top: 96px" Width="288px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="4"></asp:TextBox>
            <asp:TextBox ID="txtruid" runat="server" Style="z-index: 106; left: 272px; position: absolute;
                top: 56px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px">1</asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtdate" runat="server" Style="z-index: 107; left: 880px; position: absolute;
                top: 56px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="3" ></asp:TextBox>
            <asp:TextBox ID="txtsuid" runat="server" Style="z-index: 108; left: 608px; position: absolute;
                top: 56px" BackColor="Azure" BorderColor="Gray" BorderWidth="1px" TabIndex="2"></asp:TextBox>
            <br />
            <br />
            <br />
        </asp:Panel>
        <asp:Button ID="btnexit" runat="server" OnClientClick="exit()" Style="z-index: 110;
            left: 504px; position: absolute; top: 560px" Text="Exit" BackColor="Bisque" ForeColor="Black" BorderColor="DarkGray" BorderWidth="1px" />
        <asp:Button ID="btncancl" runat="server" Style="z-index: 111; left: 408px; position: absolute;
            top: 560px" Text="Cancel" BackColor="Bisque" ForeColor="Black" OnClick="btncancl_Click" BorderColor="DarkGray" BorderWidth="1px" />
        &nbsp;
        <asp:Button ID="btnsave" runat="server" BackColor="Bisque" ForeColor="Black" OnClick="btnsave_Click"
            Style="z-index: 112; left: 336px; position: absolute; top: 560px" Text="Save" BorderColor="DarkGray" BorderWidth="1px" />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="1px" Style="z-index: 113; left: 0px;
            position: absolute; top: 312px; text-align: center;" Width="1040px" BackColor="#FFFFC0">
            <br />
            <asp:TextBox ID="txtsc" runat="server" Style="z-index: 105; left: 824px; position: absolute;
                top: 32px" BorderColor="Gray" BorderWidth="1px" ForeColor="Maroon"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblpoc" runat="server" Style="z-index: 101; left: 136px; position: absolute;
                top: 32px" Text="Priority Of Complaint" BorderColor="DimGray" BorderWidth="1px"></asp:Label>
            <asp:Label ID="lblstats" runat="server" Style="z-index: 102; left: 616px; position: absolute;
                top: 32px" Text="Status" BorderColor="DimGray" BorderWidth="1px" Width="40px"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddlstats" runat="server" Style="z-index: 103; left: 680px; position: absolute;
                top: 32px" Width="128px" AutoPostBack="True" OnSelectedIndexChanged="ddlstats_SelectedIndexChanged" BackColor="Lavender" ForeColor="Fuchsia" TabIndex="2">
                <asp:ListItem>--SELECT--</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:DropDownList ID="ddlpoc" runat="server" Style="z-index: 104; left: 304px; position: absolute;
                top: 32px" BackColor="Lavender" ForeColor="Fuchsia" TabIndex="1">
                <asp:ListItem>--SELECT--</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
