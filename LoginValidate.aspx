<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FormMaster.master" AutoEventWireup="true" CodeFile="LoginValidate.aspx.cs" Inherits="LoginValidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpmainContent" Runat="Server">
  <p>
    <br />
  </p>
  <p>
    You have been successfully logged in.</p>
  <p>
    <a href="myAccount.aspx">Continue to my account</a></p>
  <p style="text-decoration: underline">
    <a href="Default.aspx">Return to Home page</a>
  </p>
  <p style="text-decoration: underline">
    <asp:LoginView ID="LoginView1" runat="server">
      <RoleGroups>
        <asp:RoleGroup Roles="Admin">
          <ContentTemplate>
            <a href="Admin/AdminDefault.aspx">Manage Site</a>
          </ContentTemplate>
        </asp:RoleGroup>
      </RoleGroups>
    </asp:LoginView>
  </p>
  <p style="text-decoration: underline">
  </p>
  </asp:Content>

