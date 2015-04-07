<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xsearch.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Search</title>

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
</head>

<body>
     <div id="form1" runat="server">
    

        
       <div class="header">

        <div id="rightheader">
            <asp:Image ID="logo" runat="server" Height="120px" ImageUrl="~/logo.jpg" Width="120px" />
        </div>

       <div id ="title">
            <h1>Swap in Iowa</h1>
            <h3> Swap! Resell! Donate! Recycle!</h3>
       
        </div>

           
        </div>

        <div id="menu">

            <ul id="nav">
                <li><asp:HyperLink ID="link_Home" runat="server" NavigateUrl="~/homepage.aspx">Home</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_swap" runat="server" NavigateUrl="~/user/uswap.aspx">For Swap</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_newitem" runat="server" NavigateUrl="~/user/additem.aspx">Post New Items</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_manageAccount" runat="server" NavigateUrl="~/admin/siteManger/default.aspx">Admin Page</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_search" runat="server" NavigateUrl="~/xsearch.aspx">Search</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/xcontact.aspx">Contact Us</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
              
   
            </ul>
            <br />
            <br />
        </div>

        <div id="time" style="margin: 10px auto; text-align :center; ">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000">
                    </asp:Timer>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>

               </div>
        
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" SelectCommand="SELECT * FROM [yzhu16HW7_swap]"></asp:SqlDataSource>
    
    

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
        
            </Columns>
        </asp:GridView>

          <% End If %>
           
    </div>

        <div id="footer">
            &copy; 2015 MSCI:3300 - Software Design and Development

           
        </div>
    
</body>
</html>
