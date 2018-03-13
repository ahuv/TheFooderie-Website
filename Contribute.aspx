<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Contribute.aspx.cs" Inherits="Contribute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpmainContent" Runat="Server">

  <p>
    &nbsp;</p>
  <p>
    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Join The Fooderie Team!"></asp:Label>
  </p>
  <p>
    <asp:Label ID="Label5" runat="server" Text="Help us grow our collection of healthy delicious recipes by suggesting what you would like to see, create, or taste!"></asp:Label>
  </p>
  <p>
    <asp:Label ID="ResponseLabel" runat="server" Text=""></asp:Label>
  </p>
  <p>
    <asp:HyperLink ID="HyperLink2" runat="server" Visible="False" NavigateUrl="~/Default.aspx">Return to home page</asp:HyperLink>
  </p>
  <p>
    <asp:Label ID="Label1" runat="server" Text="Enter your name:"></asp:Label>
  </p>
  <p>
    <asp:TextBox ID="Name" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="NameValidate" runat="server" CssClass="ErrorMessage" 
    ControlToValidate="Name" ErrorMessage="Enter your name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

  </p>
  <p>
    &nbsp;</p>
  <p>
    <asp:Label ID="Label2" runat="server" Text="Enter a general recipe description:"></asp:Label>
  </p>
  <p>
    <asp:TextBox ID="RecipeDesc" textmode="MultiLine" runat="server" Height="54px" Width="382px"></asp:TextBox><br />
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="ErrorMessage" 
    ControlToValidate="RecipeDesc" ErrorMessage="Enter a description" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

  </p>
  <p>
    &nbsp;</p>
  <p>
    <asp:Label ID="Label3" runat="server" Text="Select a food category:"></asp:Label>
  &nbsp;&nbsp;
    <asp:DropDownList ID="FoodTypeList" runat="server" DataSourceID="SqlDataSource1" DataTextField="foodtypeDescrip" DataValueField="foodtypeDescrip">
      <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FooderieDBConnectionString1 %>" SelectCommand="SELECT [foodtypeDescrip] FROM [FOOD_TYPE]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
      ControlToValidate="FoodTypeList" runat="server" ErrorMessage="Select a food type"></asp:RequiredFieldValidator>
  </p>
  <p>
    <asp:Label ID="Label4" runat="server" Text="Select an allergy type:"></asp:Label>
  &nbsp;&nbsp;
    <asp:DropDownList ID="AllergyList" runat="server" DataSourceID="SqlDataSource2" DataTextField="allergyDescrip" DataValueField="allergyDescrip">
      <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FooderieDBConnectionString1 %>" SelectCommand="SELECT [allergyDescrip] FROM [ALLERGY]"></asp:SqlDataSource>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
      ControlToValidate="AllergyList" runat="server" ErrorMessage="Select a food type"></asp:RequiredFieldValidator>
  </p>
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct the following errors:" ShowMessageBox="True" ShowSummary="False" />
  <p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
  </p>
  <p>
    &nbsp;</p>
    
</asp:Content>

