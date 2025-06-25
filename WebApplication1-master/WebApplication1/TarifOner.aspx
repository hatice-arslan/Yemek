<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="WebApplication1.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 288px">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Tarif Ad :</strong></td>
            <td style="width: 288px">
                <asp:TextBox ID="txtTarifAd" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Malzemeler:</strong></td>
            <td style="width: 288px">
                <asp:TextBox ID="txtTarifMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 29px"><strong>Yapılış:</strong></td>
            <td style="width: 288px; height: 29px">
                <asp:TextBox ID="txtTarifYapilis" runat="server" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Resim:</strong></td>
            <td style="width: 288px">
                <asp:FileUpload ID="flupTarifResim" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Tarif Öneren:</strong></td>
            <td style="width: 288px">
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; text-align: right"><strong>Mail Adresi:</strong></td>
            <td style="width: 288px; height: 26px">
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">&nbsp;</td>
            <td style="width: 288px; height: 26px">
                <asp:Button ID="btnTarifOner" runat="server" BackColor="#00CCFF" Height="40px" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
