<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="WebApplication1.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">KATEGORİ ADET:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">RESİM:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="213px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnGüncelle" runat="server" OnClick="btnGüncelle_Click" style="font-weight: bold" Text="Güncelle" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
