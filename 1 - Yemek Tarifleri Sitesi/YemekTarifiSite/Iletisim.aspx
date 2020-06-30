<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style10" colspan="2">İLETİŞİM</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">Ad Soyad :</td>
        <td>
            <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mail Adresiniz :</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Konu : </td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mesaj :</td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <a href="MesajIletildi.aspx">
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" ForeColor="#FFFFCC" Height="60px" Text="GÖNDER" Width="120px" OnClick="Button1_Click" />
              </a>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
