<%@ Page Title="Input Validation" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="lesson5._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ASP.net Input Validation</h1>
    <h6>All fields are required</h6>
    <div class="form-group">
        <label for="txtName" class="col-sm-4">Name: </label>
        <asp:TextBox ID="txtName" runat="server" />
        <!-- after setting on web config required validator doesnt need id -->
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txtPassword" class="col-sm-4">Password: </label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server" ErrorMessage="Password does not match"
            CssClass="label label-danger" ControlToValidate="txtPassword" 
            ControlToCompare="txtConfirm" Type="String" Operator="Equal" Display="Dynamic" ></asp:CompareValidator>
    </div>
    <div class="form-group">
        <label for="txtConfirm" class="col-sm-4">Confirm Password: </label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server" ErrorMessage="Password does not match"
            CssClass="label label-danger" ControlToValidate="txtConfirm" 
            ControlToCompare="txtPassword" Type="String" Operator="Equal" Display="Dynamic" ></asp:CompareValidator>
    </div>
    <div class="form-group">
        <label for="txtAge" class="col-sm-4">Age: </label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" ErrorMessage="Enter number between 1 and 120"
            ControlToValidate="txtAge" CssClass="label label-danger" 
            MinimumValue="1" MaximumValue="120" Type="Integer" Display="Dynamic" ></asp:RangeValidator>
    </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary"
            OnClick="btnSubmit_Click" />
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
