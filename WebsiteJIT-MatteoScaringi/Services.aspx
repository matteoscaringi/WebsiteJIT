<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 mb-5">
        <h2>Contacteer Ons</h2>
        <form>
            <div class="form-group mb-4">
                <label for="name">Naam</label>
                <input type="text" class="form-control" id="name" placeholder="Naam invoeren">
            </div>
            <div class="form-group mb-4">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Email invoeren">
            </div>
            <div class="form-group mb-4">
                <label for="subject">Onderwerp</label>
                <input type="text" class="form-control" id="subject" placeholder="Onderwerp invoeren">
            </div>
            <div class="form-group mb-4">
                <label for="message">Bericht</label>
                <textarea class="form-control" id="message" rows="5" placeholder="Bericht invoeren"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Verstuur</button>
        </form>
    </div>
</asp:Content>



