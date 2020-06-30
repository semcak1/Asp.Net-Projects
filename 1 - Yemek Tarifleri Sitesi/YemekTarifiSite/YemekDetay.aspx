<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList2" runat="server" Width="431px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <em>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border-top-style: none; border-color: #000000; border-width: thin">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="border-color: #000000; border-style: solid none none none; border-width: medium;">&nbsp;</td>
                </tr>
               
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div> </div>
        <table class="auto-style1">
            <tr>
                    <td colspan="2" __designer:mapid="558">&nbsp;</td>
                </tr>
            <tr>
                    <td class="auto-style9" colspan="2" __designer:mapid="55a">Yorum Yaz</td>
                </tr>
            <tr>
                    <td colspan="2" __designer:mapid="55c">&nbsp;</td>
                </tr>
            <tr>
                    <td class="auto-style10" __designer:mapid="55e">Ad Soyad:</td>
                    <td __designer:mapid="55f">
                        <asp:TextBox ID="TxtAdSoyad" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style10" __designer:mapid="562">Mail Adresi:</td>
                    <td __designer:mapid="563">
                        <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style10" __designer:mapid="566">Yorum:</td>
                    <td __designer:mapid="567">
                        <asp:TextBox ID="TxtYorum" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                    <td colspan="2" __designer:mapid="56a">&nbsp;</td>
                </tr>
            <tr>
                    <td class="auto-style11" colspan="2" __designer:mapid="56c">
                        <asp:Button ID="BtnGonder" runat="server" BackColor="#CC3300" Font-Bold="True" ForeColor="#FFFFCC" Height="60px" OnClick="BtnGonder_Click" Text="GÖNDER" Width="120px" />
                    </td>
                </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    

</asp:Content>
