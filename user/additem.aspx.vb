
Partial Class additem
    Inherits System.Web.UI.Page


  

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.AddHeader("REFRESH", "3;URL=uswap.aspx ")

        ' If Roles.IsUserInRole(Login1.UserName, "r_administrator") = True Then
        'Response.Redirect("~/admin/forswap.aspx")
        'ElseIf Roles.IsUserInRole(Login1.UserName, "r_user") = True Then
        'Response.Redirect("~/user/uswap.aspx")
        'Else : Response.Redirect("~/Default.aspx")
        'End If
    End Sub

   
End Class

