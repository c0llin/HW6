
Partial Class View
    Inherits System.Web.UI.Page

    Protected Sub newRecipeInsertView_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles newRecipeInsertView.ItemInserted
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        newRecipeInsertView.Focus() 'cursor change on load
    End Sub
End Class
