
Partial Class RecipeDetails
    Inherits System.Web.UI.Page

    Protected Sub RecpieDetailsView_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles RecpieDetailsView.ItemDeleted
        Dim deletedRecipe As String = e.Values("RecipeName").ToString()
        lbldeletedRecipe.Text = deletedRecipe & " has been deleted from the database"

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub

    Protected Sub RecpieDetailsView_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles RecpieDetailsView.ItemInserted
        Response.Redirect("default.aspx")

    End Sub

    Protected Sub RecpieDetailsView_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles RecpieDetailsView.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub
End Class
