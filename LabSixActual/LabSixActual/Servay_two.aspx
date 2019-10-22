<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Servay_two.aspx.cs" Inherits="LabSixActual.Servay_two" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .txtBox {
            margin-bottom:3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- Lab 9 --%>

   <%--
       1. Please use 15_Example.aspx, and 15_2_Example.aspx as references for this lab.  
       2. Continue work on lab8. Please add a new button for SurveyForm.aspx. When click this button, it will redirect to a new page called surveySummary.aspx.  
       3. surveySummary.aspx page should contain all input information from SurveyForm.aspx. 
   --%>
    
        <div class="col-sm-2">
            <p>First Name</p>
            <p>Last Name</p>
            <p>Address</p>
            <p>Zip code</p>
            <p>Age</p>
            <p>Phone Number</p>
            <p>Survey ID</p>
        </div>
        
        <div class="col-sm-10">
            <asp:TextBox ID="FirstName" class="txtBox" runat="server"></asp:TextBox>
            <br />                     
            <asp:TextBox ID="LastName" class="txtBox" runat="server"></asp:TextBox>
            <br />                     
            <asp:TextBox ID="Address" class="txtBox" runat="server"></asp:TextBox>
            <br />                     
            <asp:TextBox ID="Zip" class="txtBox" runat="server"></asp:TextBox>
            <br />                     
            <asp:TextBox ID="Age" class="txtBox" runat="server"></asp:TextBox>
            <br />                     
            <asp:TextBox ID="Phone" class="txtBox" runat="server"></asp:TextBox>
            <br />                     
            <asp:TextBox ID="SurveyID" class="txtBox" runat="server"></asp:TextBox>
        </div>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" Text="Submit" style="float:left;" OnClick="Submit_Click"/>
   
</asp:Content>
