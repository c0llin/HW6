<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Details</title>
    <link rel="stylesheet" type="text/css"href="main.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 ingedients or Less!</h3>
        <p>&nbsp;</p>
    <nav>
            <a href="Default.aspx">Home</a> |
            <a href="NewRecipe.aspx">New Recipe</a>|
            <a href="AboutUs.aspx">About Us</a> |
            <a href="Contact.aspx">Contact</a>
        </nav>
    <div>
    
        <asp:Label ID="lbldeletedRecipe" runat="server"></asp:Label>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_group1_cpetit_recipe %>" DeleteCommand="DELETE FROM [cpetit_hw6] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cpetit_hw6] ([Author], [RecipeName], [Notes], [Preperation], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5]) VALUES (@Author, @RecipeName, @Notes, @Preperation, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5)" SelectCommand="SELECT * FROM [cpetit_hw6] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [cpetit_hw6] SET [Author] = @Author, [RecipeName] = @RecipeName, [Notes] = @Notes, [Preperation] = @Preperation, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5 WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="RecpieDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="253px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Recipie Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient 1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient 2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient 3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient 4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient 5" SortExpression="Ingredient5" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
    
    </div>
    </form>
</body>
</html>
