<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DashKlant.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashKlant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Dashboard Klant</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2>Welkom, <%= Session["KlantNaam"] %></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3>Uw gegevens</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>Naam: <%= Session["KlantNaam"] %></p>
                <p>Adres: <%= Session["KlantAdres"] %></p>
                <p>Postcode: <%= Session["KlantPostcode"] %></p>
                <p>Woonplaats: <%= Session["KlantWoonplaats"] %></p>
                <p>Telefoonnummer: <%= Session["KlantTelefoon"] %></p>
                <p>Email: <%= Session["KlantEmail"] %></p>
            </div>
        </div>
    </div>--%>

    <div style="text-align: center;">
        <asp:Button ID="boekinMakenBtn" runat="server" Text="Boeking Maken" /><br />
        <asp:Button ID="boekingVerwijderenBtn" runat="server" Text="Boeking verwijderen" /><br />
        <asp:Button ID="boekingenBekijkenBtn" runat="server" Text="Boekingen Bekijken" /><br />
        <asp:Button ID="gegevensBtn" runat="server" Text="Gegevens Bekijken" /><br />
    </div>
</asp:Content>
