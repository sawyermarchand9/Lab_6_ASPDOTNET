<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Survay.aspx.cs" Inherits="LabSixActual.Survay" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="modal.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Tell us what your favorite book is</h4>
        <asp:TextBox ID="favoriteBook" runat="server" Width="341px" Style="margin-left:30px;"></asp:TextBox>

    <br />

    <h4>Why is this your favorite book?</h4>
        <asp:TextBox ID="favoriteWhy" runat="server" Width="340px" Style="margin-left:30px;"></asp:TextBox>
    <br />

    <h4>Out of the these generas which do you like</h4>
    <asp:CheckBoxList ID="generas" runat="server">
        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
        <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
        <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
    </asp:CheckBoxList>

    <%-- Add toggle radio buttons --%>
    <h4>Which of these do you like the most</h4>
    <asp:RadioButtonList ID="mostLiked" runat="server">
        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
        <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
        <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
    </asp:RadioButtonList>

    <h4>&nbsp;Do you read often?</h4>
    <%--<div style="margin-left:30px;">
        <input type="radio" name="radsec2" id="yes" data-waschecked="true" runat="server"/> Yes
        <input type="radio" name="radsec2" id="no" data-waschecked="true" runat="server"/> No
        <br />
    </div>--%>
    <asp:RadioButtonList ID="likeReading" runat="server">
        <asp:ListItem Text="yes" Value="yes"></asp:ListItem>
        <asp:ListItem Text="no" Value="no"></asp:ListItem>
    </asp:RadioButtonList>

    <h4>How would you rate this survay?</h4>
    <select style="margin-left:30px; padding-right:10px;" id="how_you_like" runat="server">
        <option id="Good" value="Good">Good</option>
        <option id="Okay" value="Okay">Okay</option>
        <option id="Bad"  value="Bad">Bad</option>
    </select>     
    <h4>Tell us what we can do to improve our service</h4>
        <asp:TextBox ID="Improve" runat="server" Width="340px" Style="margin-left:30px;"></asp:TextBox>

    <br />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Submit" runat="server" Text="Submit" onclick="Submit_Click" Width="348px"/>
    <br />
    <div id="Resmess" class="modal-content" runat="server">
        <p>You like the following</p>
        <ul id="generaList" runat="server">
            
        </ul>
        <p id="favGen" runat="server">You Like</p>
        <p id="favBook" runat="server">Your favorite book is </p>
        <p id="why" runat="server"> The reason you like the book: </p>
        <p id="readOften" runat="server"></p>
        <p id="whatToDo" runat="server"></p>
        <p id="like" runat="server">How did you like the survay</p>
        
    </div>
   
    
   
    
</asp:Content>
