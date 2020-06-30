<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="TariflerAdmin.aspx.cs" Inherits="YemekTarifiSite.TariflerAdmin" %>
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px"  style="font-weight: bold" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style15" style="border: thin solid #FFFFCC"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px"  style="font-weight: bold" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style7" style="border: thin solid #FFFFCC">ONAYLI TARİF LİSTESİ</td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("TarifAd") %>' style="color: #000000"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            &nbsp;</td>
                        <td class="auto-style8">
                            <a href ="TarifOnerDetayAdmin.aspx?Tarifid=<%#Eval("TarifId") %>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/İcon/proposal-icon-14.png" Width="20px" /></a>
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
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="30px" OnClick="Button3_Click" style="font-weight: bold" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style15" style="border: thin solid #FFFFCC"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" OnClick="Button4_Click" style="font-weight: bold" Text="-" Width="30px" />
                        </strong></td>
                    <td class="auto-style7" style="border: thin solid #FFFFCC">ONAYSIZ TARİF LİSTESİ</td>
                </tr>
            </table>
  </asp:Panel>
  <asp:Panel ID="Panel4" runat="server">
                <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" Width="450px">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <ItemStyle BackColor="White" ForeColor="#330099" />
                    <ItemTemplate>
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style11">
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style9" style="color: #000000" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style8"><a href='TarifOnerDetayAdmin.aspx?Tarifid=<%#Eval("TarifId") %>'>
                                    <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/İcon/proposal-icon-14.png" Width="20px" />
                                    </a></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                </asp:DataList>
 </asp:Panel>
        

</asp:Content>
