<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Survey_two_response.aspx.cs" Inherits="LabSixActual.Survey_two_response" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<p id="firstName" runat="server"></p>
    <p id="lastName" runat="server"></p>
    <p id="address" runat="server"></p>
    <p id="zip" runat="server"></p>
    <p id="age" runat="server"></p>
    <p id="phone" runat="server"></p>
    <p id="surveyID"></p>--%>

    <%-- Survey ID --%>
    <asp:Label ID="SurveyID" runat="server" Text="Label"></asp:Label>

    <br />

    <%-- Favorite Book --%>
    <asp:Label ID="FavoriteBook" runat="server" Text=""></asp:Label>

    <br />

    <%-- Why this is favorite book --%>
    <asp:Label ID="Why" runat="server" Text=""></asp:Label>

    <%-- Genera list --%>
    <ul id="GeneraList" runat="server">

    </ul>

    <%-- Most liked --%>
    <asp:Label ID="MostLiked" runat="server" Text=""></asp:Label>

    <br />

    <%-- Survey is liked or not --%>
    <asp:Label ID="SurveySais" runat="server" Text=""></asp:Label>

    <br />

    <%-- Survey improvments --%>
    <asp:Label ID="Improve" runat="server" Text=""></asp:Label>
    
</asp:Content>
