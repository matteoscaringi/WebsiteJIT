<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DashKlant.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashKlant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="Datum" HeaderText="Datum" />
                    <asp:BoundField DataField="Voorbereidingid" HeaderText="Voorbereidingnummer" />
                    <asp:BoundField DataField="AanmeldID" HeaderText="Gebruikersnummer" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-6">
            <div class="mb-3">
                <asp:Button ID="btnToevoegen" runat="server" CssClass="btn btn-primary" Text="Inschrijving toevoegen" />
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAlter" runat="server" CssClass="btn btn-primary" Text="Inschrijving Bewerken" />
            </div>
            <div class="mb-3">
                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary" Text="Inschrijving verwijderen" />
            </div>
        </div>
    </div>
</asp:Content>
