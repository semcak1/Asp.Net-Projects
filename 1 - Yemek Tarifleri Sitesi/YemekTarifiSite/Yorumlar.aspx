<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style16 {
            width: 45px;
            height: 39px;
        }
        .auto-style17 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style15 {
            width: 86px;
            height: 39px;
        }
        .auto-style13 {
            font-size: x-large;
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style18 {
            color: #FFFFCC;
            height: 39px;
        }
        .auto-style11 {
            width: 312px;
        }
        .auto-style9 {
            color: #000000;
        }
        .auto-style12 {
            text-align: right;
            width: 28px;
        }
        .auto-style10 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style16" style="border: thin solid #FFFFCC"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style15" style="border: thin solid #FFFFCC"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
            <td class="auto-style18" style="border: thin solid #FFFFCC">ONAYLI YORUM LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <ItemStyle BackColor="White" ForeColor="#330099" />
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="Yorumlar.aspx?Yorumid=<%#Eval("YorumId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/İcon/icon-delete-16.jpg" Width="20px" /></a>
                        </td>
                        <td class="auto-style10">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("YorumId") %>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/İcon/dlf.pt-refresh-button-png-1441126.png" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style16" style="border: thin solid #FFFFCC"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
            <td class="auto-style15" style="border: thin solid #FFFFCC"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
            <td class="auto-style18" style="border: thin solid #FFFFCC">ONAYSIZ YORUM LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="450px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <ItemStyle BackColor="White" ForeColor="#330099" />
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="Yorumlar.aspx?Yorumid=<%#Eval("YorumId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/İcon/icon-delete-16.jpg" Width="20px" /></a>
                        </td>
                        <td class="auto-style10">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("YorumId") %>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/İcon/dlf.pt-refresh-button-png-1441126.png" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:DataList>
</asp:Panel>
    </asp:Content>
