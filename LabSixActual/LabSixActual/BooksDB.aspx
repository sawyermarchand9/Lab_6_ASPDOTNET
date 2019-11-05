<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BooksDB.aspx.cs" Inherits="LabSixActual.BooksDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>Book Title</p><asp:TextBox ID="title" runat="server"></asp:TextBox>
    <br />
    <p>Book Auth</p><asp:TextBox ID="Author" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="AddBook" runat="server" Text="Add" OnClick="AddBook_Click"/>

    <p>Add book image</p><asp:FileUpload ID="FileUpload1" runat="server" OnLoad="FileUpload1_Load"/>

    <p>Select Book to remove</p><asp:TextBox ID="BookName" runat="server"></asp:TextBox>

    <asp:Button ID="Remove" runat="server" Text="Button" onclick="Remove_Click"/>

</asp:Content>
