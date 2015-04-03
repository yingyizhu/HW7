<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xedititem.aspx.vb" Inherits="xnewitems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" DeleteCommand="DELETE FROM [yzhu16HW7_swap] WHERE [ItemID] = @ItemID" InsertCommand="INSERT INTO [yzhu16HW7_swap] ([ItemrName], [OwnerName], [ItemDesc], [Wanted], [ContactInfo], [Location], [Donate], [Price], [Image]) VALUES (@ItemrName, @OwnerName, @ItemDesc, @Wanted, @ContactInfo, @Location, @Donate, @Price, @Image)" SelectCommand="SELECT * FROM [yzhu16HW7_swap]" UpdateCommand="UPDATE [yzhu16HW7_swap] SET [ItemrName] = @ItemrName, [OwnerName] = @OwnerName, [ItemDesc] = @ItemDesc, [Wanted] = @Wanted, [ContactInfo] = @ContactInfo, [Location] = @Location, [Donate] = @Donate, [Price] = @Price, [Image] = @Image WHERE [ItemID] = @ItemID">
            <DeleteParameters>
                <asp:Parameter Name="ItemID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ItemrName" Type="String" />
                <asp:Parameter Name="OwnerName" Type="String" />
                <asp:Parameter Name="ItemDesc" Type="String" />
                <asp:Parameter Name="Wanted" Type="String" />
                <asp:Parameter Name="ContactInfo" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Donate" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Image" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ItemrName" Type="String" />
                <asp:Parameter Name="OwnerName" Type="String" />
                <asp:Parameter Name="ItemDesc" Type="String" />
                <asp:Parameter Name="Wanted" Type="String" />
                <asp:Parameter Name="ContactInfo" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Donate" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Image" Type="Object" />
                <asp:Parameter Name="ItemID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ItemID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ItemID:
                <asp:Label ID="ItemIDLabel1" runat="server" Text='<%# Eval("ItemID") %>' />
                <br />
                ItemrName:
                <asp:TextBox ID="ItemrNameTextBox" runat="server" Text='<%# Bind("ItemrName") %>' />
                <br />
                OwnerName:
                <asp:TextBox ID="OwnerNameTextBox" runat="server" Text='<%# Bind("OwnerName") %>' />
                <br />
                ItemDesc:
                <asp:TextBox ID="ItemDescTextBox" runat="server" Text='<%# Bind("ItemDesc") %>' />
                <br />
                Wanted:
                <asp:TextBox ID="WantedTextBox" runat="server" Text='<%# Bind("Wanted") %>' />
                <br />
                ContactInfo:
                <asp:TextBox ID="ContactInfoTextBox" runat="server" Text='<%# Bind("ContactInfo") %>' />
                <br />
                Location:
                <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
                <br />
                Donate:
                <asp:TextBox ID="DonateTextBox" runat="server" Text='<%# Bind("Donate") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ItemrName:
                <asp:TextBox ID="ItemrNameTextBox" runat="server" Text='<%# Bind("ItemrName") %>' />
                <br />
                OwnerName:
                <asp:TextBox ID="OwnerNameTextBox" runat="server" Text='<%# Bind("OwnerName") %>' />
                <br />
                ItemDesc:
                <asp:TextBox ID="ItemDescTextBox" runat="server" Text='<%# Bind("ItemDesc") %>' />
                <br />
                Wanted:
                <asp:TextBox ID="WantedTextBox" runat="server" Text='<%# Bind("Wanted") %>' />
                <br />
                ContactInfo:
                <asp:TextBox ID="ContactInfoTextBox" runat="server" Text='<%# Bind("ContactInfo") %>' />
                <br />
                Location:
                <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
                <br />
                Donate:
                <asp:TextBox ID="DonateTextBox" runat="server" Text='<%# Bind("Donate") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ItemID:
                <asp:Label ID="ItemIDLabel" runat="server" Text='<%# Eval("ItemID") %>' />
                <br />
                ItemrName:
                <asp:Label ID="ItemrNameLabel" runat="server" Text='<%# Bind("ItemrName") %>' />
                <br />
                OwnerName:
                <asp:Label ID="OwnerNameLabel" runat="server" Text='<%# Bind("OwnerName") %>' />
                <br />
                ItemDesc:
                <asp:Label ID="ItemDescLabel" runat="server" Text='<%# Bind("ItemDesc") %>' />
                <br />
                Wanted:
                <asp:Label ID="WantedLabel" runat="server" Text='<%# Bind("Wanted") %>' />
                <br />
                ContactInfo:
                <asp:Label ID="ContactInfoLabel" runat="server" Text='<%# Bind("ContactInfo") %>' />
                <br />
                Location:
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Bind("Location") %>' />
                <br />
                Donate:
                <asp:Label ID="DonateLabel" runat="server" Text='<%# Bind("Donate") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
