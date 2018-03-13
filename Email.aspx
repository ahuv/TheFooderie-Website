<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FormMaster.master" 
  AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Demos_Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpmainContent" Runat="Server">

  <br />
  <span style="font-size: x-large">Contact Us</span><br />
  <br />Name*<br />
  <asp:TextBox ID="name" runat="server"></asp:TextBox> <br />

  <asp:RequiredFieldValidator ID="NameValidate" runat="server" CssClass="ErrorMessage" 
    ControlToValidate="name" ErrorMessage="Enter your name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

  <br />

  Email Address*<br />
  <asp:TextBox ID="email" TextMode="Email" runat="server"></asp:TextBox><br />

  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" 
   ControlToValidate="email"  ErrorMessage="Enter email address" ForeColor="Red"></asp:RequiredFieldValidator>

  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ControlToValidate="email" ErrorMessage="Enter a valid email" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
  <br />

  Subject<br />
  <asp:TextBox ID="subject" runat="server"></asp:TextBox><br />
  <br />

  Message*<br />
  <asp:TextBox ID="message" TextMode="MultiLine" runat="server"></asp:TextBox><br />


  <asp:RequiredFieldValidator ID="MessageValidate" runat="server" CssClass="ErrorMessage"
    ControlToValidate="message" ErrorMessage="Enter text" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

  <br />
  <br />

  

  <asp:Button ID="submit" runat="server" Text="Send" OnClick="submit_Click" />
  <br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct the following errors:" ShowMessageBox="True" ShowSummary="False" />
  <br />
</asp:Content>


