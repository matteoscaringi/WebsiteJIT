<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registreren.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .height {
            height: 85vh;
        }
        .card {
            margin-top: auto;
            margin-bottom: auto;
        }
        .btn-primary {
            background-color: #012f5c;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container height d-flex flex-column align-items-center justify-content-center">
        <div class="row justify-content-center w-100">
            <div class="col-md-6"> <!-- Increase the width as needed -->
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-container">
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblNaam" runat="server" AssociatedControlID="txtNaam">Naam</asp:Label>
                                        <asp:TextBox ID="txtNaam" runat="server" CssClass="form-control" placeholder="Naam"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="valNaam" ControlToValidate="txtNaam" runat="server" ErrorMessage="Naam invullen!" Display="None"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblTelefoonNummer" runat="server" AssociatedControlID="txtTelefoonNummer">Telefoon Nummer</asp:Label>
                                        <asp:TextBox ID="txtTelefoonNummer" runat="server" CssClass="form-control" placeholder="Telefoon Nummer"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="valTelefoonNummer" ControlToValidate="txtTelefoonNummer" runat="server" ErrorMessage="Telefoon Nummer invullen!" Display="None"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail">Email</asp:Label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="valEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email invullen!" Display="None"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegValEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Geldig email adres invullen!" Display="None" ValidationExpression="^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblAdres" runat="server" AssociatedControlID="txtAdres">Adres</asp:Label>
                                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" placeholder="Adres"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="valAdres" ControlToValidate="txtEmail" runat="server" ErrorMessage="Adres invullen!" Display="None"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblWachtwoord" runat="server" AssociatedControlID="txtWachtwoord">Wachtwoord</asp:Label>
                                        <asp:TextBox ID="txtWachtwoord" runat="server" CssClass="form-control" TextMode="Password" placeholder="Wachtwoord"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="valWachtwoord" ControlToValidate="txtWachtwoord" runat="server" ErrorMessage="Wachtwoord invullen!" Display="None"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblBevestigWachtwoord" runat="server" AssociatedControlID="txtWachtwoordBevestigen">Bevestig wachtwoord</asp:Label>
                                        <asp:TextBox ID="txtWachtwoordBevestigen" runat="server" CssClass="form-control" TextMode="Password" placeholder="Bevestig wachtwoord"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="valBevestigWachtwoord" ControlToValidate="txtWachtwoordBevestigen" runat="server" ErrorMessage="Wachtwoord bevestiging invullen!" Display="None"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="compWachtwoord" runat="server" Display="None" ErrorMessage="Wachtwoorden zijn niet hetzelfde!" ControlToCompare="txtWachtwoord" ControlToValidate="txtWachtwoordBevestigen"></asp:CompareValidator>
                                    </div>
                                    <asp:Button ID="btnRegister" runat="server" Text="Registreren" CssClass="btn btn-primary w-100" OnClick="btnRegister_Click" />
                                </div>
                                <asp:ValidationSummary ID="ValSummary" runat="server" CssClass="alert alert-danger mt-3 mb-3" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
