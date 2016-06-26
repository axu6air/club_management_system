<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="admin_welcome" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="admin_logout" runat="server" OnClick="admin_logout_Click" Text="logout" />
        <br />
        <br />
    
        New Club Name:
        <asp:TextBox ID="admin_clubname" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="admin_createClub" runat="server" Text="Create New Club" OnClick="admin_createClub_Click" />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:club_webConnectionString1 %>" DeleteCommand="DELETE FROM [Club] WHERE [club_id] = @club_id" InsertCommand="INSERT INTO [Club] ([club_name]) VALUES (@club_name)" ProviderName="<%$ ConnectionStrings:club_webConnectionString1.ProviderName %>" SelectCommand="SELECT [club_id], [club_name] FROM [Club]" UpdateCommand="UPDATE [Club] SET [club_name] = @club_name WHERE [club_id] = @club_id">
            <DeleteParameters>
                <asp:Parameter Name="club_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="club_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="club_name" Type="String" />
                <asp:Parameter Name="club_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="member_id" HeaderText="member_id" InsertVisible="False" ReadOnly="True" SortExpression="member_id" />
                <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                <asp:BoundField DataField="member_club" HeaderText="member_club" SortExpression="member_club" />
                <asp:BoundField DataField="member_rank" HeaderText="member_rank" SortExpression="member_rank" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:club_webConnectionString %>" SelectCommand="SELECT [member_id], [member_name], [member_club], [member_rank] FROM [member_registered]"></asp:SqlDataSource>
        <br />
        To change the rank:<br />
    
    </div>
        <asp:TextBox ID="member_id" runat="server"></asp:TextBox>
        <asp:DropDownList ID="rank_list" runat="server">
            <asp:ListItem Selected="True">Change Rank</asp:ListItem>
            <asp:ListItem>general member</asp:ListItem>
            <asp:ListItem>president</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="admin_Update" runat="server" Text="Update" OnClick="admin_Update_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="club_id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="club_id" HeaderText="club_id" ReadOnly="True" SortExpression="club_id" />
                <asp:BoundField DataField="club_name" HeaderText="club_name" SortExpression="club_name" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:club_webConnectionString %>" DeleteCommand="DELETE FROM [Club] WHERE [club_id] = @club_id" InsertCommand="INSERT INTO [Club] ([club_name]) VALUES (@club_name)" ProviderName="<%$ ConnectionStrings:club_webConnectionString.ProviderName %>" SelectCommand="SELECT [club_id], [club_name] FROM [Club]" UpdateCommand="UPDATE [Club] SET [club_name] = @club_name WHERE [club_id] = @club_id">
            <DeleteParameters>
                <asp:Parameter Name="club_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="club_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="club_name" Type="String" />
                <asp:Parameter Name="club_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        To Delete a club:<br />
        :<asp:TextBox ID="club_id" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="club_delete" runat="server" OnClick="club_delete_Click" Text="Delete" />
    </form>
</body>
</html>
