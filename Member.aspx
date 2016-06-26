<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Welcome,
        <asp:Label ID="rank" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Button ID="logout" runat="server" OnClick="logout_Click" style="height: 26px" Text="logout" />
        <br />
        <br />
        Name:
        <asp:Label ID="label_name" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp; Validity:<asp:Label ID="label_validity" runat="server" Text="Label"></asp:Label>
&nbsp; Id:
        <asp:Label ID="label_id" runat="server" Text="Label"></asp:Label>
        </div>
        <p>
            <asp:HyperLink ID="change_password" runat="server" NavigateUrl="~/ChangePassword.aspx">Want to change password?</asp:HyperLink>
        </p>
    </form>
</body>
</html>
