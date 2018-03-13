<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AdminTables.aspx.cs" Inherits="Admin_AdminTables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True">
    <Columns>
      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
      <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
      <asp:BoundField DataField="Descrip" HeaderText="Descrip" SortExpression="Descrip" />
      <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" />
      <asp:BoundField DataField="AllergyType" HeaderText="AllergyType" SortExpression="AllergyType" />
      <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
    </Columns>
  </asp:GridView>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FooderieDBConnectionString1 %>" DeleteCommand="DELETE FROM [RecipeIdeas] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RecipeIdeas] ([Descrip], [FoodType], [AllergyType], [Username]) VALUES (@Descrip, @FoodType, @AllergyType, @Username)" ProviderName="<%$ ConnectionStrings:FooderieDBConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Descrip], [FoodType], [AllergyType], [Username] FROM [RecipeIdeas]" UpdateCommand="UPDATE [RecipeIdeas] SET [Descrip] = @Descrip, [FoodType] = @FoodType, [AllergyType] = @AllergyType, [Username] = @Username WHERE [Id] = @Id">
    <DeleteParameters>
      <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="Descrip" Type="String" />
      <asp:Parameter Name="FoodType" Type="String" />
      <asp:Parameter Name="AllergyType" Type="String" />
      <asp:Parameter Name="Username" Type="String" />
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="Descrip" Type="String" />
      <asp:Parameter Name="FoodType" Type="String" />
      <asp:Parameter Name="AllergyType" Type="String" />
      <asp:Parameter Name="Username" Type="String" />
      <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>

</asp:Content>

