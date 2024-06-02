<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DashWerknemer.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashWerknemer" %>
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
            <div class="col-md-4"> <!-- Decrease the width as needed -->
                <div class="card">
                    <div class="card-body">
                        <div class="form-container">
                            <asp:Button ID="btnInschrijving" runat="server" Text="Inschrijvingen beheren" CssClass="btn btn-primary w-100 mb-2" />
                            <asp:Button ID="btnGebruikers" runat="server" Text="Gebruikers beheren" CssClass="btn btn-primary w-100 mb-2" />
                            <asp:Button ID="btnVoorbereidingen" runat="server" Text="Voorbereidingen beheren" CssClass="btn btn-primary w-100 mb-2"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
