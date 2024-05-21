<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DashWerknemer.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.DashWerknemer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center;">
        <asp:Button ID="boekingenBtn" runat="server" Text="Alle boekingen bekijken" /><br />
        <asp:Button ID="voorbereidingBtn" runat="server" Text="Alle voorbereidingen bekijken" /><br />
        <asp:Button ID="gebruikersBtn" runat="server" Text="Alle gebruikers bekijken" /><br />
        <asp:Button ID="werknemersBtn" runat="server" Text="Alle werknemers bekijken" /><br />
        <asp:Button ID="gegevensBtn" runat="server" Text="Gegevens Bekijken" /><br />
    </div>
</asp:Content>
