﻿
Partial Class additem
    Inherits System.Web.UI.Page


  

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.AddHeader("REFRESH", "3;URL=../Default.aspx ")
    End Sub

   
End Class

