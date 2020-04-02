<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRUDPage.aspx.cs" Inherits="WebApp.Pages.CRUDPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Product Maintenance Page</h1>
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:RequiredFieldValidator ID="RequiredProductName" runat="server"
                ErrorMessage="Product name is required" Display="None" SetFocusOnError="true" ForeColor="Firebrick"
                ControlToValidate="ProductName"> 
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareUnitPrice" runat="server" 
                ErrorMessage="Unit Price must be 0.00 or greater" Display="None" SetFocusOnError="true" ForeColor="Firebrick"
                 ControlToValidate="UnitPrice" Operator="GreaterThanEqual" ValueToCompare="0.00" Type="Double"> 
            </asp:CompareValidator>
            <asp:RangeValidator ID="RangeUnitsInStock" runat="server" 
                ErrorMessage="Units in stock must be between 0 and 32767" Display="None" SetFocusOnError="true" ForeColor="Firebrick"
                 ControlToValidate="UnitsInStock"  MaximumValue="32767" MinimumValue="0" Type="Integer"> 
            </asp:RangeValidator>
            <asp:RangeValidator ID="RangeUnitsOnOrder" runat="server" 
                ErrorMessage="Units on order must be between 0 and 32767" Display="None" SetFocusOnError="true" ForeColor="Firebrick"
                 ControlToValidate="UnitsOnOrder"  MaximumValue="32767" MinimumValue="0" Type="Integer"> 
            </asp:RangeValidator>
            <asp:RangeValidator ID="RangeReorderLevel" runat="server" 
                ErrorMessage="Reorder levlel must be between 0 and 32767" Display="None" SetFocusOnError="true" ForeColor="Firebrick"
                 ControlToValidate="ReorderLevel"  MaximumValue="32767" MinimumValue="0" Type="Integer"> 
            </asp:RangeValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                 HeaderText="Address the following concerns with your entered data."/>
        </div>
    </div>
    <asp:DataList ID="Message" runat="server">
        <ItemTemplate>
            <%# Container.DataItem %>
        </ItemTemplate>
    </asp:DataList>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="Label1" runat="server" Text="Product ID"
                     AssociatedControlID="ProductID">
                </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="ProductID" runat="server" >
                </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label2" runat="server" Text="Name"
                     AssociatedControlID="ProductName"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="ProductName" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="Label6" runat="server" Text="Supplier"
                     AssociatedControlID="SupplierList">
                </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:DropDownList ID="SupplierList" runat="server" Width="350px" >
                </asp:DropDownList> 
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="Label7" runat="server" Text="Category"
                     AssociatedControlID="CategoryList">
                </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:DropDownList ID="CategoryList" runat="server" Width="350px" >
                </asp:DropDownList> 
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label3" runat="server" Text="Quantity/Unit"
                     AssociatedControlID="QuantityPerUnit"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="QuantityPerUnit" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label4" runat="server" Text="Unit Price"
                     AssociatedControlID="UnitPrice">
                  </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="UnitPrice" runat="server"> 
                </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label8" runat="server" Text="Units In Stock"
                     AssociatedControlID="UnitsInStock">
                  </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="UnitsInStock" runat="server"> 
                </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label9" runat="server" Text="Units On Order"
                     AssociatedControlID="UnitsOnOrder">
                  </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="UnitsOnOrder" runat="server"> 
                </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label10" runat="server" Text="Reorder Level"
                     AssociatedControlID="ReorderLevel">
                  </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="ReorderLevel" runat="server"> 
                </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label11" runat="server" Text="Discontinued"
                     AssociatedControlID="Discontinued">
                  </asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:CheckBox ID="Discontinued" runat="server" Text="Discontinued" >
                </asp:CheckBox> 
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-6 text-left">
            <asp:Button ID="Button1" runat="server" Text="Back" CausesValidation="false" OnClick="Back_Click" />&nbsp;&nbsp;
            <asp:Button ID="ClearButton" runat="server" OnClick="Clear_Click" Text="Clear" CausesValidation="false"/>&nbsp;&nbsp;
            <asp:Button ID="AddButton" runat="server" OnClick="Add_Click" Text="Add"/>&nbsp;&nbsp;
            <asp:Button ID="UpdateButton" runat="server" OnClick="Update_Click" Text="Update"/>&nbsp;&nbsp;
            <asp:Button ID="DiscontinueButton" runat="server" OnClick="Discontinue_Click" Text="Discontinue"/>&nbsp;&nbsp;
        </div>
    </div>
</asp:Content>
