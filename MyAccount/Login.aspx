<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FormMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register src="../Controls/NamePassword.ascx" tagname="NamePassword" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpmainContent" Runat="Server">
 
  
  <br />
<asp:LoginView ID="LoginView1" runat="server">
  <AnonymousTemplate>
    Login below or create an account
  </AnonymousTemplate>
  <LoggedInTemplate>
    You are already logged in.
  </LoggedInTemplate>
  <RoleGroups>
    <asp:RoleGroup Roles="Admin">
      <ContentTemplate>
        Manage Site
      </ContentTemplate>
    </asp:RoleGroup>
  </RoleGroups>
</asp:LoginView>
<br />
  
  <br />
  <span style="font-size: x-large">Login</span><br />
  
  <br />Username *<br />
  <asp:TextBox ID="name" runat="server" ></asp:TextBox> 
  <br />
  <asp:RequiredFieldValidator ID="ValidateUsername" runat="server" 
    Display="Dynamic" ControlToValidate="name" ErrorMessage="Enter your username" 
    ForeColor="Red"></asp:RequiredFieldValidator>
  <br />
  <br />

  Password*<br />
  <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox> <br />

  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    Display="Dynamic" ControlToValidate="password" ErrorMessage="Enter your password" ForeColor="Red"
    ></asp:RequiredFieldValidator>

<br />

  <asp:checkbox  ID="textList" runat="server" AutoPostBack="True" 
     Text="Remember password"></asp:checkbox>
  <br /><br />
  <asp:Button ID="Button1" runat="server" Text="Login" />
  <br />
  <br />
  Don&#39;t have an account? Sign up here!<br />
  <a href="createAccount.aspx"><span style="font-size: small">Create account</span></a>
  <br />
  <br />
<asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" />
  <br />
  <br />
</asp:Content>

