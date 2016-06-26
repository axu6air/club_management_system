<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Club_Start.aspx.cs" Inherits="Club_Start" %>


<form id="form1" runat="server">
    <p>
        &nbsp;Login</p>
    <p>
        Id: <asp:TextBox ID="member_id" runat="server"></asp:TextBox>
    </p>
    <p>
        Password:
        <asp:TextBox ID="member_password" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="member_login" runat="server" Text="Login" OnClick="member_login_Click" />
    &nbsp;<asp:Button ID="member_registration" runat="server" OnClick="member_registration_Click" Text="Not Registered yet?" />
    </p>
    <p>
        <asp:Label ID="message" runat="server" Text="Label"></asp:Label>
    </p>
</form>

