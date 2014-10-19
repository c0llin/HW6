<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes - Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Wicked Easy Recipes<asp:SqlDataSource ID="sqlcpetit_hw6" runat="server" ConnectionString="<%$ ConnectionStrings:db_group1_cpetit_recipe %>" SelectCommand="SELECT * FROM [cpetit_hw6]"></asp:SqlDataSource>
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
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
