﻿<%@ Page Title="" Language="VB" MasterPageFile="~/swap.master" AutoEventWireup="false" CodeFile="itemdetail.aspx.vb" Inherits="user_itemdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Item Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" DeleteCommand="DELETE FROM [yzhu16HW7_swap] WHERE [ItemID] = @ItemID" InsertCommand="INSERT INTO [yzhu16HW7_swap] ([ItemrName], [OwnerName], [ItemDesc], [Wanted], [ContactInfo], [Location], [Donate], [Price], [Image]) VALUES (@ItemrName, @OwnerName, @ItemDesc, @Wanted, @ContactInfo, @Location, @Donate, @Price, @Image)" SelectCommand="SELECT * FROM [yzhu16HW7_swap] WHERE ([ItemID] = @ItemID)" UpdateCommand="UPDATE [yzhu16HW7_swap] SET [ItemrName] = @ItemrName, [OwnerName] = @OwnerName, [ItemDesc] = @ItemDesc, [Wanted] = @Wanted, [ContactInfo] = @ContactInfo, [Location] = @Location, [Donate] = @Donate, [Price] = @Price, [Image] = @Image WHERE [ItemID] = @ItemID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ItemID" QueryStringField="ItemID" Type="Int32" />
            </SelectParameters>
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
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" CssClass="cssdetailsview"
HeaderStyle-CssClass="header"
FieldHeaderStyle-CssClass="fieldheader"
ItemStyle-CssClass="item"
AlternatingRowStyle-CssClass="altrow"
CommandRowStyle-CssClass="command"
PagerStyle-CssClass="pager">
            <Fields>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="ItemrName" HeaderText="ItemrName" SortExpression="ItemrName" />
                <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
                <asp:BoundField DataField="ItemDesc" HeaderText="ItemDesc" SortExpression="ItemDesc" />
                <asp:BoundField DataField="Wanted" HeaderText="Wanted" SortExpression="Wanted" />
                <asp:BoundField DataField="ContactInfo" HeaderText="ContactInfo" SortExpression="ContactInfo" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Donate" HeaderText="Donate" SortExpression="Donate" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Fields>
        </asp:DetailsView>
    
    </div>
</asp:Content>

