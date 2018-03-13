<%@ Page Title="createAccount" Language="C#" MasterPageFile="~/MasterPages/FormMaster.master" 
  AutoEventWireup="true" CodeFile="createAccount.aspx.cs" Inherits="createAccount" %>




<asp:Content ID="newAccount" ContentPlaceHolderID="cpmainContent" Runat="Server">
 
  <br />
 
  <br /><span style="font-size: x-large">Create Account</span><br />

   
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

  
  <asp:RequiredFieldValidator ID="ValidatePassword" runat="server" 
    Display="Dynamic" ControlToValidate="Password" ErrorMessage="Enter your password" 
    ForeColor="Red"></asp:RequiredFieldValidator>
  <br />
  <br />

  Email*<br />
  <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox><br />

  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" 
   ControlToValidate="email"  ErrorMessage="Enter email address" ForeColor="Red"></asp:RequiredFieldValidator>

  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ControlToValidate="email" ErrorMessage="Enter a valid email" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
  <br />
  <br />

  Phone Number<br />
  <asp:TextBox ID="phoneNum" runat="server"></asp:TextBox><br />
  <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="ErrorMessage" 
    ControlToValidate="phoneNum" Display="Dynamic" ErrorMessage="Enter a 10 digit number" 
    ></asp:CustomValidator>
  <br />
  <br />

  <asp:checkbox ID="emailList" runat="server" AutoPostBack="
    False" Text="I want to receive email updates "></asp:checkbox>
 <br />

   <asp:checkbox  ID="textList" runat="server" AutoPostBack="False" 
     Text="I want to receive text updates"></asp:checkbox>
  
  <br />
  <br />
  <br />

  <asp:Button class="button" ID="submit" runat="server" Text="Create Account" OnClick="submit_Click" />
  <br />
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Please correct the following errors:" />
  <br />
  <br />
  
</asp:Content>



