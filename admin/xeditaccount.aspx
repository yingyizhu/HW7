<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xeditaccount.aspx.vb" Inherits="xeditaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_users %>" DeleteCommand="DELETE FROM [yzhu16HW7_users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [yzhu16HW7_users] ([UserID], [FirstName], [LastName], [City], [State], [ContactInfo], [UserName], [RoleName]) VALUES (@UserID, @FirstName, @LastName, @City, @State, @ContactInfo, @UserName, @RoleName)" SelectCommand="SELECT * FROM [yzhu16HW7_users]" UpdateCommand="UPDATE [yzhu16HW7_users] SET [FirstName] = @FirstName, [LastName] = @LastName, [City] = @City, [State] = @State, [ContactInfo] = @ContactInfo, [UserName] = @UserName, [RoleName] = @RoleName WHERE [UserID] = @UserID">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="Decimal" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ContactInfo" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="RoleName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ContactInfo" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="UserID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ContactInfo" HeaderText="ContactInfo" SortExpression="ContactInfo" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
