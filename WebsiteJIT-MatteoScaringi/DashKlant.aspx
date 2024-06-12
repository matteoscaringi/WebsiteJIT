<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" Async="true" CodeBehind="DashKlant.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashKlant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
   </div>
</asp:Content>
