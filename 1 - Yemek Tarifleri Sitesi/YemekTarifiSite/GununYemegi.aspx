<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 926px;
        }
        .auto-style6 {
            width: 58%;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="width: 450px">
        <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <table class="auto-style1" style="width: 100%; height: 300px">
                    <tr>
                        <td class="auto-style5">
                            <table class="auto-style1" style="width: 100%; margin-right: 40px">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; background-color: #CC3300">
                                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; color: #FFFFCC;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 40px"><strong>Malzemeler :</strong>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 40px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 40px; text-align: center;">
                                        <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl='<%# Eval("YemekResim") %>' style="text-align: center" Width="353px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px"><strong>Tarif :</strong>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px">
                                        <table class="auto-style1">
                                            <tr>
                                                <td style="text-align: left"><strong>Puan : </strong>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                                </td>
                                                <td class="auto-style7"><strong>Tarih :</strong>&nbsp;<asp:Label ID="Label7" runat="server" style="font-style: italic" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="margin-left: 80px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
    </p>
</asp:Content>
