<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Name:
        <asp:TextBox ID="member_name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="member_name" ErrorMessage="Name is required!"></asp:RequiredFieldValidator>
        <br />
        Password:
        <asp:TextBox ID="member_password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="member_password" ErrorMessage="Password is required!"></asp:RequiredFieldValidator>
        <br />
        Club:<asp:DropDownList ID="member_club" runat="server" DataSourceID="SqlDataSource1" DataTextField="club_name" DataValueField="club_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:club_webConnectionString %>" SelectCommand="SELECT DISTINCT  [club_name] FROM [Club]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="member_register" runat="server" Text="Register" OnClick="member_register_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
