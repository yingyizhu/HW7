
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_searchItem_TextChanged(sender As Object, e As EventArgs) Handles tb_searchItem.TextChanged
        Dim searchWord As String
        searchWord = "Select * From yzhu16HW7_swap where (ItemrName Like '%" + tb_searchItem.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub tb_searchAnotherItem_TextChanged(sender As Object, e As EventArgs) Handles tb_searchAnotherItem.TextChanged
        Dim searchWord As String
        searchWord = "Select * From yzhu16HW7_swap where (ItemrName Like '%" + tb_searchAnotherItem.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
