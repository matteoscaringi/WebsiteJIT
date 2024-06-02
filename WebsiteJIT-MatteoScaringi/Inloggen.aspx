<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Inloggen.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Ensure the container takes the full height of the viewport */
        .height {
            height: 85vh;
        }
        /* Optional: Adjust card height and vertical alignment if needed */
        .card {
            margin-top: auto;
            margin-bottom: auto;
        }
        /* Set the button color */
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
                            <div class="col-md-4 d-flex align-items-center">
                                <img src="./img/JIT-Logo.png" alt="JIT Logo" class="img-fluid">
                            </div>
                            <div class="col-md-8">
                                <div class="form-container">
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txtUsername">Gebruikersnaam</asp:Label>
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Gebruikersnaam"></asp:TextBox>
                                    </div>
                                    <div class="form-group mb-3">
                                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword">Wachtwoord</asp:Label>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Wachtwoord"></asp:TextBox>
                                    </div>
                                    <asp:Button ID="btnLogin" runat="server" Text="Inloggen" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
