<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="WebApplication1.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 

<div> 
    <asp:Panel ID="Panel1" runat="server" style="background-color: #669999">
        <table class="auto-style5">
            <tr>
                <td style="width: 88px">
                    <asp:Button ID="Button1" runat="server" Height="41px" Text="+" Width="58px" OnClick="Button1_Click" />
                </td>
                <td style="width: 76px">
                    <asp:Button ID="Button2" runat="server" Height="46px" Text="-" Width="51px" OnClick="Button2_Click" />
                </td>
                <td style="text-align: right">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:DataList ID="DataList1" runat="server">

            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td style="text-align: left; width: 262px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                           
                         <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil"> <%-- Kategoriler sayfasında islem adlı değişken sil ise silme işlemi gerçeleşecek  --%>
                             <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Resimler/png-transparent-delete-logo-button-icon-delete-button-love-image-file-formats-text-thumbnail.png" Width="40px" /></a>
                        </td>
                        <td style="text-align: right">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>">        <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Resimler/png-transparent-green-check-illustration-check-mark-checkbox-yes-miscellaneous-angle-hand-thumbnail.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:DataList>
   
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #669999; margin-top:20px;">

        <table class="auto-style5">
    <tr>
        <td style="width: 88px">
            <asp:Button ID="Button3" runat="server" Height="41px" Text="+" Width="58px" OnClick="Button3_Click"   />
        </td>
        <td style="width: 76px">
            <asp:Button ID="Button4" runat="server" Height="46px" Text="-" Width="51px" OnClick="Button4_Click"  />
        </td>
        <td style="text-align: right">KATEGORİ EKLEME</td>
    </tr>
</table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Visible="False"   >
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 54px">Kategorid Adı:</td>
                <td style="text-align: left; height: 54px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="5px" Width="136px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 54px">Katgori İcon:</td>
                <td style="text-align: left; height: 54px">
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="244px" />
                </td>
            </tr>
            <tr>
                <td style="height: 54px">&nbsp;</td>
                <td style="text-align: left; height: 54px"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style6" Height="33px" OnClick="btnEkle_Click" style="font-weight: bold" Text="Ekle" Width="63px" />
                    &nbsp;</strong></td>
            </tr>
        </table>

    </asp:Panel>
    </div>
</asp:Content>
 
