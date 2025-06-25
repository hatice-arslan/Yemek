<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="WebApplication1.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 3px">
        <ItemTemplate>
            <table style="width: 95%; height: 361px;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 39px"><strong>
                         <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("GününYemegiAd") %>' style="font-size: x-large"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>  <strong>Yemek Malzeme:</strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("GününYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 27px"> <strong>
                        Yemek Tarif:
                        </strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("GününYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="182px" Width="391px" ImageUrl="~/Resimler/Screenshot 2024-11-22 154829.png" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 26px">
                        <table style="width: 100%">
                            <tr>
                                <td style="text-align: left; height: 27px"><strong>Puan :</strong>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("GününYemegiPuan") %>'></asp:Label>
                                    &nbsp; </td>
                                <td style="text-align: right; height: 27px"><strong>Tarih :</strong>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("GününYemegiTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
