<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Inloggen.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.WebForm1" %>
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
                                        <label for="username">Gebruikersnaam</label>
                                        <input type="text" class="form-control" id="username" placeholder="Gebruikersnaam">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="password">Wachtwoord</label>
                                        <input type="password" class="form-control" id="password" placeholder="Wachtwoord">
                                    </div>
                                    <button type="submit" style="background-color: #012f5c;" class="btn btn-primary w-100">Inloggen</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
