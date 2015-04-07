<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xsearch.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" SelectCommand="SELECT * FROM [yzhu16HW7_swap]"></asp:SqlDataSource>
    
    </div>

           <% If Not IsPostBack Then%> 
        <asp:Label ID="lb_searchItemName" runat="server" Text="Search a item by name"></asp:Label>
&nbsp;
        <asp:TextBox ID="tb_searchItem" runat="server"></asp:TextBox>
        <br />
        <br />

         
       <% Else%>
        <asp:Label ID="lb_searchAnotherItemName0" runat="server" Text="Search another item by name"></asp:Label>
&nbsp;

    

        <asp:TextBox ID="tb_searchAnotherItem" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="ItemrName" HeaderText="ItemrName" SortExpression="ItemrName" />
                <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
                <asp:BoundField DataField="ItemDesc" HeaderText="ItemDesc" SortExpression="ItemDesc" />
                <asp:BoundField DataField="Wanted" HeaderText="Wanted" SortExpression="Wanted" />
                <asp:BoundField DataField="ContactInfo" HeaderText="ContactInfo" SortExpression="ContactInfo" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Donate" HeaderText="Donate" SortExpression="Donate" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        
            </Columns>
        </asp:GridView>

          <% End If %>

    </form>
</body>
</html>
