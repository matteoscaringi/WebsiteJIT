<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DashWerknemer.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashWerknemer" %>
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

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Inschrijvingen</h2>
                
                <asp:Button ID="btnLogin" runat="server" Text="Inloggen" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
                <asp:Button ID="Button1" runat="server" Text="Inloggen" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
                <asp:Button ID="Button2" runat="server" Text="Inloggen" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />

                <asp:GridView ID="InschrijvingGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="_id" OnSelectedIndexChanged="InschrijvingGrid_SelectedIndexChanged" AutoGenerateSelectButton="True">
                    <Columns>
                        <asp:BoundField DataField="_id" HeaderText="Inschrijvingsnummer" />
                        <asp:BoundField DataField="_datum" HeaderText="Datum" />
                        <asp:BoundField DataField="_voorbereidingid" HeaderText="Voorebereidingsnummer" />
                        <asp:BoundField DataField="_aanmeldid" HeaderText="Lidnummer" />
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2>Voorbereidingen</h2>
                <asp:GridView ID="VoorbereidingGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="_id" OnSelectedIndexChanged="VoorbereidingGrid_SelectedIndexChanged" AutoGenerateSelectButton="True">
                    <Columns>
                        <asp:BoundField DataField="_id" HeaderText="Voorbereidingsnummer" />
                        <asp:BoundField DataField="_medewerkerid" HeaderText="Weknemer" />
                        <asp:BoundField DataField="_inhoud" HeaderText="Inhoud" />
                        <asp:BoundField DataField="_duur" HeaderText="Duur" />
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2>Gebruikers</h2>
                <asp:GridView ID="GebruikerGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="_id" OnSelectedIndexChanged="GebruikerGrid_SelectedIndexChanged" AutoGenerateSelectButton="True">
                    <Columns>
                        <asp:BoundField DataField="_id" HeaderText="Lidnummer" />
                        <asp:BoundField DataField="_naam" HeaderText="Naam" />
                        <asp:BoundField DataField="_telnr" HeaderText="Tel." />
                        <asp:BoundField DataField="_adres" HeaderText="Adres" />
                        <asp:BoundField DataField="_email" HeaderText="E-Mail" />
                        <asp:BoundField DataField="_wachtwoord" HeaderText="Wachtwoord" />
                        <asp:BoundField DataField="_rol" HeaderText="Rol" />
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
