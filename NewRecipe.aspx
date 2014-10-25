<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Recipe</title>
    <link rel="stylesheet" type="text/css"href="main.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 ingedients or Less!</h3>
    <nav>
            <a href="Default.aspx">Home</a> |
            <a href="NewRecipe.aspx">New Recipe</a>|
            <a href="AboutUs.aspx">About Us</a> |
            <a href="Contact.aspx">Contact</a>
        </nav>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_group1_cpetit_recipe %>" DeleteCommand="DELETE FROM [cpetit_hw6] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cpetit_hw6] ([Author], [RecipeName], [Notes], [Preperation], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5]) VALUES (@Author, @RecipeName, @Notes, @Preperation, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5)" SelectCommand="SELECT * FROM [cpetit_hw6]" UpdateCommand="UPDATE [cpetit_hw6] SET [Author] = @Author, [RecipeName] = @RecipeName, [Notes] = @Notes, [Preperation] = @Preperation, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5 WHERE [Id] = @Id">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
               
            </EditItemTemplate>
            <InsertItemTemplate>

                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name:
                        </td>
                        <td>
                            <asp:TextBox ID="tbRecipeName" runat="server" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvRecipeName" runat="server" ErrorMessage="Recipe name is required" CssClass="validationError" ControlToValidate="tbRecipeName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Author:
                        </td>
                        <td>
                            <asp:TextBox ID="tbAuthor" runat="server" Text='<%# Bind("Author") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvAuthor" runat="server" ErrorMessage="Author Name is required" CssClass="validationError" ControlToValidate="tbAuthor"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient 1:
                        </td>
                        <td>
                            <asp:TextBox ID="tbIngredient1" runat="server" Text='<%# Bind("Ingredient1") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvIngredient1" runat="server" ErrorMessage="Please enter first ingredient" CssClass="validationError" ControlToValidate="tbIngredient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient 2:
                        </td>
                        <td>
                            <asp:TextBox ID="tbIngredient2" runat="server" Text='<%# Bind("Ingredient2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient 3:
                        </td>
                        <td>
                            <asp:TextBox ID="tbIngredient3" runat="server" Text='<%# Bind("Ingredient3") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient 4:
                        </td>
                        <td>
                            <asp:TextBox ID="tbIngredient4" runat="server" Text='<%# Bind("Ingredient4") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ingredient 5:
                        </td>
                        <td>
                            <asp:TextBox ID="tbIngredient5" runat="server" Text='<%# Bind("Ingredient5") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Preperation:
                        </td>
                        <td>
                            <asp:TextBox ID="tbPreperation" runat="server" Text='<%# Bind("Preperation") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvPrep" runat="server" ErrorMessage="Please explain food preperation before submiting" CssClass="validationError" ControlToValidate="tbPreperation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" class="auto-style1">
                            Notes:
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="tbNotes" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            <asp:Button ID="btnInsert" runat="server" CausesValidation="true" CommandName="Insert" Text="Insert" />
                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>                 
                <br />

            </InsertItemTemplate>
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:FormView>
        
    </form>
</body>
</html>
