<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="YemekTarifiSite.AdminMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style16" style="border: thin solid #FFFFCC"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" style="font-weight: bold" />
                </strong></td>
            <td class="auto-style15" style="border: thin solid #FFFFCC"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" style="font-weight: bold" />
                </strong></td>
            <td class="auto-style7" style="border: thin solid #FFFFCC"><strong>MESAJ LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("MesajGonderen") %>' style="color: #000000"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            &nbsp;</td>
                        <td class="auto-style8">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/İcon/book-reading-1453161-1230680.png" Width="20px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:DataList>
</asp:Panel>
</asp:Content>
