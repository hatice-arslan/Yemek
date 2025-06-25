<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="WebApplication1.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <table class="auto-style5">
        <tr>
            <td style="height: 26px; width: 103px"></td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 103px">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="5px" style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 103px">Mail:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="5px" style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 103px">İçerik:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="127px" style="margin-left: 0" TextMode="MultiLine" Width="285px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 103px">Yemek:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="5px" style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 103px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="ONAYLA" Width="122px" />
            </td>
        </tr>
    </table>
</asp:Content>
