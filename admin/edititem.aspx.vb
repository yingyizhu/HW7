
Partial Class admin_edititem
    Inherits System.Web.UI.Page


    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted



        Dim deletedItem As String = e.Values("ItemrName").ToString


        Label1.Text = deletedItem & " has been deleted from the database."


        Response.AddHeader("REFRESH", "3;URL= forswap.aspx ")
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.AddHeader("REFRESH", "3;URL= forswap.aspx ")
    End Sub




    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated


        Response.AddHeader("REFRESH", "3;URL= forswap.aspx ")
    End Sub

End Class
