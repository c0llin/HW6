
Partial Class View
    Inherits System.Web.UI.Page

    Protected Sub newRecipeInsertView_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles newRecipeInsertView.ItemInserted
        Response.Redirect("Default.aspx")
    End Sub
End Class
