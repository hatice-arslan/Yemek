<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="WebApplication1.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="MenuKullanımı.css" rel="stylesheet" />  <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%">
            <tr>
                <td style="width: 138px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
     <td style="width: 138px; text-align: right;">Mesaj Başlık:</td>
     <td>
         <asp:TextBox ID="TextBox4" runat="server" Width="219px"></asp:TextBox>
     </td>
 </tr>
            <tr>
                <td style="width: 138px; text-align: right;">Mesaj Konu:</td>
                <td>
                    <asp:TextBox ID="txtMesajKonu" runat="server" Width="219px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 138px; text-align: right;">Mesaj Adres:</td>
                <td>
                    <asp:TextBox ID="txtMesajAdres" runat="server" Width="237px" Height="33px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 138px; text-align: right; height: 205px;">Mesaj İçerik</td>
                <td style="height: 205px">
                    <asp:TextBox   ID="txtMesajIcerik" runat="server" Height="195px" TextMode="MultiLine" Width="224px"></asp:TextBox>
                </td>
            </tr>
             <tr>
       <td style="width: 138px">&nbsp;</td>
     <td>
         <asp:Button ID="Button1" runat="server" Height="54px" Text="Mesaj Gönder" Width="171px" OnClick="Button1_Click" />
                 </td>
 </tr>
             <tr>
     <td style="width: 138px"  ></td>
     <td>&nbsp;</td>
 </tr>
        </table>
    </asp:Panel>
</asp:Content>
