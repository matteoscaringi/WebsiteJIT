<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DashWerknemer.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashWerknemer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center d-flex justify-content-center align-items-center" style="height: 75vh;">
        <form runat="server">
            <div class="btn-group">
                <asp:Button ID="boekingenBtn" runat="server" Text="Alle boekingen bekijken" class="btn btn-primary" /><br />
                <asp:Button ID="voorbereidingBtn" runat="server" Text="Alle voorbereidingen bekijken" class="btn btn-primary" /><br />
                <asp:Button ID="gebruikersBtn" runat="server" Text="Alle gebruikers bekijken" class="btn btn-primary" /><br />
                <asp:Button ID="werknemersBtn" runat="server" Text="Alle werknemers bekijken" class="btn btn-primary" /><br />
                <asp:Button ID="gegevensBtn" runat="server" Text="Gegevens Bekijken" class="btn btn-primary" /><br />
            </div>
        </form>
    </div>
</asp:Content>
