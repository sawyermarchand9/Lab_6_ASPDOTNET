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

    <h4>Out of the these generas which do you like</h4>
    <div style="margin-left:30px; padding-right:10px;">
        <asp:RadioButton ID="HORROR" runat="server" /> Horror 
        <asp:RadioButton ID="ACTION" runat="server" /> Action 
        <asp:RadioButton ID="ROMANCE" runat="server" /> Romance
        <br />
    </div>
        
    <h4>&nbsp;Do you read often?</h4>
    <div style="margin-left:30px;">
        <asp:RadioButton ID="yes" runat="server" /> Yes 
        <asp:RadioButton ID="no" runat="server" /> No
        <br />
    </div>
        
    <h4>Tell us what we can do to improve our service</h4>
        <asp:TextBox ID="Improve" runat="server" Width="340px" Style="margin-left:30px;"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Submit" runat="server" Text="Submit" onclick="Submit_Click" Width="348px"/>
    
    <div id="Resmess" runat="server">
        <ul id="generaList" runat="server">
            
        </ul>
        <p id="favBook" runat="server">Your favorite book is </p>
        <p id="why" runat="server"> The reason you like the book: </p>
        <p id="readOften" runat="server"></p>
        <p id="whatToDo" runat="server"></p>
    </div>
</asp:Content>
