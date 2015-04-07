<%@ Page Title="" Language="VB" MasterPageFile="~/swap.master" AutoEventWireup="false" CodeFile="additem.aspx.vb" Inherits="additem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Post New Item
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW7_swap %>" DeleteCommand="DELETE FROM [yzhu16HW7_swap] WHERE [ItemID] = @ItemID" InsertCommand="INSERT INTO [yzhu16HW7_swap] ([ItemrName], [OwnerName], [ItemDesc], [Wanted], [ContactInfo], [Location], [Donate], [Price]) VALUES (@ItemrName, @OwnerName, @ItemDesc, @Wanted, @ContactInfo, @Location, @Donate, @Price)" SelectCommand="SELECT * FROM [yzhu16HW7_swap]" UpdateCommand="UPDATE [yzhu16HW7_swap] SET [ItemrName] = @ItemrName, [OwnerName] = @OwnerName, [ItemDesc] = @ItemDesc, [Wanted] = @Wanted, [ContactInfo] = @ContactInfo, [Location] = @Location, [Donate] = @Donate, [Price] = @Price WHERE [ItemID] = @ItemID">
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
                <asp:Parameter Name="ItemID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" CssClass="cssdetailsview"
HeaderStyle-CssClass="header"
FieldHeaderStyle-CssClass="fieldheader"

AlternatingRowStyle-CssClass="altrow"
CommandRowStyle-CssClass="command"
PagerStyle-CssClass="pager">
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>

            <Fields>
                <asp:TemplateField HeaderText="ItemID" InsertVisible="False" SortExpression="ItemID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ItemID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="* Item Name" SortExpression="ItemrName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemrName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ItemrNameValidator" runat="server" ErrorMessage="Please enter the item name!" CssClass="validationerror" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                    </EditItemTemplate>

                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemrName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ItemrNameValidator" runat="server" ErrorMessage="Please enter the item name!" CssClass="validationerror" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                    </InsertItemTemplate>

                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ItemrName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                




                <asp:TemplateField HeaderText="* Owner Name" SortExpression="OwnerName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OwnerName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="OwnerNameValidator" runat="server" ErrorMessage="Please enter your name!" CssClass="validationerror" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OwnerName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="OwnerNameValidator" runat="server" ErrorMessage="Please enter your name!" CssClass="validationerror" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("OwnerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="* Item Desc" SortExpression="ItemDesc">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ItemDescValidator" runat="server" ErrorMessage="Please enter the description!" CssClass="validationerror" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ItemDescValidator" runat="server" ErrorMessage="Please enter the description!" CssClass="validationerror" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>




                <asp:TemplateField HeaderText="Wanted" SortExpression="Wanted">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Wanted") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Wanted") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Wanted") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="* ContactInfo" SortExpression="ContactInfo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ContactInfo") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ContactInfoValidator" runat="server" ErrorMessage="Please enter your contact information!" CssClass="validationerror" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ContactInfo") %>'></asp:TextBox>
                       <asp:RequiredFieldValidator ID="ContactInfoValidator" runat="server" ErrorMessage="Please enter your contact information!" CssClass="validationerror" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("ContactInfo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>




                <asp:TemplateField HeaderText="Location" SortExpression="Location">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>




                <asp:TemplateField HeaderText="* Donate('Y'or'N')" SortExpression="Donate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Donate") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="DonateValidator" runat="server" ErrorMessage="Please enter Y or N!" CssClass="validationerror" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Donate") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="DonateValidator" runat="server" ErrorMessage="Please enter Y or N!" CssClass="validationerror" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Donate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>




                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
        </asp:DetailsView>
      
</asp:Content>

