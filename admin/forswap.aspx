<%@ Page Title="" Language="VB" MasterPageFile="~/swap.master" AutoEventWireup="false" CodeFile="forswap.aspx.vb" Inherits="admin_forswap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
Swap in Iowa - Swap! Resell! Donate! Recycle!
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" SelectCommand="SELECT * FROM [yzhu16HW7_swap]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" PageSize="52"
Gridlines="None"
CssClass="cssgridview"
AlternatingRowStyle-CssClass="alt"
PagerStyle-CssClass="pgr">
            <Columns>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="ItemrName" HeaderText="ItemrName" SortExpression="ItemrName" />
                <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
                <asp:BoundField DataField="Wanted" HeaderText="Wanted" SortExpression="Wanted" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Donate" HeaderText="Donate" SortExpression="Donate" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:HyperLinkField Text="More Details" DataNavigateUrlFields="ItemID" DataNavigateUrlFormatString="edititem.aspx?ItemID={0}" HeaderText="Details" />
            </Columns>
        </asp:GridView>


</asp:Content>

