<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleri.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
            text-align: right;
            width: 175px;
        }
        .auto-style10 {
            text-align: right;
            width: 175px;
        }
        .auto-style14 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 230px;
        margin-left: 10px;
    }
        .auto-style16 {
            height: 29px;
            width: 175px;
        }
        .auto-style17 {
            margin-left: 10px;
        }
        .auto-style19 {
            font-family: verdana;
            color: #14396A;
            font-size: 14px;
            text-shadow: 1px 1px 0px #7CACDE;
            box-shadow: 1px 1px 1px #BEE2F9;
            padding: 10px 10px;
            border-radius: 10px;
            border: 2px solid #3866A3;
            background: #63B8EE;
            background: #63B8EE;
            margin-left: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style9"><strong>Tarif Ad: </strong> </td>
            <td class="auto-style8">
                <strong>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="300px" CssClass="auto-style14"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Malzemeler:&nbsp; </strong> </td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="300px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Hazırlanışı:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtHazirlanis" runat="server" Height="150px" TextMode="MultiLine" Width="300px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Resim:</strong> </td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" CssClass="auto-style17" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Öneren: </strong> </td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="300px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Mail Adresi: </td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="300px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style8"><strong><em>
                <asp:Button ID="BtnTarifOner" runat="server" CssClass="testbutton" ForeColor="White" Text="Tarif Öner" OnClick="BtnTarifOner_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
