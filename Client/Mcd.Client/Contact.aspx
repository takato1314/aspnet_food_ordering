<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Mcd.Client.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <div class="temporary"></div>
    </header>

    <section class="ftco-section services-section bg-light">
        <div class="container">
            <% if (Request.IsAuthenticated)
               {
            %>
                <h1>Logged in</h1>
            <% }
               else
               { %>
                <h1>Not Logged in</h1>
            <% } %>
        </div>
    </section>
</asp:Content>