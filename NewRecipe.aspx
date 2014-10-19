<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View.aspx.vb" Inherits="View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <asp:DetailsView ID="newRecipeInsertView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="100px" Width="300px">
            <Fields>
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
