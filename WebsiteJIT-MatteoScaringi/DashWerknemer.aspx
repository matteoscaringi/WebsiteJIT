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
   <div class="container py-4">
      <div class="row mb-4">
         <div class="col-md-12">
            <h2 class="mb-3">Inschrijvingen</h2>
            <div class="card">
               <div class="card-body">
                  <asp:GridView CssClass="table" ID="InschrijvingGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="_id" OnSelectedIndexChanged="InschrijvingGrid_SelectedIndexChanged" AutoGenerateSelectButton="True">
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
             <div class="card mt-4">
                 <div class="card-body">
                     <div class="btn-group d-flex justify-content-between">
                         <asp:Button ID="btnDelete" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Voorbereiding Verwijderen" OnClick="btnDelete_Click" />
                         <asp:Button ID="btnEditInschr" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Inschrijving bewerken" OnClick="btnEditInschr_Click" />
                         <asp:Button ID="btnAddInschr" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="inschrijving Toevoegen" OnClick="btnAddInschr_Click" />
                     </div>
                     <div class="row mt-3">
                         <div class="col-md-6 mb-2">
                             <asp:Label ID="lblIDInschr" runat="server" Text="ID" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="boxIdInschr" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                         <div class="col-md-6 mb-2">
                             <asp:Label ID="lblVoorbereidNr" runat="server" Text="VoorbereidingNummer" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="boxVoorbereidNr" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                         <div class="col-md-6 mb-2">
                             <asp:Label ID="lblAanmeldID" runat="server" Text="Gebruiker" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="boxAanmeldID" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                         <div class="col-md-6 mb-2">
                             <div class="row">
                                 <div class="col-md-9 mb-2">
                                     <asp:Label ID="lblDatum" runat="server" Text="Datum" CssClass="form-label"></asp:Label>
                                     <asp:Calendar ID="calDatum" runat="server"></asp:Calendar>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>

         </div>
      </div>
      <div class="row mb-4">
         <div class="col-md-12">
            <h2 class="mb-3">Voorbereidingen</h2>
            <div class="card">
               <div class="card-body">
                  <asp:GridView CssClass="table" ID="VoorbereidingGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="_id" OnSelectedIndexChanged="VoorbereidingGrid_SelectedIndexChanged" AutoGenerateSelectButton="True">
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
            <div class="card mt-4">
                <div class="card-body">
                    <div class="btn-group d-flex justify-content-between">
                        <asp:Button ID="btnDeleteVoorber" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Voorbereiding Verwijderen" OnClick="btnDeleteVoorber_Click" />
                        <asp:Button ID="btnEditVoorber" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Voorbereiding Bewerken" />
                        <asp:Button ID="btnAddVoorber" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Voorbereiding Toevoegen" />
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6 mb-2">
                            <asp:Label ID="lblIDVoorber" runat="server" Text="ID" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="boxIDVoorber" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-2">
                            <asp:Label ID="lblMedewerkerID" runat="server" Text="Werknemer" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="boxMedewerkerID" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-2">
                            <asp:Label ID="lblInhoud" runat="server" Text="Inhoud" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="boxInhoud" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-2">
                            <asp:Label ID="lblDuur" runat="server" Text="Duur" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="boxDuur" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
         </div>
      </div>
      <div class="row mb-4">
         <div class="col-md-12">
            <h2 class="mb-3">Gebruikers</h2>
            <div class="card">
               <div class="card-body">
                  <asp:GridView CssClass="table" ID="GebruikerGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="_id" OnSelectedIndexChanged="GebruikerGrid_SelectedIndexChanged" AutoGenerateSelectButton="True">
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
            <div class="card mt-4">
               <div class="card-body">
                  <div class="btn-group d-flex justify-content-between">
                     <asp:Button ID="btnDeleteGebruiker" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Gebruiker verwijderen" OnClick="btnDeleteGebruiker_Click" />
                     <asp:Button ID="btnEditGebruiker" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Gebruiker Bewerken" />
                     <asp:Button ID="btnAddGebruiker" CssClass="btn btn-primary w-100 mb-2" runat="server" Text="Gebruiker toevoegen" />
                  </div>
                  <div class="row mt-3">
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblId" runat="server" Text="ID" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxId" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblNaam" runat="server" Text="Naam" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxNaam" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblTelNr" runat="server" Text="Tel. nr" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxTelNr" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblAdres" runat="server" Text="Adres" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxAdres" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxEmail" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblWachtwoord" runat="server" Text="Wachtwoord" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxWachtwoord" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-6 mb-2">
                          <asp:Label ID="lblRol" runat="server" Text="Rol" CssClass="form-label"></asp:Label>
                          <asp:TextBox ID="boxRol" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>



