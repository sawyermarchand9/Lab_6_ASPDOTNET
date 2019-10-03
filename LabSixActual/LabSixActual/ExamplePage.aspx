<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ExamplePage.aspx.cs" Inherits="LabSixActual.ExamplePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
    <asp:FileUpload ID="FileToCopy" runat="server" />
    <asp:Button ID="Submit" runat="server" Text="Button" onclick="Submit_Click"/>
    <br />
    <asp:Label ID="display" runat="server" Text=""></asp:Label>
</asp:Content>

