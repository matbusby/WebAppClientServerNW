<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRUDPage.aspx.cs" Inherits="WebApp.Pages.CRUDPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CRUD Page</h1>
    <asp:Label ID="MessageLabel" runat="server" ></asp:Label><br />
    <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
</asp:Content>
