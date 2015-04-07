<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xhomepage.aspx.vb" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .cssGridView td a, a:visited {
            color: #717171;
            text-decoration: underline;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>This is the default content for unauthenticated users. </h2>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" SelectCommand="SELECT * FROM [yzhu16HW7_swap]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ItemrName" HeaderText="ItemrName" SortExpression="ItemrName" />
                    <asp:BoundField DataField="ItemDesc" HeaderText="ItemDesc" SortExpression="ItemDesc" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
