<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="LabSixActual.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12" style="text-align:center;">
        <h1>Calculator Fun</h1>
        <asp:TextBox ID="A" runat="server" placeholder="Value for A"></asp:TextBox>
        <asp:TextBox ID="B" runat="server" placeholder="Value for B"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ADD" runat="server" Text="Add" OnClick="Add_Click" />
        <asp:Button ID="Subtract" runat="server" Text="Subtract" OnClick="Subtract_Click"/>
        <asp:Button ID="Multiply" runat="server" Text="Multiply" OnClick="Multiply_Click"/>
        <asp:Button ID="Divide" runat="server" Text="Divide" OnClick="Divide_Click"/>
        <asp:Button ID="Modulo" runat="server" Text="Remainder" OnClick="Modulo_Click"/>
        <br />
        <asp:Button ID="AEven" runat="server" Text="Is A Even?" OnClick="Even_Click"/>
        <asp:Button ID="BEven" runat="server" Text="Is B Even?" OnClick="BEven_Click"/>
        <h3 id="result" runat="server"></h3>
    </div>
</asp:Content>
