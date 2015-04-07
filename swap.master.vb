
Partial Class swap
    Inherits System.Web.UI.MasterPage


    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim time As Date = Date.Now
        Label1.Text = time
    End Sub
End Class

