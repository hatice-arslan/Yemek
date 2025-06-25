<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="WebApplication1.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h2><strong>
        <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="HAKKIMIZDA"></asp:Label>
        </strong></h2>
    <p>
        &nbsp;</p>
    <asp:DataList ID="DataList2" runat="server" Width="390px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    
<asp:Image ID="Image1" runat="server" Height="286px" ImageAlign="Bottom" ImageUrl="~/Resimler/Screenshot 2024-11-22 154829.png" Width="395px" />

</asp:Content>
