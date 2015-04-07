<%@ Page Title="" Language="VB" MasterPageFile="~/swap.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Homepage
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <h2>This is the default content for unauthenticated users. </h2>
       
    <div id="homepage content" style ="float : left; padding-left :250px; font-family  :'Comic Sans MS' ; font-size :20px;">
     <ul>
            <li>admin -
                <ul>
                    <li>Name: Harry, mikec</li>
                    <li>Password : pAssw0rd! </li>
                </ul>
            </li>
        </ul>
        <ul>
            <li>user -
                <ul>
                    <li>Name : zoe</li>
                    <li>Password: pAssw0rd! </li>
                </ul>
            </li>
        </ul>

        <p>
            &nbsp;</p>

        </div>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" SelectCommand="SELECT * FROM [yzhu16HW7_swap]"></asp:SqlDataSource>
        </p>
        <p>
            
           


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" PageSize="52"
Gridlines="None"
CssClass="cssgridview"
AlternatingRowStyle-CssClass="alt"
PagerStyle-CssClass="pgr" AllowPaging="True" AllowSorting="True"
>
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="ItemrName" HeaderText="ItemrName" SortExpression="ItemrName" />
                    <asp:BoundField DataField="ItemDesc" HeaderText="ItemDesc" SortExpression="ItemDesc" />
                </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
            </asp:GridView>
        </p>
       

</asp:Content>

