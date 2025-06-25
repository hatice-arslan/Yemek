<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="WebApplication1.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <table class="auto-style5">
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">Yemek Ad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">Yemek Malzeme:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="219px" TextMode="MultiLine" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">Yemek Tarif:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="208px" TextMode="MultiLine" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="105px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnGüncelle" runat="server" Height="42px" OnClick="btnGüncelle_Click" style="font-weight: bold" Text="Güncelle" Width="106px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
