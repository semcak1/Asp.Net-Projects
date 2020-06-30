<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="YazOkuluDersler.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div>   
            <asp:Label ID="Label1" runat="server" Text="Ders Seçin"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>            
        </div>
        <br />
        <div>   
            <asp:Label ID="Label2" runat="server" Text="Öğrenci Id"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>            
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Talep Oluştur" CssClass="btn btn-warning" OnClick="Button1_Click"/>
    </form>
</asp:Content>
