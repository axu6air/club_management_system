<%@ Page Language="C#" AutoEventWireup="true" CodeFile="President.aspx.cs" Inherits="President" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="welcome_Label" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="logout" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="member_id" HeaderText="member_id" InsertVisible="False" ReadOnly="True" SortExpression="member_id" />
                <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                <asp:BoundField DataField="member_rank" HeaderText="member_rank" SortExpression="member_rank" />
                <asp:BoundField DataField="member_validity" HeaderText="member_validity" SortExpression="member_validity" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:club_webConnectionString %>" SelectCommand="SELECT [member_id], [member_name], [member_rank], [member_validity] FROM [member_registered]"></asp:SqlDataSource>
    
    </div>
        <p>
            To Update Member Validity:</p>
        <p>
            Member ID:
            <asp:TextBox ID="member_id" runat="server" Width="47px"></asp:TextBox>
&nbsp;
        </p>
        <p>
            <asp:Button ID="valid_chek" runat="server" OnClick="valid_chek_Click" Text="Valid" />
            <asp:Button ID="invalid_check" runat="server" OnClick="invalid_check_Click" Text="Invalid" />
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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
        </p>
    </form>
</body>
</html>
