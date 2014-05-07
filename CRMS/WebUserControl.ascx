<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<asp:Menu ID="mnH" runat="server" BackColor="Info" DynamicHorizontalOffset="2"
    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#0000C0" StaticSubMenuIndent="10px"
    Style="z-index: 100; left: 0px; position: absolute; top: 56px; table-layout: auto; padding-right: 37px; display: block; visibility: visible; cursor: default; padding-left: 5px;" Width="88px" Orientation="Horizontal" BorderColor="#8080FF" BorderWidth="2px" Height="16px" Font-Bold="True">
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
    <DynamicMenuStyle BackColor="#FFFBD6" />
    <StaticSelectedStyle BackColor="#FFCC66" />
    <DynamicSelectedStyle BackColor="#FFCC66" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <Items>
        <asp:MenuItem Text="Masters" Value="Masters">
            <asp:MenuItem NavigateUrl="~/Ward Civic Centre Code.aspx" Text="Ward /Civic Center" Value="Ward /Civic Center">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/DepartmentCategory Code.aspx" Text="Department/Category" Value="Department/Category">
            </asp:MenuItem>
            <asp:MenuItem Text="Status Code" Value="Status Code" NavigateUrl="~/Status Master.aspx"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Complaint Type.aspx" Text="Complaint Type" Value="Complaint Type">
            </asp:MenuItem>
            <asp:MenuItem Text="UserManagement" Value="UserManagement">
                <asp:MenuItem NavigateUrl="~/Creation Of Users.aspx" Text="Creation Of Users" Value="Creation Of Users">
                </asp:MenuItem>
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Complaints Registration" Value="Complaints Registration">
            <asp:MenuItem NavigateUrl="~/Complaint registration.aspx" Text="Registration Of Complaint" Value="Registration Of Complaint">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ModyCom.aspx" Text="Modification Of Complaint" Value="Modification Of Complaint">
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Complaints Monitoring" Value="Complaints Monitoring">
            <asp:MenuItem NavigateUrl="~/Complaints Deferred And Status Updation.aspx" Text="Complaints Deferred And Status Updation Details"
                Value="Complaints Deferred And Status Updation Details"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="EIS Reports" Value="EIS Reports">
            <asp:MenuItem NavigateUrl="~/EISreport1.aspx" Text="Complaint status wise report, ward/Department wise for a period"
                Value="Complaint status wise report, ward/Department wise for a period"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Logout" Value="Exit" NavigateUrl="~/login.aspx"></asp:MenuItem>
    </Items>
    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
</asp:Menu>
<asp:Label ID="lblghmc" runat="server" BackColor="LightSalmon" BorderColor="Black"
    BorderWidth="2px" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="Green"
    Height="8px" Style="padding-right: 37px; padding-left: 5px; z-index: 102; left: 0px;
    direction: ltr; text-indent: 25pt; position: absolute; top: 8px; text-align: center"
    Text="Greater Hyderabad Municipal Corporation" Width="728px"></asp:Label>
