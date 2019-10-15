<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Servay_two.aspx.cs" Inherits="LabSixActual.Servay_two" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p  >First Name </p>     <input type="text" id="FirstName"  runat="server"/>
    <p  >Last Name </p>      <input type="text" id="LastName"   runat="server"/>
    <p  >Adress</p>          <input type="text" id="Adress"     runat="server"/>
    <p  >Zip Code</p>        <input type="text" id="ZipCode"    runat="server"/>
    <p  >Age</p>             <input type="text" id="Age"        runat="server"/>
    <p  >Phone Number</p>    <input type="text" id="PhoneNumber"runat="server"/>
    <p  >Survey ID</p>       <input type="text" id="SurveyID"   runat="server"/>
    <asp:Button ID="Submit" runat="server" Text="Submit" onclick="Submit_Click"/>
</asp:Content>
