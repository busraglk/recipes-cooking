<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifleri.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17 {
            text-align: right;
            width: 168px;
        }
        .auto-style19 {
            height: 29px;
            width: 168px;
        }
        .auto-style20 {
            width: 470px;
        }
        .auto-style22 {
            height: 26px;
            text-align: left;
            color: #FFFFFF;
            font-size: medium;
            background-color: #99CCFF;
            width: 470px;
        }
        .auto-style23 {
            height: 29px;
            width: 168px;
            text-align: right;
        }
        .auto-style24 {
            height: 29px;
            text-align: left;
            color: #FFFFFF;
            font-size: medium;
            background-color: #99CCFF;
            width: 470px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17"><strong>Tarif Ad:</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Yapılış:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Resim:</strong></td>
                <td class="auto-style24">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Öneren Mail:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox5" runat="server" Width="250px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tairif Öneren:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Kategori:</strong></td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" CssClass="testbutton" OnClick="Button1_Click" Text="Onayla" Width="110px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
