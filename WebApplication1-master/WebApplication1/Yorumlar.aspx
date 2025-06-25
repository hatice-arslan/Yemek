<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="WebApplication1.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   <div> 
    <asp:Panel ID="Panel1" runat="server" style="background-color: #669999">
        <table class="auto-style5">
            <tr>
                <td style="width: 88px">
                    <asp:Button ID="Button1" runat="server" Height="41px" Text="+" Width="58px" OnClick="Button1_Click"  />
                </td>
                <td style="width: 76px">
                    <asp:Button ID="Button2" runat="server" Height="46px" Text="-" Width="51px" OnClick="Button2_Click" />
                </td>
                <td style="text-align: right">ONAYLI YORUM&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:DataList ID="DataList1" runat="server">

            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td style="text-align: left; width: 262px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                           
                 
                             <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Resimler/png-transparent-delete-logo-button-icon-delete-button-love-image-file-formats-text-thumbnail.png" Width="40px" /></a>
                        </td>
                        <td style="text-align: right">
                        
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Resimler/png-transparent-green-check-illustration-check-mark-checkbox-yes-miscellaneous-angle-hand-thumbnail.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:DataList>
   
    </asp:Panel>
           <asp:Panel ID="Panel4" runat="server" style="background-color: #669999">
        <table class="auto-style5">
            <tr>
                <td style="width: 88px">
                    <asp:Button ID="Button3" runat="server" Height="41px" Text="+" Width="58px" OnClick="Button3_Click"    />
                </td>
                <td style="width: 76px">
                    <asp:Button ID="Button4" runat="server" Height="46px" Text="-" Width="51px" OnClick="Button4_Click"  />
                </td>
                <td style="text-align: right">ONAYSIZ YORUM &nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
     <asp:DataList ID="DataList2" runat="server">

         <ItemTemplate>
             <table class="auto-style5">
                 <tr>
                     <td style="text-align: left; width: 262px">
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                     </td>
                     <td style="text-align: right">
                        
              
                          <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Resimler/png-transparent-delete-logo-button-icon-delete-button-love-image-file-formats-text-thumbnail.png" Width="40px" /></a>
                     </td>
                     <td style="text-align: right">
                     
                         <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">   <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Resimler/png-transparent-green-check-illustration-check-mark-checkbox-yes-miscellaneous-angle-hand-thumbnail.png" Width="40px" /></a>
                     </td>
                 </tr>
             </table>
         </ItemTemplate>

     </asp:DataList>

 </asp:Panel>
    </div>


</asp:Content>
