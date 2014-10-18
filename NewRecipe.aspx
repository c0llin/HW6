<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Recipe</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav>
            <a href="Default.aspx">Home</a> |
            <a href="NewRecipe.aspx">New Recipe</a>|
            <a href="AboutUs.aspx">About Us</a> |
            <a href="Contact.aspx">Contact</a>
        </nav>
    <asp:Label ID="lblRecipeName" runat="server" Text="Recipe Name"></asp:Label>
        <asp:TextBox ID="tbRecipeName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Submitted By"></asp:Label>
        <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblIngredient1" runat="server" Text="Ingredient #1"></asp:Label>
        <asp:TextBox ID="tbIngredient1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblIngredient2" runat="server" Text="Ingredient #2"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblIngredient3" runat="server" Text="Ingredient #3"></asp:Label>
        <asp:TextBox ID="tbIngredient3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblIngredient4" runat="server" Text="Ingredient #4"></asp:Label>
        <asp:TextBox ID="tbIngredient4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lbIngredient5" runat="server" Text="Ingredient #5"></asp:Label>
        <asp:TextBox ID="tbIngredient5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Preparation "></asp:Label>
        <asp:TextBox ID="tbPreperation" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNotes" runat="server" Text="Notes"></asp:Label>
        <asp:TextBox ID="tbNotes" runat="server"></asp:TextBox>
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Button" />
        
        <br />
    </div>
    </form>
</body>
</html>
