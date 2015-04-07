<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xcontact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>Web Contact Form</title>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #contact {
            text-align: left;
        }
        #content {
            text-align: left;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
</head>


<body>

    <form id="form1" runat="server">
         <div class="header">

        <div id="rightheader">
            <asp:Image ID="logo" runat="server" Height="120px" ImageUrl="~/logo.jpg" Width="120px" />
        </div>

       <div id ="title">
            <h1>Swap in Iowa</h1>
            <h3> Swap! Resell! Donate! Recycle!</h3>
       
        </div>

           
        </div>

        <div id="menu" style ="margin:auto 220px;">

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
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            </div>
       <div id="main" style="width: 860px;">
        <div class="auto-style1">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

     
        
        <h2>Contact Us!</h2>

        
    
<div id="content" style ="margin :auto ; ">
        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" Height="29px" Width="387px" ></asp:TextBox>
        <br />
        <br />
       
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." Height="211px" Width="390px" ></asp:TextBox>
       
      </div>
    
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

            <br />

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        </div>
      
           </div>

    </form>
    <p>
        &nbsp;</p>

     <div id="footer">
            &copy; 2015 MSCI:3300 - Software Design and Development

           
        </div>
</body>
</html>
