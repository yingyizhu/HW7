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

</head>


<body>

    <form id="form1" runat="server">

        <div class="auto-style1">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

     
        
        <h2>Contact Us!</h2>

        
    
<div id="content">
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
      


    </form>
    <p>
        &nbsp;</p>
</body>
</html>
