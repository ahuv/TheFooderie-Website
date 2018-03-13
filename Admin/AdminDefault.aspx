<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" 
  AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="Admin_AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <p>
    This page is accessible to administrators only.</p>
<p style="text-decoration: underline">
  <a href="AdminTables.aspx">View user information</a>
</p>
</asp:Content>

