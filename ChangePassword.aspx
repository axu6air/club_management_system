<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Id:
        <asp:TextBox ID="cpass_id" runat="server"></asp:TextBox>
        <p>
            Old Password:
            <asp:TextBox ID="oldpass" TextMode="Password" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            New Password: <asp:TextBox ID="newpass" TextMode="Password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>
