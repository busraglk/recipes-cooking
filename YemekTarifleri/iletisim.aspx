<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifleri.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
    .auto-style10 {
        margin-left: 40px;
    }
    .auto-style11 {
        height: 26px;
        width: 234px;
    }
    .auto-style12 {
        height: 26px;
        margin-left: 40px;
    }
    .auto-style15 {
        width: 234px;
        text-align: right;
    }
    .auto-style16 {
        font-size: medium;
        height: 27px;
        text-align: center;
            color: #FFFFFF;
            background-color: #FFFFFF;
        }
    .auto-style18 {
        color: #6699FF;
        font-size: large;
        background-color: #FFFFFF;
    }
    .auto-style19 {
        height: 26px;
    }
    .auto-style20 {
        height: 26px;
        width: 234px;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style9">
    <tr>
        <td class="auto-style16" colspan="2"><strong><span class="auto-style18">MESAJ PANELİ</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style11"></td>
        <td class="auto-style19"></td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Ad Soyad:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TxtGonderen" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtMail" runat="server" Height="20px" TextMode="Email" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>Mesaj Başlık:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtBaslik" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>Mesaj:</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="TxtMesaj" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="Button" runat="server" OnClick="Gönder_Click" Text="Gönder" Width="129px" CssClass="testbutton" />
        </td>
    </tr>
    <tr>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style12">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
