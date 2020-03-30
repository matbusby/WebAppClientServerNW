<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="10MultiRecDropToDropToSingleRec.aspx.cs" Inherits="WebApp.Pages._10MultiRecordDropToDropToSingleRec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Multi Record Query Dropdown to Single Record</h1>
    <div class="offset-2">
        <asp:Label ID="Label1" runat="server" Text="Select an Item: "></asp:Label>&nbsp;&nbsp;   
        <asp:DropDownList ID="List01" runat="server"></asp:DropDownList>&nbsp;&nbsp;
        <asp:Button ID="Fetch" runat="server" Text="Fetch" 
             CausesValidation="false" OnClick="Fetch_Click"/>
        <br /><br />
        <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
        <br />
        <%--<asp:GridView ID="List02" runat="server"></asp:GridView>--%>
    </div>
</asp:Content>
