<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OgrenciListesi.aspx.cs" Inherits="YazOkuluDersler.OgrenciListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th>Öğrenci Id</th>
            <th>Öğrenci Ad</th>
            <th>Öğrenci Soyad</th>
            <th>Öğrenci Numara</th>
            <th>Öğrenci Şifre</th>
            <th>Öğrenci Fotograf</th>
            <th>Öğrenci Bakiye</th>
            <th>Öğrenci İşlemler</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                         <td><%#Eval("Ad") %></td>
                         <td><%#Eval("Soyad") %></td>
                         <td><%#Eval("Numara") %></td>
                         <td><%#Eval("Sifre") %></td>
                         <td><%#Eval("Fotograf") %></td>
                         <td><%#Eval("Bakiye") %></td>
                        <td> 
                            <asp:HyperLink NavigateUrl='<%#"~/OgrenciSil.aspx?OgrenciId="+Eval("id")%>' ID="HyperLink1"  CssClass="btn btn-danger" runat="server" ForeColor="#FFFFCC">Sİl</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OgrenciId="+Eval("id")%>'  ID="HyperLink2" CssClass="btn btn-success" runat="server" ForeColor="#FFFFCC">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
