<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes - Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Wicked Easy Recipes<asp:SqlDataSource ID="sqlcpetit_hw6" runat="server" ConnectionString="<%$ ConnectionStrings:db_group1_cpetit_recipe %>" DeleteCommand="DELETE FROM [cpetit_hw6] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cpetit_hw6] ([Id], [Author], [RecipeName], [Notes], [Preperation], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5]) VALUES (@Id, @Author, @RecipeName, @Notes, @Preperation, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5)" SelectCommand="SELECT * FROM [cpetit_hw6]" UpdateCommand="UPDATE [cpetit_hw6] SET [Author] = @Author, [RecipeName] = @RecipeName, [Notes] = @Notes, [Preperation] = @Preperation, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5 WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
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
        </h1>
       <h3>Using 5 ingedients or Less!</h3>
        <nav>
            <a href="Default.aspx">Home</a> |
            <a href="NewRecipe.aspx">New Recipe</a>|
            <a href="AboutUs.aspx">About Us</a> |
            <a href="Contact.aspx">Contact</a>
        </nav>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlcpetit_hw6">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient 1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient 2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient 3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient 4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient 5" SortExpression="Ingredient5" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
