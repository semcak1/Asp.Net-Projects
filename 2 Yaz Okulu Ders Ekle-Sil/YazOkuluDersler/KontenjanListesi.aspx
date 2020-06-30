<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KontenjanListesi.aspx.cs" Inherits="YazOkuluDersler.KontenjanListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            
            <th>Ders Ad</th>
            <%--<th>Kayıtlı Öğreci Sayısı</th>--%>
            <th>Max Kontenjan</th>
            <th>Min Kontenjan</th>
            

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                         
                         <td><%#Eval("DersAd") %></td>
                         <%--<td><%#Eval("Soyad") %></td>--%>
                         <td><%#Eval("Max") %></td>
                         <td><%#Eval("Min") %></td>
                        
                        <%--<td> 
                            <asp:HyperLink NavigateUrl='<%#"~/OgrenciSil.aspx?OgrenciId="+Eval("id")%>' ID="HyperLink1"  CssClass="btn btn-danger" runat="server" ForeColor="#FFFFCC">Sİl</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OgrenciId="+Eval("id")%>'  ID="HyperLink2" CssClass="btn btn-success" runat="server" ForeColor="#FFFFCC">Güncelle</asp:HyperLink>
                        </td>--%>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
