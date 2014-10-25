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
        <asp:DetailsView ID="RecpieDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="253px" CssClass="Grid">
            <Fields>
                <asp:TemplateField HeaderText="Recipe Details"></asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Recipie Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:TemplateField HeaderText="Recipe Name" SortExpression="RecipeName">
                    <EditItemTemplate>
                        <asp:TextBox ID="tbRecipeName" runat="server" Text='<%# Bind("RecipeName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvf_name" runat="server" ErrorMessage="Recipe Name required" ControlToValidate="tbRecipeName"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RecipeName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("RecipeName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author" SortExpression="Author">
                    <EditItemTemplate>
                        <asp:TextBox ID="tbAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_author" runat="server" ErrorMessage="Author name required" ControlToValidate="tbAuthor"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ingredient 1" SortExpression="Ingredient1">
                    <EditItemTemplate>
                        <asp:TextBox ID="tbIngredient" runat="server" Text='<%# Bind("Ingredient1") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ingredient" runat="server" ErrorMessage="Please enter 1st ingredient" ControlToValidate="tbIngredient"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient1") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ingredient1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient 2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient 3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient 4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient 5" SortExpression="Ingredient5" />
                <asp:TemplateField HeaderText="Preperation" SortExpression="Preperation">
                    <EditItemTemplate>
                        <asp:TextBox ID="tbPrep" runat="server" Text='<%# Bind("Preperation") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="prep" runat="server" ErrorMessage="Please enter food preperation steps" ControlToValidate="tbPrep"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Preperation") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Preperation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <br />
        
        <br />
       
        <br />
        
        <br />
    
    </div>
    </form>
    <div class="foot" >&#169 2014 - Software Development &amp Design<br />
    </div>
</body>
</html>
