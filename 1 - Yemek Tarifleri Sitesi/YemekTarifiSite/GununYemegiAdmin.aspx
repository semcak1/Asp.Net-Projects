<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GununYemegiAdmin" %>
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
                <td class="auto-style18" style="border: thin solid #FFFFCC">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="450px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" >
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <ItemStyle BackColor="White" ForeColor="#330099" />
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("YemekId") %>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/İcon/choice-icon-png.png" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:DataList>
</asp:Panel>
    &nbsp;&nbsp;&nbsp; 
</asp:Content>
