<%@ Page Title="" Language="VB" MasterPageFile="~/swap.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Contact Us
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>



        <div id="content">
            Your email address:<br />
            <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" Height="29px" Width="387px"></asp:TextBox>
            <br />
            <br />


            Your message:<br />
            <!-- to make your box bigger add rows, columns, and textmode -->
            <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." Height="211px" Width="390px"></asp:TextBox>

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

 

</asp:Content>

