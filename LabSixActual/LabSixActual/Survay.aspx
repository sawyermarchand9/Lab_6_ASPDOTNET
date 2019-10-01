<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Survay.aspx.cs" Inherits="LabSixActual.Survay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Tell us what your favorite book is</h4>
        <asp:TextBox ID="favoriteBook" runat="server" Width="341px" Style="margin-left:30px;"></asp:TextBox>

    <br />

    <h4>Why is this your favorite book?</h4>
        <asp:TextBox ID="favoriteWhy" runat="server" Width="340px" Style="margin-left:30px;"></asp:TextBox>
    <br />

    <h4>Out of the these generas which do you like most</h4>
    <div style="margin-left:30px; padding-right:10px;">
        <asp:RadioButton ID="RadioButton1" runat="server" /> Horror 
        <asp:RadioButton ID="RadioButton2" runat="server" /> Action 
        <asp:RadioButton ID="RadioButton3" runat="server" /> Romance
        <br />
    </div>
        
    <h4>&nbsp;Do you read often?</h4>
    <div style="margin-left:30px;">
        <asp:RadioButton ID="RadioButton4" runat="server" /> Yes 
        <asp:RadioButton ID="RadioButton5" runat="server" /> No
        <br />
    </div>
        
    <h4>Tell us what we can do to improve our service</h4>
    <input ID="Improve" Style="margin-left:30px; width: 343px; height: 96px;"/>

</asp:Content>
