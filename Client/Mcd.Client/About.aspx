<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Mcd.Client.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="ftco-section services-section bg-light">
        <div class="container">
            <h1>Secure Page, logged in as <%= User.Identity.Name %></h1>
            <ul>
                <% foreach (var claim in ((System.Security.Claims.ClaimsPrincipal) User).Claims)
                   { %>
                    <li><%: claim.Type + ", " + claim.Value %></li>
                <% } %>
            </ul>
        </div>
    </section>
</asp:Content>