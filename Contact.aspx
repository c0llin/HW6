<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes - Contact Us</title>
    <link rel="stylesheet" type="text/css"href="main.css"/>
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
    <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
    </div>
    </form>
</body>
</html>
