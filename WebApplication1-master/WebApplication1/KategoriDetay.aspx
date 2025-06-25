<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="WebApplication1.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <p>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td><strong>


                        <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                        <asp:Label ID="Label3" runat="server" style="font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                     </a>
                        
                    </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
 
                <tr>
                    <td><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Ekleme Tarihi:</strong>&nbsp;
                        <asp:Label ID="Label6" runat="server" style="color: #FFFFFF" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        &nbsp; - <strong><em>Puan :<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</p>
<p>
</p>
</asp:Content>
