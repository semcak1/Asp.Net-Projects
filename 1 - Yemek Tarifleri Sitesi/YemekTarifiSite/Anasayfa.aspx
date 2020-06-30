<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifiSite.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            margin-right: 0px;
        }

        .auto-style12 {
            text-align: center;
        }

        .auto-style13 {
            color: #CC3300;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style11" Width="443px">
        <ItemTemplate>
            <table class="auto-style1">


                <tr>
                    <td style="border-style: none; border-color: #FFFFFF">&nbsp;</td>
                </tr>
                <tr>
                    <td style="border-style: none; border-color: #FFFFFF"><strong>
                        <a href="YemekDetay.aspx?YemekId=<%#Eval("YemekId") %>">
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
                    </a>

                    
                </tr>
                <tr>
                    <td style="border-top-style: solid; border-width: thick; border-color: #CC3300">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="300px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Malzeme :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <strong>Puan :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="border-style: none; border-width: medium; border-color: #000000">
                        <strong>Tarih :</strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #000000; border-bottom-style: solid; border-width: medium">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
