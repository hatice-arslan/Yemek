<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="WebApplication1.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2>
    <asp:Label ID="Label3" runat="server" Text="Label" style="color: #FFFFFF; font-size: xx-large;"></asp:Label> </h2>
    
    <asp:DataList ID="DataList2" runat="server" Width="365px">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                  <tr>
      <td style="border-bottom-style: inset; border-bottom-width: thin">
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Yorum") %>' CssClass="auto-style3"></asp:Label>
          &nbsp;--
          <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
      </td>
  </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color: #FFFFFF">Yorum Yapma Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%">
               <tr>
       <td ></td>
       <td  >
         
       </td>
   </tr>
            <tr>
                <td style="height: 26px; text-align: right; font-size: medium;" class="auto-style3"><strong>Ad Soyad:</strong></td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtAdSoyad" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
                <tr>
        <td style="height: 26px; text-align: right; font-size: medium;" class="auto-style3"><strong>Mail:</strong></td>
        <td style="height: 26px">
            <asp:TextBox ID="txtMail" runat="server" Width="200px"></asp:TextBox>
                    </td>
    </tr>
                        <tr>
    <td class="auto-style3" style="text-align: right; font-size: medium"><strong>Yorumunuz:</strong></td>
    <td>
        <asp:TextBox ID="txtYorum" runat="server" Height="69px" TextMode="MultiLine" Width="201px"></asp:TextBox>
                            </td>
</tr>
                                    <tr>
    <td> </td>
    <td>
        
                            <strong>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: bold; font-size: medium" Text="Yorum Yap" Width="165px" />
                            </strong>
        
                            </td>
</tr>

        </table>
    </asp:Panel>
</asp:Content>
