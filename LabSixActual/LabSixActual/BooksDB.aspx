<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BooksDB.aspx.cs" Inherits="LabSixActual.BooksDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>Book Title</p><asp:TextBox ID="title" runat="server"></asp:TextBox>
    <br />
    <p>Book Auth</p><asp:TextBox ID="Author" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="AddBook" runat="server" Text="Add" OnClick="AddBook_Click"/>

</asp:Content>
