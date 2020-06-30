<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: right;
    }
        .auto-style9 {
            text-align: right;
        }
    .auto-style10 {
        text-align: center;
    }
        .auto-style11 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9" >Tarif Adı:</td>
        <td>
            <asp:TextBox ID="TxtTarifAdi" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Malzemeler:</td>
        <td>
            <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Yapılışı:</td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" Width="250px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Resim:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Adınız:</td>
        <td>
            <asp:TextBox ID="TxtAdınız" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TxtMailAdresi" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
            <a href="MesajIletildi.aspx">
            <asp:Button ID="BtnGonder" runat="server" BackColor="#CC3300" Font-Bold="True" ForeColor="#FFFFCC" Text="GÖNDER" Height="60px" Width="120px" OnClick="BtnGonder_Click" />
            </a>
        </td>
    </tr>
</table>
</asp:Content>
