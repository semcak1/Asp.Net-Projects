<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle.aspx.cs" Inherits="YazOkuluDersler.OgrenciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server" >
        <div class="form-group">

              <div>
                  <strong>
            &nbsp;
            <asp:Label ID="Label6" runat="server" Text="Öğrenci Id"></asp:Label>
                  </strong>
            <asp:TextBox ID="TxtId" margin-left="10px" Width="350px" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
            <br />
              <div>
                  <strong>
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Öğrenci Adı"></asp:Label>
                  </strong>
            <asp:TextBox ID="TxtAd" margin-left="10px" Width="350px" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
            <br />

              <div >
                  <strong>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Öğrenci Soyadı"></asp:Label>
                  </strong>
            <asp:TextBox ID="TxtSoyad" width="350px"  runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

              <div>
                  <strong>
            &nbsp;
            <asp:Label ID="Label3" runat="server" Text="Öğrenci Numarası "></asp:Label>
                  </strong>
            <asp:TextBox ID="TxtNumara" Width="350px" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />

            <div>
                <strong>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="Öğrenci Şifre "></asp:Label>
                &nbsp;</strong><asp:TextBox ID="TxtSifre" Width="350px" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <strong>
            &nbsp;
            <asp:Label ID="Label5" runat="server" Text="Öğrenci Fotoğraf"></asp:Label>
                </strong>
            <asp:TextBox ID="TxtFoto" Width="350px" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Güncelle"  CssClass="btn btn-success" OnClick="Button1_Click" />

    </form>
</asp:Content>
